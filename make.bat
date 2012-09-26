setlocal
set dmc=D:\tools\dmars\bin\dmc.exe
set compile_flags=-0 -mld -o -c -d
set link_flags=-0 -mld -o -olua.exe

%dmc% lapi.c %compile_flags%
%dmc% lauxlib.c %compile_flags%
%dmc% lbaselib.c %compile_flags%
%dmc% lbitlib.c %compile_flags%
%dmc% lcode.c %compile_flags%
%dmc% lcorolib.c %compile_flags%
%dmc% lctype.c %compile_flags%
%dmc% ldblib.c %compile_flags%
%dmc% ldebug.c %compile_flags%
%dmc% ldo.c %compile_flags%
%dmc% ldump.c %compile_flags%
%dmc% lfunc.c %compile_flags%
%dmc% lgc.c %compile_flags%
%dmc% linit.c %compile_flags%
%dmc% liolib.c %compile_flags%
%dmc% llex.c %compile_flags%
%dmc% lmathlib.c %compile_flags%
%dmc% lmem.c %compile_flags%
%dmc% loadlib.c %compile_flags%
%dmc% lobject.c %compile_flags%
%dmc% lopcodes.c %compile_flags%
%dmc% loslib.c %compile_flags%
%dmc% lparser.c %compile_flags%
%dmc% lstate.c %compile_flags%
%dmc% lstring.c %compile_flags%
%dmc% lstrlib.c %compile_flags%
%dmc% ltable.c %compile_flags%
%dmc% ltablib.c %compile_flags%
%dmc% ltm.c %compile_flags%
%dmc% lua.c %compile_flags%
%dmc% lundump.c %compile_flags%
%dmc% lvm.c %compile_flags%
%dmc% lzio.c %compile_flags%

%dmc% timer.c %compile_flags%
%dmc% c188com.c %compile_flags%
%dmc% mkio.c %compile_flags%

%dmc% *.obj %link_flags%
pause