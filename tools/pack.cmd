cd /d %~dp0
echo off && cls
md temp
for %%h in (Debug Release) do (
for %%i in (ARM ARM64 x64 Win32) do (
copy /y ..\src\%%i\%%h\WinFile.exe temp\Winfile-%%i-%%h.exe
copy /y ..\src\%%i\%%h\WinFile.pdb temp\Winfile-%%i-%%h.pdb
for %%j in (ExeView FileSignatureInfo VerifyResources) do (
copy /y .\%%j\%%i\%%h\%%j.exe temp\%%j-%%i-%%h.exe
copy /y .\%%j\%%i\%%h\%%j.pdb temp\%%j-%%i-%%h.pdb
)
)
)