@echo off
REM
REM $Workfile: apdutool.bat $	$Revision: 9 $, $Date: 9/22/99 5:18p $
REM
REM Copyright (c) 1999 Sun Microsystems, Inc. All rights reserved.
REM
REM This software is the confidential and proprietary information of Sun
REM Microsystems, Inc. ("Confidential Information").  You shall not
REM disclose such Confidential Information and shall use it only in
REM accordance with the terms of the license agreement you entered into
REM with Sun.
REM 
REM SUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
REM SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
REM IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
REM PURPOSE, OR NON-INFRINGEMENT. SUN SHALL NOT BE LIABLE FOR ANY DAMAGES
REM SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
REM THIS SOFTWARE OR ITS DERIVATIVES.
REM

REM $Workfile: apdutool.bat $
REM $Revision: 9 $
REM $Date: 9/22/99 5:18p $
REM $Author: Vadim $
REM $Archive: /Releases/990929_CJDKFCS/Input/bin/apdutool.bat $
REM $Modtime: 9/21/99 4:49p $
REM Original author:  William King (wrking@eng.sun.com)

IF "%JC21BIN%" == "" SET JC21BIN=L:\JC21TOOLS\bin

java -noverify -classpath %JC21BIN%\apdutool.jar;%JC21BIN%\apduio.jar;%CLASSPATH% com.sun.javacard.apdutool.Main %1 %2 %3 %4 %5 %6 %7 %8 %9
