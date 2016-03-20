@echo off

:main
  setlocal
  set name=Roman
  echo My name is %name%
  call:greet %name% result
  echo %result%
  echo My name is still %name%
  endlocal
  goto:eof

:greet :: (name, *return)
  setlocal
  set name=Mr. %1
  set result=Hello, %name%
  endlocal & set %2=%result%
  goto:eof
