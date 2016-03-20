@echo off

:main
  set name=Roman
  call:greet %name%
  goto:eof

:greet :: (name)
  echo Hello, %1
  goto:eof
