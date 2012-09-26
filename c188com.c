////////////////////////////////////////////////////////////////////////////////
#include "c188com.h"
////////////////////////////////////////////////////////////////////////////////
volatile struct com com_data = {0xFF14, 0xFF16, 0xFF10, 0xFF12, 0xFF18, 17, 0, 0};
interrupt_vector *old_vector;
unsigned int old_interrupt_mask;
////////////////////////////////////////////////////////////////////////////////
static const luaL_Reg com_lib[] = {
 {"init", lua_com_init},
 {"release", lua_com_release},
 {"send", lua_com_send},
 {"receive", lua_com_recv},
 {"check", lua_com_check},
 {"set_baudrate", lua_com_set_baudrate},
 {NULL, NULL}};
////////////////////////////////////////////////////////////////////////////////
void interrupt com1interrupt(void)
 {
  com_data.got_data = 1;
  com_data.data = inportb(com_data.recv);
  outport(EOIRg, com_data.vector);
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_com_init(lua_State *L)
 {
  old_interrupt_mask = inport(IntMsk);
  outport(0xFF44,0x16);
  outport(com_data.mode, 0xe1);
  old_vector = getvect(com_data.vector);
  setvect(com_data.vector, &com1interrupt);    
  outport(IntMsk, (old_interrupt_mask & 0xfbff));
  outport(com_data.divisor, CBR_19200);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_com_release(lua_State *L)
 {
  setvect(com_data.vector, old_vector);
  outport(EOIRg, com_data.vector);
  outportb(IntMsk, old_interrupt_mask);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_com_send(lua_State *L)
 {
  int data = luaL_checknumber(L, 1);
  outportb(com_data.send, data);
  while(!(inportb(com_data.status) & 4));
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_com_recv(lua_State *L)
 {
  while(!com_data.got_data);
  com_data.got_data = 0;
  lua_pushnumber(L, com_data.data);  
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_com_check(lua_State *L)
 {
  lua_pushnumber(L, com_data.got_data);
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_com_set_baudrate(lua_State *L)
 {
  unsigned int divisor = luaL_checknumber(L, 1);
  outport(com_data.divisor, divisor);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
LUAMOD_API int luaopen_com(lua_State *L)
 {
  luaL_newlib(L, com_lib);
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////