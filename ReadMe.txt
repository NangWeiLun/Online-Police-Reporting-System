My system is included 3 main program, download and install it:

MySql
	https://www.mysql.com/downloads/
	or
	installer in my 'Program' folder

QtCreator
	version 5.9.3 is recommended
	install builds kit Qt 5.9.3 MSVC2017 (strongly recommended because other version may not working)

		https://www.qt.io/download-qt-for-application-development
		or
		http://download.qt.io/official_releases/qt-installer-framework/3.0.2/
		or
		http://download.qt.io/official_releases/online_installers/
	or
	QtCreator is in my 'Qt->Tools->QtCreator' folder but build kit is abscent, please download Qt 5.9.3 MSVC2017


MySql
	1	Run MySQL Workbench 6.3 CE (or other version but 6.3 is recommended)
	2	On home page, Left side of 'MySQL Connections' got 2 icon, click (+), to add new connection
	3	Type connection name -> (other setting is default, dont touch other setting is recommended) -> click OK
	4	Click the instance you create under 'MySQL Connections'
	5	Under 'Navigator'-> Under 'MANAGEMENT' -> Click 'Data Import/Restore'
	6	Under 'Import Option' -> Select 'Import from Self-Contained File' -> click Browse File and Open my file 'Dump20171221.sql' -> click 'Start Import'
	7	(Optional)You can select 'Default Target Schema' as 'crimerecord'
	8	Under 'Navigator' -> Under 'INSTANCE' -> click 'Startup/Shutdown' -> check if server no start click 'Start Server',click 'Bring Online' if server is offline
	9	the Database is ready now.

QtProject
	1	Run QtCreator
	2	Welcome Screen -> Open Project
	3	Search FileDirection (location of my 'CrimeRecording' file) -> Open (CrimeRecording.pro)
	4	Project -> Select Qt 5.9.3 MSVC2017 as build kit (64bit or 32 bit depends on your pc) -> Click Configure Project
	5	Now from menu bar, click Build -> click Run
	6	Now build project is taking time, after build it will run program automatic (a window will popup)
	7	'Online Police Report System' is running now, take a look into it.