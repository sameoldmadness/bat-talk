@echo off

:main
  setlocal
  call:reduce "1,2,3" sum result
  echo %result%
  endlocal
  goto:eof

:reduce :: (xs, cb, *result)
  setlocal EnableDelayedExpansion
  set result=0
  for %%x in (%~1) do (
    call:%2 %%x result
  )
  endlocal & set %3=%result%
  goto:eof

:sum :: (x, *result)
  setlocal EnableDelayedExpansion
  set name=%2
  set /a result=%1+!%name%!
  endlocal & set %2=%result%
  goto:eof
