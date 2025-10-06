:: ====================================================================
:: user_copy.bat
:: Copia il file user.dat dalla cartella progetto PcVue TEST_17 
:: alla Central Folder dove è stata creata la cartella User. Correggere il Percorso
:: ====================================================================

::AS

robocopy "C:\ARC Informatique\PcVue 16\data\usr\TEST_17\C" "\\srv-pcvue.pcvue.cloud\Central\User" user.dat /copy:DATS /R:3 /W:5 /LOG+:"C:\ARC Informatique\PcVue 16\data\usr\TEST_17\TP\user_reload.log" /TEE