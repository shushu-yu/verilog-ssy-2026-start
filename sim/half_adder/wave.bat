@echo off
REM ============================================================
REM  wave.bat  --  Open the waveform viewer (xsim GUI)
REM  Run this AFTER run.bat has produced tb_sim.wdb
REM ============================================================

setlocal
set "VIVADO_BIN=D:\Vivado\2022.2\bin"
cd /d "%~dp0"

if not exist tb_sim.wdb (
    echo.
    echo [!] tb_sim.wdb not found. Please run run.bat first.
    echo.
    pause
    exit /b 1
)

echo Opening waveform viewer, please wait...
call "%VIVADO_BIN%\xsim.bat" tb_sim -gui -tclbatch wave.tcl
