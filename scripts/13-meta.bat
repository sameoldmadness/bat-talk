@echo off
:main
  setlocal
    set counter=0
    set /a nextCounter=%counter%+1
    call:loop %0
  endlocal
  goto:main
:loop (filename)
  for /f "delims=" %%x in (%1) do (
    if "    set counter=%counter%"=="%%x" (
      (echo %BS%    set counter=%nextCounter%)>>%1.bp
    ) else (
      echo %%x>>%1.bp
    )
  )
  echo %counter%
  (move %1.bp %1) > nul
  (timeout /t 1) > nul
  goto:eof
