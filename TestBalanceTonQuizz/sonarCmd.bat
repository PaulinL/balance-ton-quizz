set token="572c17e4397a73789e8e8389715a8140571c62fc"
set pathSonarScanner="C:\sonar-scanner-msbuild-4.7.1.2311-net46\SonarScanner.MSBuild.exe"
set pathMsBuild="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe"
set nameProject="BTQ_TestsAuto"
set urlSonarServer="http://localhost:9005"

echo "Start Sonar analyse ..."
:: start
%pathSonarScanner% begin /k:%nameProject% /d:sonar.host.url=%urlSonarServer% /d:sonar.login="%token%"

:: build
%pathMsBuild% /t:Rebuild

:: end
%pathSonarScanner% end /d:sonar.login=%token%

echo "Analyse done, open SonarQube to see results."
pause