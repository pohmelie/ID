////////////////////////////////////////////////////////////////////////////////
#ifndef C188COMH
#define C188COMH
////////////////////////////////////////////////////////////////////////////////
/*#include <stdarg.h>
#include <dos.h>
#include <stdio.h>*/
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
#include "ports.h"
////////////////////////////////////////////////////////////////////////////////
typedef void interrupt(interrupt_vector)();
////////////////////////////////////////////////////////////////////////////////
enum{
CBR_300 =	8333,
CBR_600 =	4166,
CBR_1050 =	2380,
CBR_1200 =	2083,
CBR_1800 =	1388,
CBR_2400 =	1041,
CBR_4800 =	520,
CBR_7200 =	347,
CBR_9600 =	260,
CBR_19200 =	130,
CBR_28800 =	86,
CBR_38400 =	65,
CBR_56000 =	45,
CBR_57600 =	43,
CBR_76800 =	32,
CBR_115200 = 22,
CBR_128000 = 19,
CBR_153600 = 16};

enum {
EOIRg = 0xFF22,
IntMsk = 0xFF28,
RdyIn = 0x0100,
RdyOut = 0x6000,
Err	= 0x0E00};
////////////////////////////////////////////////////////////////////////////////
struct com
 {
  unsigned int send, recv, mode, status, divisor, vector, got_data, data;  
 };
////////////////////////////////////////////////////////////////////////////////
static int lua_com_init(lua_State *L);
static int lua_com_release(lua_State *L);
static int lua_com_send(lua_State *L);
static int lua_com_recv(lua_State *L);
static int lua_com_check(lua_State *L);
static int lua_com_set_baudrate(lua_State *L);
LUAMOD_API int luaopen_com(lua_State *L);
////////////////////////////////////////////////////////////////////////////////
#endif
////////////////////////////////////////////////////////////////////////////////