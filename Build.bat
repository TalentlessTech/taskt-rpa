@echo off
cls
SETLOCAL

set NUGET_PATH=C:\Nuget\5.10.0
set MSBUILD_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin


%NUGET_PATH%\Nuget.exe restore "taskt.sln"

"%MSBUILD_PATH%\MSBuild.exe" "taskt.sln" /p:Configuration=Release

