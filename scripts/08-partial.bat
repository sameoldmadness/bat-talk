@echo off

:main
  setlocal
  set add2=add 2
  call:%add2% 3 res
  echo %res%
  endlocal
  goto:eof

:add :: (a, b, *return)
  set /a %3=%1+%2
  goto:eof
