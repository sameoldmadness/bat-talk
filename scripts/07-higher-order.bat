@echo off

:main
  setlocal
  call:greet Roman addPrefix result
  echo %result%
  endlocal
  goto:eof

:greet :: (name, *decorator, *return)
  call:%2 %1 name
  set %3=Hello, %name%
  goto:eof

:addPrefix :: (name, *return)
  set %2=Mr. %1
  goto:eof
