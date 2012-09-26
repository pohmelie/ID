////////////////////////////////////////////////////////////////////////////////
#include "timer.h"
////////////////////////////////////////////////////////////////////////////////
interrupt_vector* old_vector;
volatile unsigned long time;
unsigned char ports[6] = {0xA1, 0xA2, 0xA3, 0xC1, 0xC2, 0xC3};
////////////////////////////////////////////////////////////////////////////////
static const luaL_Reg timer_lib[] = {
 {"init", lua_timer_init},
 {"release", lua_timer_release},
 {"start", lua_timer_start},
 {"stop", lua_timer_stop},
 {"sleep", lua_timer_sleep},
 {"uni_cfg", lua_timer_uni_cfg},
 {NULL, NULL}};
////////////////////////////////////////////////////////////////////////////////
void interrupt interrupt_holder(void)
 {
  time++;
  outport(PrerDone, 8);
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_init(lua_State *L)
 {
  time += 1;
  old_vector = getvect(T1_Vector);
  setvect(T1_Vector, &interrupt_holder);
  outport(TmrCSR, 0);
  outport(TmrA, 10000);  
  return 0;
 };
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_start(lua_State *L)
 {
  outport(MikroTime, 0);
  outport(TmrCSR, PuskCod);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_stop(lua_State *L)
 {
  outport(TmrCSR, stopTmr);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_release(lua_State *L)
 {
  outport(TmrCSR, stopTmr);
  setvect(T1_Vector, old_vector);// установил старый вектор
  outport(PrerDone, 8);// сбросил общее прерывание для таймеров
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_sleep(lua_State *L)
 {
  unsigned long end, ms;
  ms = (unsigned long)luaL_checknumber(L, 1);  
  end = time + ms;
  while(time < end);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_uni_cfg(lua_State *L)
 {
  unsigned char p[6];
  int i;
  outportb(Port_prg0, Port_prg);  
  for(i = 0; i != 6; i += 1)   
   outportb(ports[i], (unsigned char)luaL_checknumber(L, i + 1));
  outportb(Port_prg0, Port_wrk);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
LUAMOD_API int luaopen_timer(lua_State *L)
 {
  luaL_newlib(L, timer_lib);
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////