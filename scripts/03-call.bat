@echo off

:main
  echo calling a function
  call:greet
  echo returned from it!
  goto:eof

:greet
  echo Hello, Roman
  goto:eof
