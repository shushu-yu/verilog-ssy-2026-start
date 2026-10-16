@echo off
REM ============================================================
REM  run.bat  --  One-click simulation for half_adder
REM
REM  Tool : Vivado Simulator 2022.2 (xsim)
REM  Flow : xvlog (compile) -> xelab (elaborate) -> xsim (run)
REM
REM  Usage: double-click this file, or run it from the terminal.
REM ============================================================

setlocal
set "VIVADO_BIN=D:\Vivado\2022.2\bin"
REM disable Vivado webtalk (usage statistics upload) for cleaner output
set "XILINX_WEBTALK_OPT_OUT=1"
cd /d "%~dp0"

echo.
echo [1/4] cleaning previous run...
if exist xsim.dir rmdir /s /q xsim.dir 2>nul
del /q *.log *.jou *.pbw *.wdb 2>nul

echo.
echo [2/4] compile   (xvlog)...
call "%VIVADO_BIN%\xvlog.bat" half_adder.v tb_half_adder.v
if errorlevel 1 goto :fail

echo.
echo [3/4] elaborate (xelab)...
call "%VIVADO_BIN%\xelab.bat" -debug typical tb_half_adder -s tb_sim
if errorlevel 1 goto :fail

echo.
echo [4/4] run       (xsim)...
call "%VIVADO_BIN%\xsim.bat" tb_sim -runall
if errorlevel 1 goto :fail

echo.
echo ============== SIMULATION DONE ==============
echo  waveform : tb_sim.wdb   ( double-click wave.bat to view )
echo =============================================
goto :eof

:fail
echo.
echo !!!!!!!!!! ERROR - check the messages above !!!!!!!!!!
exit /b 1
