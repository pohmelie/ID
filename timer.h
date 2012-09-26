////////////////////////////////////////////////////////////////////////////////
#ifndef _TIME_H
#define _TIME_H
////////////////////////////////////////////////////////////////////////////////
#include <dos.h>
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
#include "ports.h"
////////////////////////////////////////////////////////////////////////////////
typedef void interrupt(interrupt_vector)();
////////////////////////////////////////////////////////////////////////////////
enum{Avrg0=0,Avrg4=1,Avrg8=2,Avrg16=3,
Rng5=0,Rng5bp=1,Rng10=2,Rng10bp=3,
ACP_cmd=136,ACP_dat=136,ACP_chk=138,acpYes=0x80};
////////////////////////////////////////////////////////////////////////////////
enum{T1_Vector=18,
     TmrCSR=0xFF5E,
     TmrA=0xFF5A,
     TmrB=0xFF5C,
     MikroTime=0xFF58,
     PrerDone=0xFF22,
     //Биты управления
     PuskCod=0xE001,
     stopTmr=0x4000,
     //Порты UNIO 0- выходы 1 входы
     Port_prg0=0xA0,Port1= 0xA1,Port2= 0xA2,Port3= 0xA3,
     Port_prg1=0xC0,Port4= 0xC1,Port5= 0xC2,Port6= 0xC3,
     Port_prg=1,Port_wrk=0};
////////////////////////////////////////////////////////////////////////////////
static int lua_timer_init(lua_State *L);
static int lua_timer_release(lua_State *L);
static int lua_timer_start(lua_State *L);
static int lua_timer_stop(lua_State *L);
static int lua_timer_sleep(lua_State *L);//unsigned int ms);
static int lua_timer_uni_cfg(lua_State *L);//unsigned char p1,unsigned char p2,unsigned char p3,unsigned char p4,unsigned char p5,unsigned char p6);
LUAMOD_API int luaopen_timer(lua_State *L);
////////////////////////////////////////////////////////////////////////////////
#endif
////////////////////////////////////////////////////////////////////////////////