@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Jan 01 23:41:18 +0000 2023
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3279568 on Wed Jul 28 16:48:48 MDT 2021
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim CPU_RAM_20332706_TB_behav -key {Behavioral:sim_1:Functional:CPU_RAM_20332706_TB} -tclbatch CPU_RAM_20332706_TB.tcl -log simulate.log"
call xsim  CPU_RAM_20332706_TB_behav -key {Behavioral:sim_1:Functional:CPU_RAM_20332706_TB} -tclbatch CPU_RAM_20332706_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0