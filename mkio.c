////////////////////////////////////////////////////////////////////////////////
#include "tmkll4.h"
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
#include <process.h>
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_tmkconfig(lua_State *L)
 {
  unsigned int tmkNumber, tmkType, tmkPorts1, tmkPorts2, tmkIrq1, tmkIrq2;
  tmkNumber = luaL_checknumber(L, 1);
  tmkType = luaL_checknumber(L, 2);
  tmkPorts1 = luaL_checknumber(L, 3);
  tmkPorts2 = luaL_checknumber(L, 4);
  tmkIrq1 = luaL_checknumber(L, 5);
  tmkIrq2 = luaL_checknumber(L, 6 );
  lua_pushnumber(L, tmkconfig(tmkNumber, tmkType, tmkPorts1, tmkPorts2, tmkIrq1, tmkIrq2));
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_tmkdone(lua_State *L)
 {
  unsigned int tmkNumber;
  tmkNumber = luaL_checknumber(L, 1);
  lua_pushnumber(L, tmkdone(tmkNumber));
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_bcreset(lua_State *L)
 {
  lua_pushnumber(L, bcreset());
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_bcdefbase(lua_State *L)
 {
  unsigned int bcBasePC;
  bcBasePC = luaL_checknumber(L, 1);
  lua_pushnumber(L, bcdefbase(bcBasePC));
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_bcdefbus(lua_State *L)
 {
  unsigned int bcBus;
  bcBus = luaL_checknumber(L, 1);
  lua_pushnumber(L, bcdefbus(bcBus));
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_bcputw(lua_State *L)
 {
  unsigned int bcAddr, bcData;
  bcAddr = luaL_checknumber(L, 1);
  bcData = luaL_checknumber(L, 2);
  bcputw(bcAddr, bcData);
  return 0;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_bcgetw(lua_State *L)
 {
  unsigned int bcAddr;
  bcAddr = luaL_checknumber(L, 1);
  lua_pushnumber(L, bcgetw(bcAddr));
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static int lua_mkio_bcstart(lua_State *L)
 {
  unsigned int bcBase, bcCtrlCode;
  bcBase = luaL_checknumber(L, 1);
  bcCtrlCode = luaL_checknumber(L, 2);
  lua_pushnumber(L, bcstart(bcBase, bcCtrlCode));
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////
static const luaL_Reg mkio_lib[] = {
 {"tmkconfig", lua_mkio_tmkconfig},
 {"tmkdone", lua_mkio_tmkdone},
 {"bcreset", lua_mkio_bcreset},
 {"bcdefbase", lua_mkio_bcdefbase},
 {"bcdefbus", lua_mkio_bcdefbus},
 {"bcputw", lua_mkio_bcputw},
 {"bcgetw", lua_mkio_bcgetw},
 {"bcstart", lua_mkio_bcstart},
 {NULL, NULL}};
////////////////////////////////////////////////////////////////////////////////
LUAMOD_API int luaopen_mkio(lua_State *L)
 {
  luaL_newlib(L, mkio_lib);
  return 1;
 }
////////////////////////////////////////////////////////////////////////////////