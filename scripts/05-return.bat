@echo off

:main
  set name=Roman
  call:greet %name% result
  echo %result%
  goto:eof

:greet :: (name. *return)
  set %2=Hello, %1
  goto:eof
