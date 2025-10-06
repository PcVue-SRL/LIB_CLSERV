:: ====================================================================
:: user_load.bat
:: Copia il file user.dat dalla cartella centralizzata (C:\Central\User)
:: nelle cartelle del progetto PcVue TEST_17 (C e CTEMP).
:: ====================================================================

::AS

robocopy "\\srv-pcvue.pcvue.cloud\Central\User" "C:\ARC Informatique\PcVue 16\data\usr\TEST_17\C" user.dat /copy:DATS /R:3 /W:5 /LOG+:"C:\ARC Informatique\PcVue 16\data\usr\TEST_17\TP\user_reload.log" /TEE

robocopy "\\srv-pcvue.pcvue.cloud\Central\User" "C:\ARC Informatique\PcVue 16\data\usr\TEST_17\CTEMP" user.dat /copy:DATS /R:3 /W:5 /LOG+:"C:\ARC Informatique\PcVue 16\data\usr\TEST_17\TP\user_reload.log" /TEE


:: robocopy \\NAS-A\CENTRAL\USER C:\SCH_SCADA\PcVue32\Usr\ZOHR\C user.dat /copy:DATS 
:: robocopy \\NAS-A\CENTRAL\USER C:\SCH_SCADA\PcVue32\Usr\ZOHR\CTEMP user.dat /copy:DATS