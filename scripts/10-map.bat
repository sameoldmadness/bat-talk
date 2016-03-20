@echo off

:main
  setlocal
  call:map "1,2,3" double result
  echo %result%
  endlocal
  goto:eof

:map :: (xs, cb, *result)
  setlocal EnableDelayedExpansion
    for %%x in (%~1) do (
      call:%2 %%x subresult
      set result=!result!,!subresult!
    )
  endlocal & set %3=%result:~1%
  goto:eof

:double :: (x, *result)
  set /a %2=%1*2
  goto:eof
