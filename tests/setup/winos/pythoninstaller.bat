@ECHO off

For /F "usebackq" %%v IN (`systeminfo ^| find "x86" /c`) DO set pc_bit_size=%%v

@ECHO off
IF %pc_bit_size% LSS 1 (
    @REM curl -o python.msi https://www.python.org/ftp/python/2.7.18/python-2.7.18.amd64.msi
    curl -o python.exe https://www.python.org/ftp/python/3.9.4/python-3.9.4-amd64.exe
) else (
    curl -o python.exe https://www.python.org/ftp/python/3.9.4/python-3.9.4.exe
)
start python.exe