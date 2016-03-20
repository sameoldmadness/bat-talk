@echo off

:main
  setlocal
  set numbers="1,2,3"
  call:forEach %numbers% double
  endlocal
  goto:eof

:forEach :: (xs, *cb)
  for %%i in (%~1) do call:%2 %%i
  goto:eof

:double :: (x)
  set /a result=%1*2
  echo %result%
  goto:eof
