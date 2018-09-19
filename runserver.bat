@echo OFF
RMDIR /s /q "D:\Git\GothamCityRP\cache\files"
echo Appuyez sur une TOUCHE pour lancer votre serveur
echo -
pause > nul
CLS
cd c:\FXserverDev
cmd /k D:\Git\GothamCityRP\server\run.cmd +exec server.cfg