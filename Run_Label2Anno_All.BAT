

SET FMEEXE="C:\Program Files\FME\fme.exe"
SET FMWPATH="E:\Temp\RY\Test_RY1\DNOO_Anno_Misc_FME"
SET OUTFGDB="E:\Temp\RY\Test_RY1\DNOO_Anno.gdb"
SET CSVNOTXT="E:\Temp\RY\Test_RY1\DNOO_Anno_Misc_FME\NoText"
SET ORACONN="dnoo"

SET LOGFILE=Run_Label2Anno_All.log

ECHO %DATE% %TIME% >> %LOGFILE%

rem %FMEEXE% %FMWPATH%\Label2Anno_ElectricLine.fmw --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
rem %FMEEXE% %FMWPATH%\Label2Anno_ElectricJunction.fmw      --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
rem %FMEEXE% %FMWPATH%\Label2Anno_ElectricDevice.fmw        --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
rem %FMEEXE% %FMWPATH%\Label2Anno_ElectricAssembly.fmw      --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%

%FMEEXE% %FMWPATH%\Label2Anno_StructureLine.fmw         --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
%FMEEXE% %FMWPATH%\Label2Anno_StrurctureBoundary.fmw    --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
%FMEEXE% %FMWPATH%\Label2Anno_StructureJunction.fmw     --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%

PAUSE
GOTO _done

%FMEEXE% %FMWPATH%\Label2Anno_CommunicationLine.fmw     --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
%FMEEXE% %FMWPATH%\Label2Anno_CommunicationJunction.fmw --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
%FMEEXE% %FMWPATH%\Label2Anno_Dimension.fmw             --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%
%FMEEXE% %FMWPATH%\Label2Anno_DepthInfoPoint.fmw        --DestDataset_GEODATABASE_FILE %OUTFGDB% --SourceDataset_ORACLE_SPATIAL %ORACONN% --DestDataset_CSV2 %CSVNOTXT% >> %LOGFILE%


:_done
ECHO %DATE% %TIME% >> %LOGFILE%

