set project_working_directory="%~dp0..\..\..\"
set test_folder="%project_working_directory:"=%\tests"

npm install --prefix %test_folder% phantomcss

exit /B