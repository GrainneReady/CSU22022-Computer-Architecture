@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Jan 05 02:39:15 +0000 2023
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3279568 on Wed Jul 28 16:48:48 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 1eab3af0ecb84f5786027fad56045ed5 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot CPU_CAR_20332706_TB_behav xil_defaultlib.CPU_CAR_20332706_TB -log elaborate.log"
call xelab  -wto 1eab3af0ecb84f5786027fad56045ed5 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot CPU_CAR_20332706_TB_behav xil_defaultlib.CPU_CAR_20332706_TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
