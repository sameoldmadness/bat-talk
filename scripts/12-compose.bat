@echo off

REM commen

:main
  setlocal
    set list="1,2,3"
    set operations="add 2,mul 3,add 7"
    call:compose %list% %operations% result
    echo %result%
  endlocal
  goto:eof

:compose :: (xs, fns, *result)
  setlocal EnableDelayedExpansion
    set fns=%~2
    for %%x in (%~1) do (
      set subresult=%%x
      for %%y in ("%fns:,=" "%") do (
        call:%%~y !subresult! subresult
      )
      set result=!result!,!subresult!
    )
  endlocal & set %3=%result:~1%
  goto:eof

:add :: (x, y, *result)
  set /a %3=%1+%2
  goto:eof

:mul :: (x, y, *result)
  set /a %3=%1*%2
  goto:eof
