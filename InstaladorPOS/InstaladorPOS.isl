<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?xml-stylesheet type="text/xsl" href="is.xsl" ?>
<!DOCTYPE msi [
   <!ELEMENT msi   (summary,table*)>
   <!ATTLIST msi version    CDATA #REQUIRED>
   <!ATTLIST msi xmlns:dt   CDATA #IMPLIED
                 codepage   CDATA #IMPLIED
                 compression (MSZIP|LZX|none) "LZX">
   
   <!ELEMENT summary       (codepage?,title?,subject?,author?,keywords?,comments?,
                            template,lastauthor?,revnumber,lastprinted?,
                            createdtm?,lastsavedtm?,pagecount,wordcount,
                            charcount?,appname?,security?)>
                            
   <!ELEMENT codepage      (#PCDATA)>
   <!ELEMENT title         (#PCDATA)>
   <!ELEMENT subject       (#PCDATA)>
   <!ELEMENT author        (#PCDATA)>
   <!ELEMENT keywords      (#PCDATA)>
   <!ELEMENT comments      (#PCDATA)>
   <!ELEMENT template      (#PCDATA)>
   <!ELEMENT lastauthor    (#PCDATA)>
   <!ELEMENT revnumber     (#PCDATA)>
   <!ELEMENT lastprinted   (#PCDATA)>
   <!ELEMENT createdtm     (#PCDATA)>
   <!ELEMENT lastsavedtm   (#PCDATA)>
   <!ELEMENT pagecount     (#PCDATA)>
   <!ELEMENT wordcount     (#PCDATA)>
   <!ELEMENT charcount     (#PCDATA)>
   <!ELEMENT appname       (#PCDATA)>
   <!ELEMENT security      (#PCDATA)>                            
                                
   <!ELEMENT table         (col+,row*)>
   <!ATTLIST table
                name        CDATA #REQUIRED>

   <!ELEMENT col           (#PCDATA)>
   <!ATTLIST col
                 key       (yes|no) #IMPLIED
                 def       CDATA #IMPLIED>
                 
   <!ELEMENT row            (td+)>
   
   <!ELEMENT td             (#PCDATA)>
   <!ATTLIST td
                 href       CDATA #IMPLIED
                 dt:dt     (string|bin.base64) #IMPLIED
                 md5        CDATA #IMPLIED>
]>
<msi version="2.0" xmlns:dt="urn:schemas-microsoft-com:datatypes" codepage="65001">
	
	<summary>
		<codepage>1252</codepage>
		<title>Installation Database</title>
		<subject>InstaladorPOS</subject>
		<author>##ID_STRING2##</author>
		<keywords>Installer,MSI,Database</keywords>
		<comments>Contact:  Your local administrator</comments>
		<template>Intel;1033</template>
		<lastauthor>Administrator</lastauthor>
		<revnumber>{D7A6CB5E-3D5D-491B-93C5-A1B3876A367B}</revnumber>
		<lastprinted/>
		<createdtm>06/21/1999 10:00</createdtm>
		<lastsavedtm>07/14/2000 13:50</lastsavedtm>
		<pagecount>200</pagecount>
		<wordcount>0</wordcount>
		<charcount/>
		<appname>InstallShield Express</appname>
		<security>1</security>
	</summary>
	
	<table name="ActionText">
		<col key="yes" def="s72">Action</col>
		<col def="L64">Description</col>
		<col def="L128">Template</col>
		<row><td>Advertise</td><td>##IDS_ACTIONTEXT_Advertising##</td><td/></row>
		<row><td>AllocateRegistrySpace</td><td>##IDS_ACTIONTEXT_AllocatingRegistry##</td><td>##IDS_ACTIONTEXT_FreeSpace##</td></row>
		<row><td>AppSearch</td><td>##IDS_ACTIONTEXT_SearchInstalled##</td><td>##IDS_ACTIONTEXT_PropertySignature##</td></row>
		<row><td>BindImage</td><td>##IDS_ACTIONTEXT_BindingExes##</td><td>##IDS_ACTIONTEXT_File##</td></row>
		<row><td>CCPSearch</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td/></row>
		<row><td>CostFinalize</td><td>##IDS_ACTIONTEXT_ComputingSpace3##</td><td/></row>
		<row><td>CostInitialize</td><td>##IDS_ACTIONTEXT_ComputingSpace##</td><td/></row>
		<row><td>CreateFolders</td><td>##IDS_ACTIONTEXT_CreatingFolders##</td><td>##IDS_ACTIONTEXT_Folder##</td></row>
		<row><td>CreateShortcuts</td><td>##IDS_ACTIONTEXT_CreatingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut##</td></row>
		<row><td>DeleteServices</td><td>##IDS_ACTIONTEXT_DeletingServices##</td><td>##IDS_ACTIONTEXT_Service##</td></row>
		<row><td>DuplicateFiles</td><td>##IDS_ACTIONTEXT_CreatingDuplicate##</td><td>##IDS_ACTIONTEXT_FileDirectorySize##</td></row>
		<row><td>FileCost</td><td>##IDS_ACTIONTEXT_ComputingSpace2##</td><td/></row>
		<row><td>FindRelatedProducts</td><td>##IDS_ACTIONTEXT_SearchForRelated##</td><td>##IDS_ACTIONTEXT_FoundApp##</td></row>
		<row><td>GenerateScript</td><td>##IDS_ACTIONTEXT_GeneratingScript##</td><td>##IDS_ACTIONTEXT_1##</td></row>
		<row><td>ISLockPermissionsCost</td><td>##IDS_ACTIONTEXT_ISLockPermissionsCost##</td><td/></row>
		<row><td>ISLockPermissionsInstall</td><td>##IDS_ACTIONTEXT_ISLockPermissionsInstall##</td><td/></row>
		<row><td>InstallAdminPackage</td><td>##IDS_ACTIONTEXT_CopyingNetworkFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize##</td></row>
		<row><td>InstallFiles</td><td>##IDS_ACTIONTEXT_CopyingNewFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize2##</td></row>
		<row><td>InstallODBC</td><td>##IDS_ACTIONTEXT_InstallODBC##</td><td/></row>
		<row><td>InstallSFPCatalogFile</td><td>##IDS_ACTIONTEXT_InstallingSystemCatalog##</td><td>##IDS_ACTIONTEXT_FileDependencies##</td></row>
		<row><td>InstallServices</td><td>##IDS_ACTIONTEXT_InstallServices##</td><td>##IDS_ACTIONTEXT_Service2##</td></row>
		<row><td>InstallValidate</td><td>##IDS_ACTIONTEXT_Validating##</td><td/></row>
		<row><td>LaunchConditions</td><td>##IDS_ACTIONTEXT_EvaluateLaunchConditions##</td><td/></row>
		<row><td>MigrateFeatureStates</td><td>##IDS_ACTIONTEXT_MigratingFeatureStates##</td><td>##IDS_ACTIONTEXT_Application##</td></row>
		<row><td>MoveFiles</td><td>##IDS_ACTIONTEXT_MovingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize3##</td></row>
		<row><td>PatchFiles</td><td>##IDS_ACTIONTEXT_PatchingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize4##</td></row>
		<row><td>ProcessComponents</td><td>##IDS_ACTIONTEXT_UpdateComponentRegistration##</td><td/></row>
		<row><td>PublishComponents</td><td>##IDS_ACTIONTEXT_PublishingQualifiedComponents##</td><td>##IDS_ACTIONTEXT_ComponentIDQualifier##</td></row>
		<row><td>PublishFeatures</td><td>##IDS_ACTIONTEXT_PublishProductFeatures##</td><td>##IDS_ACTIONTEXT_FeatureColon##</td></row>
		<row><td>PublishProduct</td><td>##IDS_ACTIONTEXT_PublishProductInfo##</td><td/></row>
		<row><td>RMCCPSearch</td><td>##IDS_ACTIONTEXT_SearchingQualifyingProducts##</td><td/></row>
		<row><td>RegisterClassInfo</td><td>##IDS_ACTIONTEXT_RegisterClassServer##</td><td>##IDS_ACTIONTEXT_ClassId##</td></row>
		<row><td>RegisterComPlus</td><td>##IDS_ACTIONTEXT_RegisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppIdAppTypeRSN##</td></row>
		<row><td>RegisterExtensionInfo</td><td>##IDS_ACTIONTEXT_RegisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension2##</td></row>
		<row><td>RegisterFonts</td><td>##IDS_ACTIONTEXT_RegisterFonts##</td><td>##IDS_ACTIONTEXT_Font##</td></row>
		<row><td>RegisterMIMEInfo</td><td>##IDS_ACTIONTEXT_RegisterMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension##</td></row>
		<row><td>RegisterProduct</td><td>##IDS_ACTIONTEXT_RegisteringProduct##</td><td>##IDS_ACTIONTEXT_1b##</td></row>
		<row><td>RegisterProgIdInfo</td><td>##IDS_ACTIONTEXT_RegisteringProgIdentifiers##</td><td>##IDS_ACTIONTEXT_ProgID2##</td></row>
		<row><td>RegisterTypeLibraries</td><td>##IDS_ACTIONTEXT_RegisterTypeLibs##</td><td>##IDS_ACTIONTEXT_LibId##</td></row>
		<row><td>RegisterUser</td><td>##IDS_ACTIONTEXT_RegUser##</td><td>##IDS_ACTIONTEXT_1c##</td></row>
		<row><td>RemoveDuplicateFiles</td><td>##IDS_ACTIONTEXT_RemovingDuplicates##</td><td>##IDS_ACTIONTEXT_FileDir##</td></row>
		<row><td>RemoveEnvironmentStrings</td><td>##IDS_ACTIONTEXT_UpdateEnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction2##</td></row>
		<row><td>RemoveExistingProducts</td><td>##IDS_ACTIONTEXT_RemoveApps##</td><td>##IDS_ACTIONTEXT_AppCommandLine##</td></row>
		<row><td>RemoveFiles</td><td>##IDS_ACTIONTEXT_RemovingFiles##</td><td>##IDS_ACTIONTEXT_FileDir2##</td></row>
		<row><td>RemoveFolders</td><td>##IDS_ACTIONTEXT_RemovingFolders##</td><td>##IDS_ACTIONTEXT_Folder1##</td></row>
		<row><td>RemoveIniValues</td><td>##IDS_ACTIONTEXT_RemovingIni##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue##</td></row>
		<row><td>RemoveODBC</td><td>##IDS_ACTIONTEXT_RemovingODBC##</td><td/></row>
		<row><td>RemoveRegistryValues</td><td>##IDS_ACTIONTEXT_RemovingRegistry##</td><td>##IDS_ACTIONTEXT_KeyName##</td></row>
		<row><td>RemoveShortcuts</td><td>##IDS_ACTIONTEXT_RemovingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut1##</td></row>
		<row><td>Rollback</td><td>##IDS_ACTIONTEXT_RollingBack##</td><td>##IDS_ACTIONTEXT_1d##</td></row>
		<row><td>RollbackCleanup</td><td>##IDS_ACTIONTEXT_RemovingBackup##</td><td>##IDS_ACTIONTEXT_File2##</td></row>
		<row><td>SelfRegModules</td><td>##IDS_ACTIONTEXT_RegisteringModules##</td><td>##IDS_ACTIONTEXT_FileFolder##</td></row>
		<row><td>SelfUnregModules</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td>##IDS_ACTIONTEXT_FileFolder2##</td></row>
		<row><td>SetODBCFolders</td><td>##IDS_ACTIONTEXT_InitializeODBCDirs##</td><td/></row>
		<row><td>StartServices</td><td>##IDS_ACTIONTEXT_StartingServices##</td><td>##IDS_ACTIONTEXT_Service3##</td></row>
		<row><td>StopServices</td><td>##IDS_ACTIONTEXT_StoppingServices##</td><td>##IDS_ACTIONTEXT_Service4##</td></row>
		<row><td>UnmoveFiles</td><td>##IDS_ACTIONTEXT_RemovingMoved##</td><td>##IDS_ACTIONTEXT_FileDir3##</td></row>
		<row><td>UnpublishComponents</td><td>##IDS_ACTIONTEXT_UnpublishQualified##</td><td>##IDS_ACTIONTEXT_ComponentIdQualifier2##</td></row>
		<row><td>UnpublishFeatures</td><td>##IDS_ACTIONTEXT_UnpublishProductFeatures##</td><td>##IDS_ACTIONTEXT_Feature##</td></row>
		<row><td>UnpublishProduct</td><td>##IDS_ACTIONTEXT_UnpublishingProductInfo##</td><td/></row>
		<row><td>UnregisterClassInfo</td><td>##IDS_ACTIONTEXT_UnregisterClassServers##</td><td>##IDS_ACTIONTEXT_ClsID##</td></row>
		<row><td>UnregisterComPlus</td><td>##IDS_ACTIONTEXT_UnregisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppId##</td></row>
		<row><td>UnregisterExtensionInfo</td><td>##IDS_ACTIONTEXT_UnregisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension##</td></row>
		<row><td>UnregisterFonts</td><td>##IDS_ACTIONTEXT_UnregisteringFonts##</td><td>##IDS_ACTIONTEXT_Font2##</td></row>
		<row><td>UnregisterMIMEInfo</td><td>##IDS_ACTIONTEXT_UnregisteringMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension2##</td></row>
		<row><td>UnregisterProgIdInfo</td><td>##IDS_ACTIONTEXT_UnregisteringProgramIds##</td><td>##IDS_ACTIONTEXT_ProgID##</td></row>
		<row><td>UnregisterTypeLibraries</td><td>##IDS_ACTIONTEXT_UnregTypeLibs##</td><td>##IDS_ACTIONTEXT_Libid2##</td></row>
		<row><td>WriteEnvironmentStrings</td><td>##IDS_ACTIONTEXT_EnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction##</td></row>
		<row><td>WriteIniValues</td><td>##IDS_ACTIONTEXT_WritingINI##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue2##</td></row>
		<row><td>WriteRegistryValues</td><td>##IDS_ACTIONTEXT_WritingRegistry##</td><td>##IDS_ACTIONTEXT_KeyNameValue##</td></row>
	</table>

	<table name="AdminExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>InstallAdminPackage</td><td/><td>3900</td><td>InstallAdminPackage</td><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>4010</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdminUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AdminWelcome</td><td/><td>1010</td><td>AdminWelcome</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>50</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1020</td><td>SetupProgress</td><td/></row>
	</table>

	<table name="AdvtExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>4910</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdvtUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="AppId">
		<col key="yes" def="s38">AppId</col>
		<col def="S255">RemoteServerName</col>
		<col def="S255">LocalService</col>
		<col def="S255">ServiceParameters</col>
		<col def="S255">DllSurrogate</col>
		<col def="I2">ActivateAtStorage</col>
		<col def="I2">RunAsInteractiveUser</col>
	</table>

	<table name="AppSearch">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="s72">Signature_</col>
		<row><td>DOTNETVERSION35</td><td>DotNet35</td></row>
	</table>

	<table name="BBControl">
		<col key="yes" def="s50">Billboard_</col>
		<col key="yes" def="s50">BBControl</col>
		<col def="s50">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L50">Text</col>
	</table>

	<table name="Billboard">
		<col key="yes" def="s50">Billboard</col>
		<col def="s38">Feature_</col>
		<col def="S50">Action</col>
		<col def="I2">Ordering</col>
	</table>

	<table name="Binary">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<row><td>ISExpHlp.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\ISExpHlp.dll</td></row>
		<row><td>ISSELFREG.DLL</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\isregsvr.dll</td></row>
		<row><td>NewBinary1</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\banner.jpg</td></row>
		<row><td>NewBinary10</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CompleteSetupIco.ibd</td></row>
		<row><td>NewBinary11</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary12</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DestIcon.ibd</td></row>
		<row><td>NewBinary13</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\NetworkInstall.ico</td></row>
		<row><td>NewBinary14</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DontInstall.ico</td></row>
		<row><td>NewBinary15</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Install.ico</td></row>
		<row><td>NewBinary16</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallFirstUse.ico</td></row>
		<row><td>NewBinary17</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallPartial.ico</td></row>
		<row><td>NewBinary18</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallStateMenu.ico</td></row>
		<row><td>NewBinary2</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\New.ibd</td></row>
		<row><td>NewBinary3</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Up.ibd</td></row>
		<row><td>NewBinary4</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\WarningIcon.ibd</td></row>
		<row><td>NewBinary5</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\welcome.jpg</td></row>
		<row><td>NewBinary6</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary7</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\ReinstIco.ibd</td></row>
		<row><td>NewBinary8</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\RemoveIco.ibd</td></row>
		<row><td>NewBinary9</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\SetupIcon.ibd</td></row>
		<row><td>SetAllUsers.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\SetAllUsers.dll</td></row>
	</table>

	<table name="BindImage">
		<col key="yes" def="s72">File_</col>
		<col def="S255">Path</col>
	</table>

	<table name="CCPSearch">
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="CheckBox">
		<col key="yes" def="s72">Property</col>
		<col def="S64">Value</col>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td></row>
		<row><td>LAUNCHREADME</td><td>1</td></row>
	</table>

	<table name="Class">
		<col key="yes" def="s38">CLSID</col>
		<col key="yes" def="s32">Context</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_Default</col>
		<col def="L255">Description</col>
		<col def="S38">AppId_</col>
		<col def="S255">FileTypeMask</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="S32">DefInprocHandler</col>
		<col def="S255">Argument</col>
		<col def="s38">Feature_</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="ComboBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="CompLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s38">ComponentId</col>
		<col def="I2">Type</col>
	</table>

	<table name="Complus">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="I2">ExpType</col>
	</table>

	<table name="Component">
		<col key="yes" def="s72">Component</col>
		<col def="S38">ComponentId</col>
		<col def="s72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">Condition</col>
		<col def="S72">KeyPath</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISScanAtBuildFile</col>
		<col def="S255">ISRegFileToMergeAtBuild</col>
		<col def="S0">ISDotNetInstallerArgsInstall</col>
		<col def="S0">ISDotNetInstallerArgsCommit</col>
		<col def="S0">ISDotNetInstallerArgsUninstall</col>
		<col def="S0">ISDotNetInstallerArgsRollback</col>
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{6D586A72-5A47-4226-A991-9ADFBC412AA2}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AnalysisServices.AdomdClient.dll</td><td>{3466368F-19A5-48B1-927E-362186DD787C}</td><td>INSTALLDIR</td><td>2</td><td/><td>microsoft.analysisservices.a</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Microsoft.AnalysisServices.SPClient.Interfaces.dll</td><td>{58E8378B-0012-46FA-B2E6-16CC4723EFC5}</td><td>INSTALLDIR</td><td>2</td><td/><td>microsoft.analysisservices.s</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>POSSTD.exe</td><td>{8256AF6B-B409-4F54-8146-1C465B92BD61}</td><td>INSTALLDIR</td><td>2</td><td/><td>posstd.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>POSSTD.vshost.exe</td><td>{62A2DD31-A52B-4137-9E41-C0D2280E4011}</td><td>INSTALLDIR</td><td>2</td><td/><td>posstd.vshost.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
	</table>

	<table name="Condition">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="i2">Level</col>
		<col def="S255">Condition</col>
	</table>

	<table name="Control">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control</col>
		<col def="s20">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="S72">Property</col>
		<col def="L0">Text</col>
		<col def="S50">Control_Next</col>
		<col def="L50">Help</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISControlId</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="S72">Binary_</col>
		<row><td>AdminChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>458755</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_BrowseDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_ChangeDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>7</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsAdminInstallBrowse_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>3</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsAdminInstallBrowse_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminNetworkLocation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>PushButton</td><td>286</td><td>124</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>SetupPathEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_SpecifyNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>40</td><td>131075</td><td/><td>##IDS__IsAdminInstallPoint_EnterNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocationFormatted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Install##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>LBBrowse</td><td>Text</td><td>21</td><td>90</td><td>100</td><td>10</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>SetupPathEdit</td><td>PathEdit</td><td>21</td><td>102</td><td>330</td><td>17</td><td>3</td><td>TARGETDIR</td><td/><td>Browse</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_Wizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_ServerImage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Icon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>CancelSetup</td><td>No</td><td>PushButton</td><td>135</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_No##</td><td>Yes</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Text</td><td>Text</td><td>48</td><td>15</td><td>194</td><td>30</td><td>131075</td><td/><td>##IDS__IsCancelDlg_ConfirmCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Yes</td><td>PushButton</td><td>62</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_Yes##</td><td>No</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetup</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Tree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>203</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Change##</td><td>Help</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Details</td><td>PushButton</td><td>93</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Space##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_SelectFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgText</td><td>Text</td><td>9</td><td>51</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_ClickFeatureIcon##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>FeatureGroup</td><td>GroupBox</td><td>235</td><td>67</td><td>131</td><td>120</td><td>1</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Help</td><td>PushButton</td><td>22</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Help##</td><td>Details</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Text</td><td>8</td><td>190</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>Text</td><td>241</td><td>80</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_MultilineDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Location</td><td>Text</td><td>8</td><td>203</td><td>291</td><td>20</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeaturePath##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Size</td><td>Text</td><td>241</td><td>133</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureSize##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Tree</td><td>SelectionTree</td><td>8</td><td>70</td><td>220</td><td>118</td><td>7</td><td>_BrowseProperty</td><td/><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetupTips</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetupDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DontInstall</td><td>Icon</td><td>21</td><td>155</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary14</td></row>
		<row><td>CustomSetupTips</td><td>DontInstallText</td><td>Text</td><td>60</td><td>155</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_WillNotBeInstalled##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>FirstInstallText</td><td>Text</td><td>60</td><td>180</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Advertise##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Install</td><td>Icon</td><td>21</td><td>105</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary15</td></row>
		<row><td>CustomSetupTips</td><td>InstallFirstUse</td><td>Icon</td><td>21</td><td>180</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary16</td></row>
		<row><td>CustomSetupTips</td><td>InstallPartial</td><td>Icon</td><td>21</td><td>130</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary17</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateMenu</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary18</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateText</td><td>Text</td><td>21</td><td>91</td><td>300</td><td>10</td><td>3</td><td/><td>##IDS_SetupTips_InstallState##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>CustomSetupTips</td><td>InstallText</td><td>Text</td><td>60</td><td>105</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_AllInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>MenuText</td><td>Text</td><td>50</td><td>52</td><td>300</td><td>36</td><td>3</td><td/><td>##IDS_SetupTips_IconInstallState##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>NetworkInstall</td><td>Icon</td><td>21</td><td>205</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary13</td></row>
		<row><td>CustomSetupTips</td><td>NetworkInstallText</td><td>Text</td><td>60</td><td>205</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Network##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_SetupTips_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>PartialText</td><td>Text</td><td>60</td><td>130</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_SubFeaturesInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomerInformation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>NameLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyEdit</td><td>Edit</td><td>21</td><td>100</td><td>237</td><td>17</td><td>3</td><td>COMPANYNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma80##</td><td>SerialLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyLabel</td><td>Text</td><td>21</td><td>89</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_Organization##</td><td>CompanyEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_PleaseEnterInfo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Text</td><td>21</td><td>161</td><td>300</td><td>14</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_CustomerInformation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameEdit</td><td>Edit</td><td>21</td><td>63</td><td>237</td><td>17</td><td>3</td><td>USERNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma50##</td><td>CompanyLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameLabel</td><td>Text</td><td>21</td><td>52</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_UserName##</td><td>NameEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>63</td><td>170</td><td>300</td><td>50</td><td>2</td><td>ApplicationUsers</td><td>##IDS__IsRegisterUserDlg_16##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Text</td><td>21</td><td>127</td><td>109</td><td>10</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_SerialNumber##</td><td>SerialNumber</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>MaskedEdit</td><td>21</td><td>138</td><td>237</td><td>17</td><td>2</td><td>ISX_SERIALNUM</td><td/><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DatabaseFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CHANGE##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DatabaseFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DatabaseFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_DatabaseFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS_DatabaseFolder_InstallDatabaseTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS__DatabaseFolder_DatabaseDir##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DestinationFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__DestinationFolder_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DestFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DestinationFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_DestinationFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS__DestinationFolder_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS_INSTALLDIR##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DiskSpaceRequirements</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_SpaceRequired##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgText</td><td>Text</td><td>10</td><td>185</td><td>358</td><td>41</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_VolumesTooSmall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_DiskSpaceRequirements##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>List</td><td>VolumeCostList</td><td>8</td><td>55</td><td>358</td><td>125</td><td>393223</td><td/><td>##IDS__IsFeatureDetailsDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>FilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>33</td><td>3</td><td/><td>##IDS__IsFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Exit</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Exit##</td><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Ignore##</td><td>Exit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>87</td><td>331</td><td>135</td><td>7</td><td>FileInUseProcess</td><td/><td>Retry</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Retry</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Retry##</td><td>Ignore</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>InstallChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>4128779</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_BrowseDestFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_ChangeCurrentFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsBrowseFolderDlg_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsBrowseFolderDlg_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Copyright</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Text</td><td>135</td><td>144</td><td>228</td><td>73</td><td>65539</td><td/><td>##IDS__IsWelcomeDlg_WarningCopyright##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_WelcomeProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_InstallProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Agree</td><td>RadioButtonGroup</td><td>8</td><td>190</td><td>291</td><td>40</td><td>3</td><td>AgreeToLicense</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>LicenseAgreement</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ISPrintButton</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_ReadLicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_LicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>PushButton</td><td>301</td><td>188</td><td>65</td><td>17</td><td>3</td><td/><td>##IDS_PRINT_BUTTON##</td><td>Agree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Memo</td><td>ScrollableText</td><td>8</td><td>55</td><td>358</td><td>130</td><td>7</td><td/><td/><td/><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Eula.rtf</td><td/></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MaintenanceType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_MaitenanceOptions##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_ProgramMaintenance##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Ico1</td><td>Icon</td><td>35</td><td>75</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary6</td></row>
		<row><td>MaintenanceType</td><td>Ico2</td><td>Icon</td><td>35</td><td>135</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary7</td></row>
		<row><td>MaintenanceType</td><td>Ico3</td><td>Icon</td><td>35</td><td>195</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary8</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>21</td><td>55</td><td>290</td><td>170</td><td>3</td><td>_IsMaintenance</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text1</td><td>Text</td><td>80</td><td>72</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_ChangeFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text2</td><td>Text</td><td>80</td><td>135</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_RepairMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text3</td><td>Text</td><td>80</td><td>192</td><td>260</td><td>35</td><td>131075</td><td/><td>##IDS__IsMaintenanceDlg_RemoveProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_WizardWelcome##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>50</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MsiRMFilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Restart</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>14</td><td>3</td><td/><td>##IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>66</td><td>331</td><td>130</td><td>3</td><td>FileInUseProcess</td><td/><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Restart</td><td>RadioButtonGroup</td><td>19</td><td>187</td><td>343</td><td>40</td><td>3</td><td>RestartManagerOption</td><td/><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>OutOfSpace</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_DiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>43</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_HighlightedVolumes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_OutOfDiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>List</td><td>VolumeCostList</td><td>21</td><td>95</td><td>332</td><td>120</td><td>393223</td><td/><td>##IDS__IsDiskSpaceDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsPatchDlg_Update##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_WelcomePatchWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>54</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_PatchClickUpdate##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>3</td><td/><td/><td>DlgTitle</td><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadmeInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS__IsReadmeDlg_Cancel##</td><td>Readme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>232</td><td>16</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_PleaseReadInfo##</td><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>3</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>193</td><td>13</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_ReadMeInfo##</td><td>DlgDesc</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Readme</td><td>ScrollableText</td><td>10</td><td>55</td><td>353</td><td>166</td><td>3</td><td/><td/><td>Banner</td><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Readme.rtf</td><td/></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>GroupBox1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToInstall</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Text</td><td>38</td><td>198</td><td>211</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Company##</td><td>SerialNumberText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Text</td><td>19</td><td>80</td><td>81</td><td>10</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_CurrentSettings##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyReadyDlg_WizardReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText1</td><td>Text</td><td>21</td><td>54</td><td>330</td><td>24</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_BackOrCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Text</td><td>21</td><td>99</td><td>330</td><td>20</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ModifyReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyRepair##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyInstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Text</td><td>19</td><td>92</td><td>330</td><td>133</td><td>65541</td><td/><td/><td>SetupTypeText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyReadyDlg_Install##</td><td>InstallPerMachine</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>PushButton</td><td>63</td><td>123</td><td>248</td><td>17</td><td>8388610</td><td/><td>##IDS__IsRegisterUserDlg_Anyone##</td><td>InstallPerUser</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>PushButton</td><td>63</td><td>143</td><td>248</td><td>17</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Text</td><td>38</td><td>211</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Serial##</td><td>CurrentSettingsText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Text</td><td>23</td><td>97</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SetupType##</td><td>SetupTypeText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Text</td><td>37</td><td>114</td><td>306</td><td>14</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SelectedSetupType##</td><td>TargetFolderText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Text</td><td>24</td><td>136</td><td>306</td><td>11</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_DestFolder##</td><td>TargetFolderText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Text</td><td>37</td><td>151</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Installdir##</td><td>UserInformationText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Text</td><td>23</td><td>171</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserInfo##</td><td>UserNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Text</td><td>38</td><td>184</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserName##</td><td>CompanyNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>RemoveNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToRemove</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>24</td><td>131075</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickRemove##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText1</td><td>Text</td><td>21</td><td>79</td><td>330</td><td>23</td><td>3</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickBack##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText2</td><td>Text</td><td>21</td><td>102</td><td>330</td><td>24</td><td>3</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_RemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyRemoveAllDlg_Remove##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFatalError_Finish##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_RestoreOrContinueLater##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsFatalError_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsFatalError_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>CheckBox</td><td>135</td><td>164</td><td>10</td><td>9</td><td>2</td><td>ISCHECKFORPRODUCTUPDATES</td><td>CheckBox1</td><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Text</td><td>152</td><td>162</td><td>190</td><td>30</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_YesCheckForUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>CheckBox</td><td>151</td><td>114</td><td>10</td><td>9</td><td>2</td><td>LAUNCHPROGRAM</td><td/><td>CheckLaunchReadme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>CheckBox</td><td>151</td><td>148</td><td>10</td><td>9</td><td>2</td><td>LAUNCHREADME</td><td/><td>CheckBoxUpdates</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>182</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckLaunchProgram</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Text</td><td>164</td><td>112</td><td>98</td><td>15</td><td>65538</td><td/><td>##IDS__IsExitDialog_LaunchProgram##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Text</td><td>164</td><td>148</td><td>120</td><td>13</td><td>65538</td><td/><td>##IDS__IsExitDialog_ShowReadMe##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsExitDialog_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>182</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsExitDialog_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_InstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_UninstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Text</td><td>135</td><td>30</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_SetupFinished##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_PossibleUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Text</td><td>135</td><td>120</td><td>228</td><td>45</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_InternetConnection##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>A</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Abort##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>C</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>ErrorIcon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>SetupError</td><td>ErrorText</td><td>Text</td><td>50</td><td>15</td><td>200</td><td>50</td><td>131075</td><td/><td>##IDS__IsErrorDlg_ErrorText##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>I</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Ignore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>N</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_NO##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>O</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>R</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Retry##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>Y</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Yes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>Text</td><td>135</td><td>125</td><td>228</td><td>12</td><td>65539</td><td/><td>##IDS__IsInitDlg_1##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>Text</td><td>135</td><td>109</td><td>220</td><td>36</td><td>65539</td><td/><td>##IDS__IsInitDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInitialization</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsInitDlg_WelcomeWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>30</td><td>196611</td><td/><td>##IDS__IsInitDlg_PreparingWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsUserExit_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_RestoreOrContinue##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsUserExit_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsUserExit_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>ProgressBar</td><td>59</td><td>113</td><td>275</td><td>12</td><td>65537</td><td/><td>##IDS__IsProgressDlg_ProgressDone##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>Text</td><td>59</td><td>100</td><td>275</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupProgress</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_InstallingProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_Uninstalling##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbSec</td><td>Text</td><td>192</td><td>139</td><td>32</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_SecHidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbStatus</td><td>Text</td><td>59</td><td>85</td><td>70</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_Status##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>SetupIcon</td><td>Icon</td><td>21</td><td>51</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary9</td></row>
		<row><td>SetupProgress</td><td>ShowTime</td><td>Text</td><td>170</td><td>139</td><td>17</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_Hidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>TextTime</td><td>Text</td><td>59</td><td>139</td><td>110</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_HiddenTimeRemaining##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupResume</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_WizardResume##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Text</td><td>135</td><td>46</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_ResumeSuspended##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_Resuming##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompText</td><td>Text</td><td>80</td><td>80</td><td>246</td><td>30</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompleteIco</td><td>Icon</td><td>34</td><td>80</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary10</td></row>
		<row><td>SetupType</td><td>CustText</td><td>Text</td><td>80</td><td>171</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CustomIco</td><td>Icon</td><td>34</td><td>171</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseSetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgText</td><td>Text</td><td>22</td><td>49</td><td>326</td><td>10</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_SelectSetupType##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_SetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>MinIco</td><td>Icon</td><td>34</td><td>125</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>MinText</td><td>Text</td><td>80</td><td>125</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>20</td><td>59</td><td>264</td><td>139</td><td>1048579</td><td>_IsSetupTypeMin</td><td/><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SplashBitmap</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Image</td><td>Bitmap</td><td>13</td><td>12</td><td>349</td><td>211</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
	</table>

	<table name="ControlCondition">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Action</col>
		<col key="yes" def="s255">Condition</col>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Hide</td><td>SHOWCOPYRIGHT="No"</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Show</td><td>SHOWCOPYRIGHT="Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Disable</td><td>AgreeToLicense &lt;&gt; "Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Enable</td><td>AgreeToLicense = "Yes"</td></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Show</td><td>ProgressType0="Modify"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Show</td><td>ProgressType0="Repair"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Show</td><td>ProgressType0="install"</td></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Disable</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Enable</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>NOT SERIALNUMSHOW</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Show</td><td>ProgressType2="installed" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Show</td><td>ProgressType2="uninstalled" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Show</td><td>ProgressType2="installed"</td></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Show</td><td>ProgressType2="uninstalled"</td></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Show</td><td>ProgressType3="installs"</td></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Show</td><td>ProgressType3="uninstalls"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Show</td><td>ProgressType1="Installing"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Show</td><td>ProgressType1="Uninstalling"</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Hide</td><td>RESUME</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Show</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Hide</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Show</td><td>RESUME</td></row>
	</table>

	<table name="ControlEvent">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col key="yes" def="s255">Argument</col>
		<col key="yes" def="S255">Condition</col>
		<col def="I2">Ordering</col>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>NewDialog</td><td>AdminWelcome</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>SpawnDialog</td><td>AdminChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>3</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>No</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>NOT Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>SelectionBrowse</td><td>InstallChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>SelectionBrowse</td><td>DiskSpaceRequirements</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Help</td><td>SpawnDialog</td><td>CustomSetupTips</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>[_IsSetupTypeMin]</td><td>Custom</td><td>1</td><td>0</td></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>EndDialog</td><td>Exit</td><td>(SERIALNUMVALRETRYLIMIT) And (SERIALNUMVALRETRYLIMIT&lt;0) And (SERIALNUMVALRETURN&lt;&gt;SERIALNUMVALSUCCESSRETVAL)</td><td>2</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>(Not SERIALNUMVALRETURN) OR (SERIALNUMVALRETURN=SERIALNUMVALSUCCESSRETVAL)</td><td>3</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>1</td><td>ApplicationUsers = "AllUsers" And Privileged</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>{}</td><td>ApplicationUsers = "OnlyCurrentUser" And Privileged</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>DATABASEDIR</td><td>1</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>NewDialog</td><td>SetupType</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>0</td></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>INSTALLDIR</td><td>1</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Exit</td><td>EndDialog</td><td>Exit</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>EndDialog</td><td>Ignore</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Retry</td><td>EndDialog</td><td>Retry</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>[_BrowseProperty]</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>NewDialog</td><td>SplashBitmap</td><td>Display_IsBitmapDlg</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>DoAction</td><td>ISPrint</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>AgreeToLicense = "Yes"</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Back</td><td>NewDialog</td><td>MaintenanceWelcome</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsMaintenance = "Change"</td><td>12</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsMaintenance = "Reinstall"</td><td>13</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToRemove</td><td>_IsMaintenance = "Remove"</td><td>11</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>_IsMaintenance = "Reinstall"</td><td>10</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>ReinstallMode</td><td>[ReinstallModeText]</td><td>_IsMaintenance = "Reinstall"</td><td>9</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Modify</td><td>_IsMaintenance = "Change"</td><td>2</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Repair</td><td>_IsMaintenance = "Reinstall"</td><td>1</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Modifying</td><td>_IsMaintenance = "Change"</td><td>3</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Repairing</td><td>_IsMaintenance = "Reinstall"</td><td>4</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>modified</td><td>_IsMaintenance = "Change"</td><td>6</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>5</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>modifies</td><td>_IsMaintenance = "Change"</td><td>7</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>8</td></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>RMShutdownAndRestart</td><td>0</td><td>RestartManagerOption="CloseRestart"</td><td>2</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>ACTION = "ADMIN"</td><td>0</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>DestinationFolder</td><td>ACTION &lt;&gt; "ADMIN"</td><td>0</td></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>PATCH And REINSTALL=""</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>ReinstallMode</td><td>omus</td><td>PATCH And REINSTALLMODE=""</td><td>2</td></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>CustomSetup</td><td>Installed OR _IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed AND _IsMaintenance = "Reinstall"</td><td>3</td></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ALLUSERS]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[MSIINSTALLPERUSER]</td><td>{}</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ALLUSERS]</td><td>2</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[MSIINSTALLPERUSER]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>Remove</td><td>ALL</td><td>1</td><td>1</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType1]</td><td>Uninstalling</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType2]</td><td>uninstalled</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType3]</td><td>uninstalls</td><td>1</td><td>0</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1") And NOT ISENABLEDWUSFINISHDIALOG</td><td>6</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupError</td><td>A</td><td>EndDialog</td><td>ErrorAbort</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>C</td><td>EndDialog</td><td>ErrorCancel</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>I</td><td>EndDialog</td><td>ErrorIgnore</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>N</td><td>EndDialog</td><td>ErrorNo</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>O</td><td>EndDialog</td><td>ErrorOk</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>R</td><td>EndDialog</td><td>ErrorRetry</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>Y</td><td>EndDialog</td><td>ErrorYes</td><td>1</td><td>0</td></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>SetupType</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>SetupType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsSetupTypeMin &lt;&gt; "Custom"</td><td>1</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>100</td><td>_IsSetupTypeMin="Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>200</td><td>_IsSetupTypeMin="Typical"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>300</td><td>_IsSetupTypeMin="Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[ISRUNSETUPTYPEADDLOCALEVENT]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameCustom]</td><td>_IsSetupTypeMin = "Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameMinimal]</td><td>_IsSetupTypeMin = "Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameTypical]</td><td>_IsSetupTypeMin = "Typical"</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
	</table>

	<table name="CreateFolder">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Component_</col>
	</table>

	<table name="CustomAction">
		<col key="yes" def="s72">Action</col>
		<col def="i2">Type</col>
		<col def="S64">Source</col>
		<col def="S0">Target</col>
		<col def="I4">ExtendedType</col>
		<col def="S255">ISComments</col>
		<row><td>ISPreventDowngrade</td><td>19</td><td/><td>[IS_PREVENT_DOWNGRADE_EXIT]</td><td/><td>Exits install when a newer version of this product is found</td></row>
		<row><td>ISPrint</td><td>1</td><td>SetAllUsers.dll</td><td>PrintScrollableText</td><td/><td>Prints the contents of a ScrollableText control on a dialog.</td></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>1</td><td>ISExpHlp.dll</td><td>RunSetupTypeAddLocalEvent</td><td/><td>Run the AddLocal events associated with the Next button on the Setup Type dialog.</td></row>
		<row><td>ISSelfRegisterCosting</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterCosting</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFiles</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFinalize</td><td/><td/></row>
		<row><td>ISSetAllUsers</td><td>257</td><td>SetAllUsers.dll</td><td>SetAllUsers</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISUnSelfRegisterFiles</td><td/><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td>51</td><td>ARPINSTALLLOCATION</td><td>[INSTALLDIR]</td><td/><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%SystemRoot]\Profiles\All Users</td><td/><td/></row>
		<row><td>ShowMsiLog</td><td>226</td><td>SystemFolder</td><td>[SystemFolder]notepad.exe "[MsiLogFileLocation]"</td><td/><td>Shows Property-driven MSI Log</td></row>
		<row><td>setAllUsersProfile2K</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%ALLUSERSPROFILE]</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>51</td><td>USERPROFILE</td><td>[%USERPROFILE]</td><td/><td/></row>
	</table>

	<table name="Dialog">
		<col key="yes" def="s72">Dialog</col>
		<col def="i2">HCentering</col>
		<col def="i2">VCentering</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L128">Title</col>
		<col def="s50">Control_First</col>
		<col def="S50">Control_Default</col>
		<col def="S50">Control_Cancel</col>
		<col def="S255">ISComments</col>
		<col def="S72">TextStyle_</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISResourceId</col>
		<row><td>AdminChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Install Point Browse</td><td/><td>0</td><td/></row>
		<row><td>AdminNetworkLocation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Network Location</td><td/><td>0</td><td/></row>
		<row><td>AdminWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Administration Welcome</td><td/><td>0</td><td/></row>
		<row><td>CancelSetup</td><td>50</td><td>50</td><td>260</td><td>85</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>No</td><td>No</td><td>No</td><td>Cancel</td><td/><td>0</td><td/></row>
		<row><td>CustomSetup</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tree</td><td>Next</td><td>Cancel</td><td>Custom Selection</td><td/><td>0</td><td/></row>
		<row><td>CustomSetupTips</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Custom Setup Tips</td><td/><td>0</td><td/></row>
		<row><td>CustomerInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>NameEdit</td><td>Next</td><td>Cancel</td><td>Identification</td><td/><td>0</td><td/></row>
		<row><td>DatabaseFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Database Folder</td><td/><td>0</td><td/></row>
		<row><td>DestinationFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Destination Folder</td><td/><td>0</td><td/></row>
		<row><td>DiskSpaceRequirements</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Feature Details</td><td/><td>0</td><td/></row>
		<row><td>FilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Retry</td><td>Retry</td><td>Exit</td><td>Files in Use</td><td/><td>0</td><td/></row>
		<row><td>InstallChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Browse</td><td/><td>0</td><td/></row>
		<row><td>InstallWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Panel</td><td/><td>0</td><td/></row>
		<row><td>LicenseAgreement</td><td>50</td><td>50</td><td>374</td><td>266</td><td>2</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Agree</td><td>Next</td><td>Cancel</td><td>License Agreement</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Change, Reinstall, Remove</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Maintenance Welcome</td><td/><td>0</td><td/></row>
		<row><td>MsiRMFilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>Cancel</td><td>RestartManager Files in Use</td><td/><td>0</td><td/></row>
		<row><td>OutOfSpace</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Resume</td><td>Resume</td><td>Resume</td><td>Out Of Disk Space</td><td/><td>0</td><td/></row>
		<row><td>PatchWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS__IsPatchDlg_PatchWizard##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Patch Panel</td><td/><td>0</td><td/></row>
		<row><td>ReadmeInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>7</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Readme Information</td><td/><td>0</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Ready to Install</td><td/><td>0</td><td/></row>
		<row><td>ReadyToRemove</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RemoveNow</td><td>RemoveNow</td><td>Cancel</td><td>Verify Remove</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteError</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>Fatal Error</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupError</td><td>50</td><td>50</td><td>270</td><td>110</td><td>65543</td><td>##IDS__IsErrorDlg_InstallerInfo##</td><td>ErrorText</td><td>O</td><td>C</td><td>Error</td><td/><td>0</td><td/></row>
		<row><td>SetupInitialization</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Setup Initialization</td><td/><td>0</td><td/></row>
		<row><td>SetupInterrupted</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>User Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupProgress</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Progress</td><td/><td>0</td><td/></row>
		<row><td>SetupResume</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Resume</td><td/><td>0</td><td/></row>
		<row><td>SetupType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Setup Type</td><td/><td>0</td><td/></row>
		<row><td>SplashBitmap</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Bitmap</td><td/><td>0</td><td/></row>
	</table>

	<table name="Directory">
		<col key="yes" def="s72">Directory</col>
		<col def="S72">Directory_Parent</col>
		<col def="l255">DefaultDir</col>
		<col def="S255">ISDescription</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISFolderName</col>
		<row><td>ALLUSERSPROFILE</td><td>TARGETDIR</td><td>.:ALLUSE~1|All Users</td><td/><td>0</td><td/></row>
		<row><td>AdminToolsFolder</td><td>TARGETDIR</td><td>.:Admint~1|AdminTools</td><td/><td>0</td><td/></row>
		<row><td>AppDataFolder</td><td>TARGETDIR</td><td>.:APPLIC~1|Application Data</td><td/><td>0</td><td/></row>
		<row><td>CommonAppDataFolder</td><td>TARGETDIR</td><td>.:Common~1|CommonAppData</td><td/><td>0</td><td/></row>
		<row><td>CommonFiles64Folder</td><td>TARGETDIR</td><td>.:Common64</td><td/><td>0</td><td/></row>
		<row><td>CommonFilesFolder</td><td>TARGETDIR</td><td>.:Common</td><td/><td>0</td><td/></row>
		<row><td>DATABASEDIR</td><td>ISYourDataBaseDir</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>DesktopFolder</td><td>TARGETDIR</td><td>.:Desktop</td><td/><td>3</td><td/></row>
		<row><td>FavoritesFolder</td><td>TARGETDIR</td><td>.:FAVORI~1|Favorites</td><td/><td>0</td><td/></row>
		<row><td>FontsFolder</td><td>TARGETDIR</td><td>.:Fonts</td><td/><td>0</td><td/></row>
		<row><td>GlobalAssemblyCache</td><td>TARGETDIR</td><td>.:Global~1|GlobalAssemblyCache</td><td/><td>0</td><td/></row>
		<row><td>INSTALLDIR</td><td>MY_PRODUCT_NAME1</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>ISCommonFilesFolder</td><td>CommonFilesFolder</td><td>Instal~1|InstallShield</td><td/><td>0</td><td/></row>
		<row><td>ISMyCompanyDir</td><td>ProgramFilesFolder</td><td>MYCOMP~1|My Company Name</td><td/><td>0</td><td/></row>
		<row><td>ISMyProductDir</td><td>ISMyCompanyDir</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>ISYourDataBaseDir</td><td>INSTALLDIR</td><td>Database</td><td/><td>0</td><td/></row>
		<row><td>LEON_CONSULTORES</td><td>ProgramFilesFolder</td><td>LEONCO~1|Leon Consultores</td><td/><td>0</td><td/></row>
		<row><td>LocalAppDataFolder</td><td>TARGETDIR</td><td>.:LocalA~1|LocalAppData</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME</td><td>LEON_CONSULTORES</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME1</td><td>PASTELERIA_STRINDBERG</td><td>POS_STD</td><td/><td>0</td><td/></row>
		<row><td>MyPicturesFolder</td><td>TARGETDIR</td><td>.:MyPict~1|MyPictures</td><td/><td>0</td><td/></row>
		<row><td>NetHoodFolder</td><td>TARGETDIR</td><td>.:NetHood</td><td/><td>0</td><td/></row>
		<row><td>PASTELERIA_STRINDBERG</td><td>ProgramFilesFolder</td><td>PASTEL~1|Pasteleria Strindberg</td><td/><td>0</td><td/></row>
		<row><td>PersonalFolder</td><td>TARGETDIR</td><td>.:Personal</td><td/><td>0</td><td/></row>
		<row><td>PrimaryVolumePath</td><td>TARGETDIR</td><td>.:Primar~1|PrimaryVolumePath</td><td/><td>0</td><td/></row>
		<row><td>PrintHoodFolder</td><td>TARGETDIR</td><td>.:PRINTH~1|PrintHood</td><td/><td>0</td><td/></row>
		<row><td>ProgramFiles64Folder</td><td>TARGETDIR</td><td>.:Prog64~1|Program Files 64</td><td/><td>0</td><td/></row>
		<row><td>ProgramFilesFolder</td><td>TARGETDIR</td><td>.:PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>ProgramMenuFolder</td><td>TARGETDIR</td><td>.:Programs</td><td/><td>3</td><td/></row>
		<row><td>RecentFolder</td><td>TARGETDIR</td><td>.:Recent</td><td/><td>0</td><td/></row>
		<row><td>SendToFolder</td><td>TARGETDIR</td><td>.:SendTo</td><td/><td>3</td><td/></row>
		<row><td>StartMenuFolder</td><td>TARGETDIR</td><td>.:STARTM~1|Start Menu</td><td/><td>3</td><td/></row>
		<row><td>StartupFolder</td><td>TARGETDIR</td><td>.:StartUp</td><td/><td>3</td><td/></row>
		<row><td>System16Folder</td><td>TARGETDIR</td><td>.:System</td><td/><td>0</td><td/></row>
		<row><td>System64Folder</td><td>TARGETDIR</td><td>.:System64</td><td/><td>0</td><td/></row>
		<row><td>SystemFolder</td><td>TARGETDIR</td><td>.:System32</td><td/><td>0</td><td/></row>
		<row><td>TARGETDIR</td><td/><td>SourceDir</td><td/><td>0</td><td/></row>
		<row><td>TempFolder</td><td>TARGETDIR</td><td>.:Temp</td><td/><td>0</td><td/></row>
		<row><td>TemplateFolder</td><td>TARGETDIR</td><td>.:ShellNew</td><td/><td>0</td><td/></row>
		<row><td>USERPROFILE</td><td>TARGETDIR</td><td>.:USERPR~1|UserProfile</td><td/><td>0</td><td/></row>
		<row><td>WindowsFolder</td><td>TARGETDIR</td><td>.:Windows</td><td/><td>0</td><td/></row>
		<row><td>WindowsVolume</td><td>TARGETDIR</td><td>.:WinRoot</td><td/><td>0</td><td/></row>
		<row><td>inb9aa_1_instaladorpos</td><td>pastel_1_pasteleria_strindberg</td><td>INB9AA~1|InstaladorPOS</td><td/><td>1</td><td/></row>
		<row><td>instal_1_instaladorpos</td><td>pastel_1_pasteleria_strindberg</td><td>INSTAL~1|InstaladorPOS</td><td/><td>1</td><td/></row>
		<row><td>pastel_1_pasteleria_strindberg</td><td>ProgramMenuFolder</td><td>PASTEL~1|Pasteleria Strindberg</td><td/><td>1</td><td/></row>
	</table>

	<table name="DrLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col key="yes" def="S255">Path</col>
		<col def="I2">Depth</col>
	</table>

	<table name="DuplicateFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="s72">File_</col>
		<col def="L255">DestName</col>
		<col def="S72">DestFolder</col>
	</table>

	<table name="Environment">
		<col key="yes" def="s72">Environment</col>
		<col def="l255">Name</col>
		<col def="L255">Value</col>
		<col def="s72">Component_</col>
	</table>

	<table name="Error">
		<col key="yes" def="i2">Error</col>
		<col def="L255">Message</col>
		<row><td>0</td><td>##IDS_ERROR_0##</td></row>
		<row><td>1</td><td>##IDS_ERROR_1##</td></row>
		<row><td>10</td><td>##IDS_ERROR_8##</td></row>
		<row><td>11</td><td>##IDS_ERROR_9##</td></row>
		<row><td>1101</td><td>##IDS_ERROR_22##</td></row>
		<row><td>12</td><td>##IDS_ERROR_10##</td></row>
		<row><td>13</td><td>##IDS_ERROR_11##</td></row>
		<row><td>1301</td><td>##IDS_ERROR_23##</td></row>
		<row><td>1302</td><td>##IDS_ERROR_24##</td></row>
		<row><td>1303</td><td>##IDS_ERROR_25##</td></row>
		<row><td>1304</td><td>##IDS_ERROR_26##</td></row>
		<row><td>1305</td><td>##IDS_ERROR_27##</td></row>
		<row><td>1306</td><td>##IDS_ERROR_28##</td></row>
		<row><td>1307</td><td>##IDS_ERROR_29##</td></row>
		<row><td>1308</td><td>##IDS_ERROR_30##</td></row>
		<row><td>1309</td><td>##IDS_ERROR_31##</td></row>
		<row><td>1310</td><td>##IDS_ERROR_32##</td></row>
		<row><td>1311</td><td>##IDS_ERROR_33##</td></row>
		<row><td>1312</td><td>##IDS_ERROR_34##</td></row>
		<row><td>1313</td><td>##IDS_ERROR_35##</td></row>
		<row><td>1314</td><td>##IDS_ERROR_36##</td></row>
		<row><td>1315</td><td>##IDS_ERROR_37##</td></row>
		<row><td>1316</td><td>##IDS_ERROR_38##</td></row>
		<row><td>1317</td><td>##IDS_ERROR_39##</td></row>
		<row><td>1318</td><td>##IDS_ERROR_40##</td></row>
		<row><td>1319</td><td>##IDS_ERROR_41##</td></row>
		<row><td>1320</td><td>##IDS_ERROR_42##</td></row>
		<row><td>1321</td><td>##IDS_ERROR_43##</td></row>
		<row><td>1322</td><td>##IDS_ERROR_44##</td></row>
		<row><td>1323</td><td>##IDS_ERROR_45##</td></row>
		<row><td>1324</td><td>##IDS_ERROR_46##</td></row>
		<row><td>1325</td><td>##IDS_ERROR_47##</td></row>
		<row><td>1326</td><td>##IDS_ERROR_48##</td></row>
		<row><td>1327</td><td>##IDS_ERROR_49##</td></row>
		<row><td>1328</td><td>##IDS_ERROR_122##</td></row>
		<row><td>1329</td><td>##IDS_ERROR_1329##</td></row>
		<row><td>1330</td><td>##IDS_ERROR_1330##</td></row>
		<row><td>1331</td><td>##IDS_ERROR_1331##</td></row>
		<row><td>1332</td><td>##IDS_ERROR_1332##</td></row>
		<row><td>1333</td><td>##IDS_ERROR_1333##</td></row>
		<row><td>1334</td><td>##IDS_ERROR_1334##</td></row>
		<row><td>1335</td><td>##IDS_ERROR_1335##</td></row>
		<row><td>1336</td><td>##IDS_ERROR_1336##</td></row>
		<row><td>14</td><td>##IDS_ERROR_12##</td></row>
		<row><td>1401</td><td>##IDS_ERROR_50##</td></row>
		<row><td>1402</td><td>##IDS_ERROR_51##</td></row>
		<row><td>1403</td><td>##IDS_ERROR_52##</td></row>
		<row><td>1404</td><td>##IDS_ERROR_53##</td></row>
		<row><td>1405</td><td>##IDS_ERROR_54##</td></row>
		<row><td>1406</td><td>##IDS_ERROR_55##</td></row>
		<row><td>1407</td><td>##IDS_ERROR_56##</td></row>
		<row><td>1408</td><td>##IDS_ERROR_57##</td></row>
		<row><td>1409</td><td>##IDS_ERROR_58##</td></row>
		<row><td>1410</td><td>##IDS_ERROR_59##</td></row>
		<row><td>15</td><td>##IDS_ERROR_13##</td></row>
		<row><td>1500</td><td>##IDS_ERROR_60##</td></row>
		<row><td>1501</td><td>##IDS_ERROR_61##</td></row>
		<row><td>1502</td><td>##IDS_ERROR_62##</td></row>
		<row><td>1503</td><td>##IDS_ERROR_63##</td></row>
		<row><td>16</td><td>##IDS_ERROR_14##</td></row>
		<row><td>1601</td><td>##IDS_ERROR_64##</td></row>
		<row><td>1602</td><td>##IDS_ERROR_65##</td></row>
		<row><td>1603</td><td>##IDS_ERROR_66##</td></row>
		<row><td>1604</td><td>##IDS_ERROR_67##</td></row>
		<row><td>1605</td><td>##IDS_ERROR_68##</td></row>
		<row><td>1606</td><td>##IDS_ERROR_69##</td></row>
		<row><td>1607</td><td>##IDS_ERROR_70##</td></row>
		<row><td>1608</td><td>##IDS_ERROR_71##</td></row>
		<row><td>1609</td><td>##IDS_ERROR_1609##</td></row>
		<row><td>1651</td><td>##IDS_ERROR_1651##</td></row>
		<row><td>17</td><td>##IDS_ERROR_15##</td></row>
		<row><td>1701</td><td>##IDS_ERROR_72##</td></row>
		<row><td>1702</td><td>##IDS_ERROR_73##</td></row>
		<row><td>1703</td><td>##IDS_ERROR_74##</td></row>
		<row><td>1704</td><td>##IDS_ERROR_75##</td></row>
		<row><td>1705</td><td>##IDS_ERROR_76##</td></row>
		<row><td>1706</td><td>##IDS_ERROR_77##</td></row>
		<row><td>1707</td><td>##IDS_ERROR_78##</td></row>
		<row><td>1708</td><td>##IDS_ERROR_79##</td></row>
		<row><td>1709</td><td>##IDS_ERROR_80##</td></row>
		<row><td>1710</td><td>##IDS_ERROR_81##</td></row>
		<row><td>1711</td><td>##IDS_ERROR_82##</td></row>
		<row><td>1712</td><td>##IDS_ERROR_83##</td></row>
		<row><td>1713</td><td>##IDS_ERROR_123##</td></row>
		<row><td>1714</td><td>##IDS_ERROR_124##</td></row>
		<row><td>1715</td><td>##IDS_ERROR_1715##</td></row>
		<row><td>1716</td><td>##IDS_ERROR_1716##</td></row>
		<row><td>1717</td><td>##IDS_ERROR_1717##</td></row>
		<row><td>1718</td><td>##IDS_ERROR_1718##</td></row>
		<row><td>1719</td><td>##IDS_ERROR_1719##</td></row>
		<row><td>1720</td><td>##IDS_ERROR_1720##</td></row>
		<row><td>1721</td><td>##IDS_ERROR_1721##</td></row>
		<row><td>1722</td><td>##IDS_ERROR_1722##</td></row>
		<row><td>1723</td><td>##IDS_ERROR_1723##</td></row>
		<row><td>1724</td><td>##IDS_ERROR_1724##</td></row>
		<row><td>1725</td><td>##IDS_ERROR_1725##</td></row>
		<row><td>1726</td><td>##IDS_ERROR_1726##</td></row>
		<row><td>1727</td><td>##IDS_ERROR_1727##</td></row>
		<row><td>1728</td><td>##IDS_ERROR_1728##</td></row>
		<row><td>1729</td><td>##IDS_ERROR_1729##</td></row>
		<row><td>1730</td><td>##IDS_ERROR_1730##</td></row>
		<row><td>1731</td><td>##IDS_ERROR_1731##</td></row>
		<row><td>1732</td><td>##IDS_ERROR_1732##</td></row>
		<row><td>18</td><td>##IDS_ERROR_16##</td></row>
		<row><td>1801</td><td>##IDS_ERROR_84##</td></row>
		<row><td>1802</td><td>##IDS_ERROR_85##</td></row>
		<row><td>1803</td><td>##IDS_ERROR_86##</td></row>
		<row><td>1804</td><td>##IDS_ERROR_87##</td></row>
		<row><td>1805</td><td>##IDS_ERROR_88##</td></row>
		<row><td>1806</td><td>##IDS_ERROR_89##</td></row>
		<row><td>1807</td><td>##IDS_ERROR_90##</td></row>
		<row><td>19</td><td>##IDS_ERROR_17##</td></row>
		<row><td>1901</td><td>##IDS_ERROR_91##</td></row>
		<row><td>1902</td><td>##IDS_ERROR_92##</td></row>
		<row><td>1903</td><td>##IDS_ERROR_93##</td></row>
		<row><td>1904</td><td>##IDS_ERROR_94##</td></row>
		<row><td>1905</td><td>##IDS_ERROR_95##</td></row>
		<row><td>1906</td><td>##IDS_ERROR_96##</td></row>
		<row><td>1907</td><td>##IDS_ERROR_97##</td></row>
		<row><td>1908</td><td>##IDS_ERROR_98##</td></row>
		<row><td>1909</td><td>##IDS_ERROR_99##</td></row>
		<row><td>1910</td><td>##IDS_ERROR_100##</td></row>
		<row><td>1911</td><td>##IDS_ERROR_101##</td></row>
		<row><td>1912</td><td>##IDS_ERROR_102##</td></row>
		<row><td>1913</td><td>##IDS_ERROR_103##</td></row>
		<row><td>1914</td><td>##IDS_ERROR_104##</td></row>
		<row><td>1915</td><td>##IDS_ERROR_105##</td></row>
		<row><td>1916</td><td>##IDS_ERROR_106##</td></row>
		<row><td>1917</td><td>##IDS_ERROR_107##</td></row>
		<row><td>1918</td><td>##IDS_ERROR_108##</td></row>
		<row><td>1919</td><td>##IDS_ERROR_109##</td></row>
		<row><td>1920</td><td>##IDS_ERROR_110##</td></row>
		<row><td>1921</td><td>##IDS_ERROR_111##</td></row>
		<row><td>1922</td><td>##IDS_ERROR_112##</td></row>
		<row><td>1923</td><td>##IDS_ERROR_113##</td></row>
		<row><td>1924</td><td>##IDS_ERROR_114##</td></row>
		<row><td>1925</td><td>##IDS_ERROR_115##</td></row>
		<row><td>1926</td><td>##IDS_ERROR_116##</td></row>
		<row><td>1927</td><td>##IDS_ERROR_117##</td></row>
		<row><td>1928</td><td>##IDS_ERROR_118##</td></row>
		<row><td>1929</td><td>##IDS_ERROR_119##</td></row>
		<row><td>1930</td><td>##IDS_ERROR_125##</td></row>
		<row><td>1931</td><td>##IDS_ERROR_126##</td></row>
		<row><td>1932</td><td>##IDS_ERROR_127##</td></row>
		<row><td>1933</td><td>##IDS_ERROR_128##</td></row>
		<row><td>1934</td><td>##IDS_ERROR_129##</td></row>
		<row><td>1935</td><td>##IDS_ERROR_1935##</td></row>
		<row><td>1936</td><td>##IDS_ERROR_1936##</td></row>
		<row><td>1937</td><td>##IDS_ERROR_1937##</td></row>
		<row><td>1938</td><td>##IDS_ERROR_1938##</td></row>
		<row><td>2</td><td>##IDS_ERROR_2##</td></row>
		<row><td>20</td><td>##IDS_ERROR_18##</td></row>
		<row><td>21</td><td>##IDS_ERROR_19##</td></row>
		<row><td>2101</td><td>##IDS_ERROR_2101##</td></row>
		<row><td>2102</td><td>##IDS_ERROR_2102##</td></row>
		<row><td>2103</td><td>##IDS_ERROR_2103##</td></row>
		<row><td>2104</td><td>##IDS_ERROR_2104##</td></row>
		<row><td>2105</td><td>##IDS_ERROR_2105##</td></row>
		<row><td>2106</td><td>##IDS_ERROR_2106##</td></row>
		<row><td>2107</td><td>##IDS_ERROR_2107##</td></row>
		<row><td>2108</td><td>##IDS_ERROR_2108##</td></row>
		<row><td>2109</td><td>##IDS_ERROR_2109##</td></row>
		<row><td>2110</td><td>##IDS_ERROR_2110##</td></row>
		<row><td>2111</td><td>##IDS_ERROR_2111##</td></row>
		<row><td>2112</td><td>##IDS_ERROR_2112##</td></row>
		<row><td>2113</td><td>##IDS_ERROR_2113##</td></row>
		<row><td>22</td><td>##IDS_ERROR_120##</td></row>
		<row><td>2200</td><td>##IDS_ERROR_2200##</td></row>
		<row><td>2201</td><td>##IDS_ERROR_2201##</td></row>
		<row><td>2202</td><td>##IDS_ERROR_2202##</td></row>
		<row><td>2203</td><td>##IDS_ERROR_2203##</td></row>
		<row><td>2204</td><td>##IDS_ERROR_2204##</td></row>
		<row><td>2205</td><td>##IDS_ERROR_2205##</td></row>
		<row><td>2206</td><td>##IDS_ERROR_2206##</td></row>
		<row><td>2207</td><td>##IDS_ERROR_2207##</td></row>
		<row><td>2208</td><td>##IDS_ERROR_2208##</td></row>
		<row><td>2209</td><td>##IDS_ERROR_2209##</td></row>
		<row><td>2210</td><td>##IDS_ERROR_2210##</td></row>
		<row><td>2211</td><td>##IDS_ERROR_2211##</td></row>
		<row><td>2212</td><td>##IDS_ERROR_2212##</td></row>
		<row><td>2213</td><td>##IDS_ERROR_2213##</td></row>
		<row><td>2214</td><td>##IDS_ERROR_2214##</td></row>
		<row><td>2215</td><td>##IDS_ERROR_2215##</td></row>
		<row><td>2216</td><td>##IDS_ERROR_2216##</td></row>
		<row><td>2217</td><td>##IDS_ERROR_2217##</td></row>
		<row><td>2218</td><td>##IDS_ERROR_2218##</td></row>
		<row><td>2219</td><td>##IDS_ERROR_2219##</td></row>
		<row><td>2220</td><td>##IDS_ERROR_2220##</td></row>
		<row><td>2221</td><td>##IDS_ERROR_2221##</td></row>
		<row><td>2222</td><td>##IDS_ERROR_2222##</td></row>
		<row><td>2223</td><td>##IDS_ERROR_2223##</td></row>
		<row><td>2224</td><td>##IDS_ERROR_2224##</td></row>
		<row><td>2225</td><td>##IDS_ERROR_2225##</td></row>
		<row><td>2226</td><td>##IDS_ERROR_2226##</td></row>
		<row><td>2227</td><td>##IDS_ERROR_2227##</td></row>
		<row><td>2228</td><td>##IDS_ERROR_2228##</td></row>
		<row><td>2229</td><td>##IDS_ERROR_2229##</td></row>
		<row><td>2230</td><td>##IDS_ERROR_2230##</td></row>
		<row><td>2231</td><td>##IDS_ERROR_2231##</td></row>
		<row><td>2232</td><td>##IDS_ERROR_2232##</td></row>
		<row><td>2233</td><td>##IDS_ERROR_2233##</td></row>
		<row><td>2234</td><td>##IDS_ERROR_2234##</td></row>
		<row><td>2235</td><td>##IDS_ERROR_2235##</td></row>
		<row><td>2236</td><td>##IDS_ERROR_2236##</td></row>
		<row><td>2237</td><td>##IDS_ERROR_2237##</td></row>
		<row><td>2238</td><td>##IDS_ERROR_2238##</td></row>
		<row><td>2239</td><td>##IDS_ERROR_2239##</td></row>
		<row><td>2240</td><td>##IDS_ERROR_2240##</td></row>
		<row><td>2241</td><td>##IDS_ERROR_2241##</td></row>
		<row><td>2242</td><td>##IDS_ERROR_2242##</td></row>
		<row><td>2243</td><td>##IDS_ERROR_2243##</td></row>
		<row><td>2244</td><td>##IDS_ERROR_2244##</td></row>
		<row><td>2245</td><td>##IDS_ERROR_2245##</td></row>
		<row><td>2246</td><td>##IDS_ERROR_2246##</td></row>
		<row><td>2247</td><td>##IDS_ERROR_2247##</td></row>
		<row><td>2248</td><td>##IDS_ERROR_2248##</td></row>
		<row><td>2249</td><td>##IDS_ERROR_2249##</td></row>
		<row><td>2250</td><td>##IDS_ERROR_2250##</td></row>
		<row><td>2251</td><td>##IDS_ERROR_2251##</td></row>
		<row><td>2252</td><td>##IDS_ERROR_2252##</td></row>
		<row><td>2253</td><td>##IDS_ERROR_2253##</td></row>
		<row><td>2254</td><td>##IDS_ERROR_2254##</td></row>
		<row><td>2255</td><td>##IDS_ERROR_2255##</td></row>
		<row><td>2256</td><td>##IDS_ERROR_2256##</td></row>
		<row><td>2257</td><td>##IDS_ERROR_2257##</td></row>
		<row><td>2258</td><td>##IDS_ERROR_2258##</td></row>
		<row><td>2259</td><td>##IDS_ERROR_2259##</td></row>
		<row><td>2260</td><td>##IDS_ERROR_2260##</td></row>
		<row><td>2261</td><td>##IDS_ERROR_2261##</td></row>
		<row><td>2262</td><td>##IDS_ERROR_2262##</td></row>
		<row><td>2263</td><td>##IDS_ERROR_2263##</td></row>
		<row><td>2264</td><td>##IDS_ERROR_2264##</td></row>
		<row><td>2265</td><td>##IDS_ERROR_2265##</td></row>
		<row><td>2266</td><td>##IDS_ERROR_2266##</td></row>
		<row><td>2267</td><td>##IDS_ERROR_2267##</td></row>
		<row><td>2268</td><td>##IDS_ERROR_2268##</td></row>
		<row><td>2269</td><td>##IDS_ERROR_2269##</td></row>
		<row><td>2270</td><td>##IDS_ERROR_2270##</td></row>
		<row><td>2271</td><td>##IDS_ERROR_2271##</td></row>
		<row><td>2272</td><td>##IDS_ERROR_2272##</td></row>
		<row><td>2273</td><td>##IDS_ERROR_2273##</td></row>
		<row><td>2274</td><td>##IDS_ERROR_2274##</td></row>
		<row><td>2275</td><td>##IDS_ERROR_2275##</td></row>
		<row><td>2276</td><td>##IDS_ERROR_2276##</td></row>
		<row><td>2277</td><td>##IDS_ERROR_2277##</td></row>
		<row><td>2278</td><td>##IDS_ERROR_2278##</td></row>
		<row><td>2279</td><td>##IDS_ERROR_2279##</td></row>
		<row><td>2280</td><td>##IDS_ERROR_2280##</td></row>
		<row><td>2281</td><td>##IDS_ERROR_2281##</td></row>
		<row><td>2282</td><td>##IDS_ERROR_2282##</td></row>
		<row><td>23</td><td>##IDS_ERROR_121##</td></row>
		<row><td>2302</td><td>##IDS_ERROR_2302##</td></row>
		<row><td>2303</td><td>##IDS_ERROR_2303##</td></row>
		<row><td>2304</td><td>##IDS_ERROR_2304##</td></row>
		<row><td>2305</td><td>##IDS_ERROR_2305##</td></row>
		<row><td>2306</td><td>##IDS_ERROR_2306##</td></row>
		<row><td>2307</td><td>##IDS_ERROR_2307##</td></row>
		<row><td>2308</td><td>##IDS_ERROR_2308##</td></row>
		<row><td>2309</td><td>##IDS_ERROR_2309##</td></row>
		<row><td>2310</td><td>##IDS_ERROR_2310##</td></row>
		<row><td>2315</td><td>##IDS_ERROR_2315##</td></row>
		<row><td>2318</td><td>##IDS_ERROR_2318##</td></row>
		<row><td>2319</td><td>##IDS_ERROR_2319##</td></row>
		<row><td>2320</td><td>##IDS_ERROR_2320##</td></row>
		<row><td>2321</td><td>##IDS_ERROR_2321##</td></row>
		<row><td>2322</td><td>##IDS_ERROR_2322##</td></row>
		<row><td>2323</td><td>##IDS_ERROR_2323##</td></row>
		<row><td>2324</td><td>##IDS_ERROR_2324##</td></row>
		<row><td>2325</td><td>##IDS_ERROR_2325##</td></row>
		<row><td>2326</td><td>##IDS_ERROR_2326##</td></row>
		<row><td>2327</td><td>##IDS_ERROR_2327##</td></row>
		<row><td>2328</td><td>##IDS_ERROR_2328##</td></row>
		<row><td>2329</td><td>##IDS_ERROR_2329##</td></row>
		<row><td>2330</td><td>##IDS_ERROR_2330##</td></row>
		<row><td>2331</td><td>##IDS_ERROR_2331##</td></row>
		<row><td>2332</td><td>##IDS_ERROR_2332##</td></row>
		<row><td>2333</td><td>##IDS_ERROR_2333##</td></row>
		<row><td>2334</td><td>##IDS_ERROR_2334##</td></row>
		<row><td>2335</td><td>##IDS_ERROR_2335##</td></row>
		<row><td>2336</td><td>##IDS_ERROR_2336##</td></row>
		<row><td>2337</td><td>##IDS_ERROR_2337##</td></row>
		<row><td>2338</td><td>##IDS_ERROR_2338##</td></row>
		<row><td>2339</td><td>##IDS_ERROR_2339##</td></row>
		<row><td>2340</td><td>##IDS_ERROR_2340##</td></row>
		<row><td>2341</td><td>##IDS_ERROR_2341##</td></row>
		<row><td>2342</td><td>##IDS_ERROR_2342##</td></row>
		<row><td>2343</td><td>##IDS_ERROR_2343##</td></row>
		<row><td>2344</td><td>##IDS_ERROR_2344##</td></row>
		<row><td>2345</td><td>##IDS_ERROR_2345##</td></row>
		<row><td>2347</td><td>##IDS_ERROR_2347##</td></row>
		<row><td>2348</td><td>##IDS_ERROR_2348##</td></row>
		<row><td>2349</td><td>##IDS_ERROR_2349##</td></row>
		<row><td>2350</td><td>##IDS_ERROR_2350##</td></row>
		<row><td>2351</td><td>##IDS_ERROR_2351##</td></row>
		<row><td>2352</td><td>##IDS_ERROR_2352##</td></row>
		<row><td>2353</td><td>##IDS_ERROR_2353##</td></row>
		<row><td>2354</td><td>##IDS_ERROR_2354##</td></row>
		<row><td>2355</td><td>##IDS_ERROR_2355##</td></row>
		<row><td>2356</td><td>##IDS_ERROR_2356##</td></row>
		<row><td>2357</td><td>##IDS_ERROR_2357##</td></row>
		<row><td>2358</td><td>##IDS_ERROR_2358##</td></row>
		<row><td>2359</td><td>##IDS_ERROR_2359##</td></row>
		<row><td>2360</td><td>##IDS_ERROR_2360##</td></row>
		<row><td>2361</td><td>##IDS_ERROR_2361##</td></row>
		<row><td>2362</td><td>##IDS_ERROR_2362##</td></row>
		<row><td>2363</td><td>##IDS_ERROR_2363##</td></row>
		<row><td>2364</td><td>##IDS_ERROR_2364##</td></row>
		<row><td>2365</td><td>##IDS_ERROR_2365##</td></row>
		<row><td>2366</td><td>##IDS_ERROR_2366##</td></row>
		<row><td>2367</td><td>##IDS_ERROR_2367##</td></row>
		<row><td>2368</td><td>##IDS_ERROR_2368##</td></row>
		<row><td>2370</td><td>##IDS_ERROR_2370##</td></row>
		<row><td>2371</td><td>##IDS_ERROR_2371##</td></row>
		<row><td>2372</td><td>##IDS_ERROR_2372##</td></row>
		<row><td>2373</td><td>##IDS_ERROR_2373##</td></row>
		<row><td>2374</td><td>##IDS_ERROR_2374##</td></row>
		<row><td>2375</td><td>##IDS_ERROR_2375##</td></row>
		<row><td>2376</td><td>##IDS_ERROR_2376##</td></row>
		<row><td>2379</td><td>##IDS_ERROR_2379##</td></row>
		<row><td>2380</td><td>##IDS_ERROR_2380##</td></row>
		<row><td>2381</td><td>##IDS_ERROR_2381##</td></row>
		<row><td>2382</td><td>##IDS_ERROR_2382##</td></row>
		<row><td>2401</td><td>##IDS_ERROR_2401##</td></row>
		<row><td>2402</td><td>##IDS_ERROR_2402##</td></row>
		<row><td>2501</td><td>##IDS_ERROR_2501##</td></row>
		<row><td>2502</td><td>##IDS_ERROR_2502##</td></row>
		<row><td>2503</td><td>##IDS_ERROR_2503##</td></row>
		<row><td>2601</td><td>##IDS_ERROR_2601##</td></row>
		<row><td>2602</td><td>##IDS_ERROR_2602##</td></row>
		<row><td>2603</td><td>##IDS_ERROR_2603##</td></row>
		<row><td>2604</td><td>##IDS_ERROR_2604##</td></row>
		<row><td>2605</td><td>##IDS_ERROR_2605##</td></row>
		<row><td>2606</td><td>##IDS_ERROR_2606##</td></row>
		<row><td>2607</td><td>##IDS_ERROR_2607##</td></row>
		<row><td>2608</td><td>##IDS_ERROR_2608##</td></row>
		<row><td>2609</td><td>##IDS_ERROR_2609##</td></row>
		<row><td>2611</td><td>##IDS_ERROR_2611##</td></row>
		<row><td>2612</td><td>##IDS_ERROR_2612##</td></row>
		<row><td>2613</td><td>##IDS_ERROR_2613##</td></row>
		<row><td>2614</td><td>##IDS_ERROR_2614##</td></row>
		<row><td>2615</td><td>##IDS_ERROR_2615##</td></row>
		<row><td>2616</td><td>##IDS_ERROR_2616##</td></row>
		<row><td>2617</td><td>##IDS_ERROR_2617##</td></row>
		<row><td>2618</td><td>##IDS_ERROR_2618##</td></row>
		<row><td>2619</td><td>##IDS_ERROR_2619##</td></row>
		<row><td>2620</td><td>##IDS_ERROR_2620##</td></row>
		<row><td>2621</td><td>##IDS_ERROR_2621##</td></row>
		<row><td>2701</td><td>##IDS_ERROR_2701##</td></row>
		<row><td>2702</td><td>##IDS_ERROR_2702##</td></row>
		<row><td>2703</td><td>##IDS_ERROR_2703##</td></row>
		<row><td>2704</td><td>##IDS_ERROR_2704##</td></row>
		<row><td>2705</td><td>##IDS_ERROR_2705##</td></row>
		<row><td>2706</td><td>##IDS_ERROR_2706##</td></row>
		<row><td>2707</td><td>##IDS_ERROR_2707##</td></row>
		<row><td>2708</td><td>##IDS_ERROR_2708##</td></row>
		<row><td>2709</td><td>##IDS_ERROR_2709##</td></row>
		<row><td>2710</td><td>##IDS_ERROR_2710##</td></row>
		<row><td>2711</td><td>##IDS_ERROR_2711##</td></row>
		<row><td>2712</td><td>##IDS_ERROR_2712##</td></row>
		<row><td>2713</td><td>##IDS_ERROR_2713##</td></row>
		<row><td>2714</td><td>##IDS_ERROR_2714##</td></row>
		<row><td>2715</td><td>##IDS_ERROR_2715##</td></row>
		<row><td>2716</td><td>##IDS_ERROR_2716##</td></row>
		<row><td>2717</td><td>##IDS_ERROR_2717##</td></row>
		<row><td>2718</td><td>##IDS_ERROR_2718##</td></row>
		<row><td>2719</td><td>##IDS_ERROR_2719##</td></row>
		<row><td>2720</td><td>##IDS_ERROR_2720##</td></row>
		<row><td>2721</td><td>##IDS_ERROR_2721##</td></row>
		<row><td>2722</td><td>##IDS_ERROR_2722##</td></row>
		<row><td>2723</td><td>##IDS_ERROR_2723##</td></row>
		<row><td>2724</td><td>##IDS_ERROR_2724##</td></row>
		<row><td>2725</td><td>##IDS_ERROR_2725##</td></row>
		<row><td>2726</td><td>##IDS_ERROR_2726##</td></row>
		<row><td>2727</td><td>##IDS_ERROR_2727##</td></row>
		<row><td>2728</td><td>##IDS_ERROR_2728##</td></row>
		<row><td>2729</td><td>##IDS_ERROR_2729##</td></row>
		<row><td>2730</td><td>##IDS_ERROR_2730##</td></row>
		<row><td>2731</td><td>##IDS_ERROR_2731##</td></row>
		<row><td>2732</td><td>##IDS_ERROR_2732##</td></row>
		<row><td>2733</td><td>##IDS_ERROR_2733##</td></row>
		<row><td>2734</td><td>##IDS_ERROR_2734##</td></row>
		<row><td>2735</td><td>##IDS_ERROR_2735##</td></row>
		<row><td>2736</td><td>##IDS_ERROR_2736##</td></row>
		<row><td>2737</td><td>##IDS_ERROR_2737##</td></row>
		<row><td>2738</td><td>##IDS_ERROR_2738##</td></row>
		<row><td>2739</td><td>##IDS_ERROR_2739##</td></row>
		<row><td>2740</td><td>##IDS_ERROR_2740##</td></row>
		<row><td>2741</td><td>##IDS_ERROR_2741##</td></row>
		<row><td>2742</td><td>##IDS_ERROR_2742##</td></row>
		<row><td>2743</td><td>##IDS_ERROR_2743##</td></row>
		<row><td>2744</td><td>##IDS_ERROR_2744##</td></row>
		<row><td>2745</td><td>##IDS_ERROR_2745##</td></row>
		<row><td>2746</td><td>##IDS_ERROR_2746##</td></row>
		<row><td>2747</td><td>##IDS_ERROR_2747##</td></row>
		<row><td>2748</td><td>##IDS_ERROR_2748##</td></row>
		<row><td>2749</td><td>##IDS_ERROR_2749##</td></row>
		<row><td>2750</td><td>##IDS_ERROR_2750##</td></row>
		<row><td>27500</td><td>##IDS_ERROR_130##</td></row>
		<row><td>27501</td><td>##IDS_ERROR_131##</td></row>
		<row><td>27502</td><td>##IDS_ERROR_27502##</td></row>
		<row><td>27503</td><td>##IDS_ERROR_27503##</td></row>
		<row><td>27504</td><td>##IDS_ERROR_27504##</td></row>
		<row><td>27505</td><td>##IDS_ERROR_27505##</td></row>
		<row><td>27506</td><td>##IDS_ERROR_27506##</td></row>
		<row><td>27507</td><td>##IDS_ERROR_27507##</td></row>
		<row><td>27508</td><td>##IDS_ERROR_27508##</td></row>
		<row><td>27509</td><td>##IDS_ERROR_27509##</td></row>
		<row><td>2751</td><td>##IDS_ERROR_2751##</td></row>
		<row><td>27510</td><td>##IDS_ERROR_27510##</td></row>
		<row><td>27511</td><td>##IDS_ERROR_27511##</td></row>
		<row><td>27512</td><td>##IDS_ERROR_27512##</td></row>
		<row><td>27513</td><td>##IDS_ERROR_27513##</td></row>
		<row><td>27514</td><td>##IDS_ERROR_27514##</td></row>
		<row><td>27515</td><td>##IDS_ERROR_27515##</td></row>
		<row><td>27516</td><td>##IDS_ERROR_27516##</td></row>
		<row><td>27517</td><td>##IDS_ERROR_27517##</td></row>
		<row><td>27518</td><td>##IDS_ERROR_27518##</td></row>
		<row><td>27519</td><td>##IDS_ERROR_27519##</td></row>
		<row><td>2752</td><td>##IDS_ERROR_2752##</td></row>
		<row><td>27520</td><td>##IDS_ERROR_27520##</td></row>
		<row><td>27521</td><td>##IDS_ERROR_27521##</td></row>
		<row><td>27522</td><td>##IDS_ERROR_27522##</td></row>
		<row><td>27523</td><td>##IDS_ERROR_27523##</td></row>
		<row><td>27524</td><td>##IDS_ERROR_27524##</td></row>
		<row><td>27525</td><td>##IDS_ERROR_27525##</td></row>
		<row><td>27526</td><td>##IDS_ERROR_27526##</td></row>
		<row><td>27527</td><td>##IDS_ERROR_27527##</td></row>
		<row><td>27528</td><td>##IDS_ERROR_27528##</td></row>
		<row><td>27529</td><td>##IDS_ERROR_27529##</td></row>
		<row><td>2753</td><td>##IDS_ERROR_2753##</td></row>
		<row><td>27530</td><td>##IDS_ERROR_27530##</td></row>
		<row><td>27531</td><td>##IDS_ERROR_27531##</td></row>
		<row><td>27532</td><td>##IDS_ERROR_27532##</td></row>
		<row><td>27533</td><td>##IDS_ERROR_27533##</td></row>
		<row><td>27534</td><td>##IDS_ERROR_27534##</td></row>
		<row><td>27535</td><td>##IDS_ERROR_27535##</td></row>
		<row><td>27536</td><td>##IDS_ERROR_27536##</td></row>
		<row><td>27537</td><td>##IDS_ERROR_27537##</td></row>
		<row><td>27538</td><td>##IDS_ERROR_27538##</td></row>
		<row><td>27539</td><td>##IDS_ERROR_27539##</td></row>
		<row><td>2754</td><td>##IDS_ERROR_2754##</td></row>
		<row><td>27540</td><td>##IDS_ERROR_27540##</td></row>
		<row><td>27541</td><td>##IDS_ERROR_27541##</td></row>
		<row><td>27542</td><td>##IDS_ERROR_27542##</td></row>
		<row><td>27543</td><td>##IDS_ERROR_27543##</td></row>
		<row><td>27544</td><td>##IDS_ERROR_27544##</td></row>
		<row><td>27545</td><td>##IDS_ERROR_27545##</td></row>
		<row><td>27546</td><td>##IDS_ERROR_27546##</td></row>
		<row><td>27547</td><td>##IDS_ERROR_27547##</td></row>
		<row><td>27548</td><td>##IDS_ERROR_27548##</td></row>
		<row><td>27549</td><td>##IDS_ERROR_27549##</td></row>
		<row><td>2755</td><td>##IDS_ERROR_2755##</td></row>
		<row><td>27550</td><td>##IDS_ERROR_27550##</td></row>
		<row><td>27551</td><td>##IDS_ERROR_27551##</td></row>
		<row><td>27552</td><td>##IDS_ERROR_27552##</td></row>
		<row><td>27553</td><td>##IDS_ERROR_27553##</td></row>
		<row><td>27554</td><td>##IDS_ERROR_27554##</td></row>
		<row><td>27555</td><td>##IDS_ERROR_27555##</td></row>
		<row><td>2756</td><td>##IDS_ERROR_2756##</td></row>
		<row><td>2757</td><td>##IDS_ERROR_2757##</td></row>
		<row><td>2758</td><td>##IDS_ERROR_2758##</td></row>
		<row><td>2759</td><td>##IDS_ERROR_2759##</td></row>
		<row><td>2760</td><td>##IDS_ERROR_2760##</td></row>
		<row><td>2761</td><td>##IDS_ERROR_2761##</td></row>
		<row><td>2762</td><td>##IDS_ERROR_2762##</td></row>
		<row><td>2763</td><td>##IDS_ERROR_2763##</td></row>
		<row><td>2765</td><td>##IDS_ERROR_2765##</td></row>
		<row><td>2766</td><td>##IDS_ERROR_2766##</td></row>
		<row><td>2767</td><td>##IDS_ERROR_2767##</td></row>
		<row><td>2768</td><td>##IDS_ERROR_2768##</td></row>
		<row><td>2769</td><td>##IDS_ERROR_2769##</td></row>
		<row><td>2770</td><td>##IDS_ERROR_2770##</td></row>
		<row><td>2771</td><td>##IDS_ERROR_2771##</td></row>
		<row><td>2772</td><td>##IDS_ERROR_2772##</td></row>
		<row><td>2801</td><td>##IDS_ERROR_2801##</td></row>
		<row><td>2802</td><td>##IDS_ERROR_2802##</td></row>
		<row><td>2803</td><td>##IDS_ERROR_2803##</td></row>
		<row><td>2804</td><td>##IDS_ERROR_2804##</td></row>
		<row><td>2806</td><td>##IDS_ERROR_2806##</td></row>
		<row><td>2807</td><td>##IDS_ERROR_2807##</td></row>
		<row><td>2808</td><td>##IDS_ERROR_2808##</td></row>
		<row><td>2809</td><td>##IDS_ERROR_2809##</td></row>
		<row><td>2810</td><td>##IDS_ERROR_2810##</td></row>
		<row><td>2811</td><td>##IDS_ERROR_2811##</td></row>
		<row><td>2812</td><td>##IDS_ERROR_2812##</td></row>
		<row><td>2813</td><td>##IDS_ERROR_2813##</td></row>
		<row><td>2814</td><td>##IDS_ERROR_2814##</td></row>
		<row><td>2815</td><td>##IDS_ERROR_2815##</td></row>
		<row><td>2816</td><td>##IDS_ERROR_2816##</td></row>
		<row><td>2817</td><td>##IDS_ERROR_2817##</td></row>
		<row><td>2818</td><td>##IDS_ERROR_2818##</td></row>
		<row><td>2819</td><td>##IDS_ERROR_2819##</td></row>
		<row><td>2820</td><td>##IDS_ERROR_2820##</td></row>
		<row><td>2821</td><td>##IDS_ERROR_2821##</td></row>
		<row><td>2822</td><td>##IDS_ERROR_2822##</td></row>
		<row><td>2823</td><td>##IDS_ERROR_2823##</td></row>
		<row><td>2824</td><td>##IDS_ERROR_2824##</td></row>
		<row><td>2825</td><td>##IDS_ERROR_2825##</td></row>
		<row><td>2826</td><td>##IDS_ERROR_2826##</td></row>
		<row><td>2827</td><td>##IDS_ERROR_2827##</td></row>
		<row><td>2828</td><td>##IDS_ERROR_2828##</td></row>
		<row><td>2829</td><td>##IDS_ERROR_2829##</td></row>
		<row><td>2830</td><td>##IDS_ERROR_2830##</td></row>
		<row><td>2831</td><td>##IDS_ERROR_2831##</td></row>
		<row><td>2832</td><td>##IDS_ERROR_2832##</td></row>
		<row><td>2833</td><td>##IDS_ERROR_2833##</td></row>
		<row><td>2834</td><td>##IDS_ERROR_2834##</td></row>
		<row><td>2835</td><td>##IDS_ERROR_2835##</td></row>
		<row><td>2836</td><td>##IDS_ERROR_2836##</td></row>
		<row><td>2837</td><td>##IDS_ERROR_2837##</td></row>
		<row><td>2838</td><td>##IDS_ERROR_2838##</td></row>
		<row><td>2839</td><td>##IDS_ERROR_2839##</td></row>
		<row><td>2840</td><td>##IDS_ERROR_2840##</td></row>
		<row><td>2841</td><td>##IDS_ERROR_2841##</td></row>
		<row><td>2842</td><td>##IDS_ERROR_2842##</td></row>
		<row><td>2843</td><td>##IDS_ERROR_2843##</td></row>
		<row><td>2844</td><td>##IDS_ERROR_2844##</td></row>
		<row><td>2845</td><td>##IDS_ERROR_2845##</td></row>
		<row><td>2846</td><td>##IDS_ERROR_2846##</td></row>
		<row><td>2847</td><td>##IDS_ERROR_2847##</td></row>
		<row><td>2848</td><td>##IDS_ERROR_2848##</td></row>
		<row><td>2849</td><td>##IDS_ERROR_2849##</td></row>
		<row><td>2850</td><td>##IDS_ERROR_2850##</td></row>
		<row><td>2851</td><td>##IDS_ERROR_2851##</td></row>
		<row><td>2852</td><td>##IDS_ERROR_2852##</td></row>
		<row><td>2853</td><td>##IDS_ERROR_2853##</td></row>
		<row><td>2854</td><td>##IDS_ERROR_2854##</td></row>
		<row><td>2855</td><td>##IDS_ERROR_2855##</td></row>
		<row><td>2856</td><td>##IDS_ERROR_2856##</td></row>
		<row><td>2857</td><td>##IDS_ERROR_2857##</td></row>
		<row><td>2858</td><td>##IDS_ERROR_2858##</td></row>
		<row><td>2859</td><td>##IDS_ERROR_2859##</td></row>
		<row><td>2860</td><td>##IDS_ERROR_2860##</td></row>
		<row><td>2861</td><td>##IDS_ERROR_2861##</td></row>
		<row><td>2862</td><td>##IDS_ERROR_2862##</td></row>
		<row><td>2863</td><td>##IDS_ERROR_2863##</td></row>
		<row><td>2864</td><td>##IDS_ERROR_2864##</td></row>
		<row><td>2865</td><td>##IDS_ERROR_2865##</td></row>
		<row><td>2866</td><td>##IDS_ERROR_2866##</td></row>
		<row><td>2867</td><td>##IDS_ERROR_2867##</td></row>
		<row><td>2868</td><td>##IDS_ERROR_2868##</td></row>
		<row><td>2869</td><td>##IDS_ERROR_2869##</td></row>
		<row><td>2870</td><td>##IDS_ERROR_2870##</td></row>
		<row><td>2871</td><td>##IDS_ERROR_2871##</td></row>
		<row><td>2872</td><td>##IDS_ERROR_2872##</td></row>
		<row><td>2873</td><td>##IDS_ERROR_2873##</td></row>
		<row><td>2874</td><td>##IDS_ERROR_2874##</td></row>
		<row><td>2875</td><td>##IDS_ERROR_2875##</td></row>
		<row><td>2876</td><td>##IDS_ERROR_2876##</td></row>
		<row><td>2877</td><td>##IDS_ERROR_2877##</td></row>
		<row><td>2878</td><td>##IDS_ERROR_2878##</td></row>
		<row><td>2879</td><td>##IDS_ERROR_2879##</td></row>
		<row><td>2880</td><td>##IDS_ERROR_2880##</td></row>
		<row><td>2881</td><td>##IDS_ERROR_2881##</td></row>
		<row><td>2882</td><td>##IDS_ERROR_2882##</td></row>
		<row><td>2883</td><td>##IDS_ERROR_2883##</td></row>
		<row><td>2884</td><td>##IDS_ERROR_2884##</td></row>
		<row><td>2885</td><td>##IDS_ERROR_2885##</td></row>
		<row><td>2886</td><td>##IDS_ERROR_2886##</td></row>
		<row><td>2887</td><td>##IDS_ERROR_2887##</td></row>
		<row><td>2888</td><td>##IDS_ERROR_2888##</td></row>
		<row><td>2889</td><td>##IDS_ERROR_2889##</td></row>
		<row><td>2890</td><td>##IDS_ERROR_2890##</td></row>
		<row><td>2891</td><td>##IDS_ERROR_2891##</td></row>
		<row><td>2892</td><td>##IDS_ERROR_2892##</td></row>
		<row><td>2893</td><td>##IDS_ERROR_2893##</td></row>
		<row><td>2894</td><td>##IDS_ERROR_2894##</td></row>
		<row><td>2895</td><td>##IDS_ERROR_2895##</td></row>
		<row><td>2896</td><td>##IDS_ERROR_2896##</td></row>
		<row><td>2897</td><td>##IDS_ERROR_2897##</td></row>
		<row><td>2898</td><td>##IDS_ERROR_2898##</td></row>
		<row><td>2899</td><td>##IDS_ERROR_2899##</td></row>
		<row><td>2901</td><td>##IDS_ERROR_2901##</td></row>
		<row><td>2902</td><td>##IDS_ERROR_2902##</td></row>
		<row><td>2903</td><td>##IDS_ERROR_2903##</td></row>
		<row><td>2904</td><td>##IDS_ERROR_2904##</td></row>
		<row><td>2905</td><td>##IDS_ERROR_2905##</td></row>
		<row><td>2906</td><td>##IDS_ERROR_2906##</td></row>
		<row><td>2907</td><td>##IDS_ERROR_2907##</td></row>
		<row><td>2908</td><td>##IDS_ERROR_2908##</td></row>
		<row><td>2909</td><td>##IDS_ERROR_2909##</td></row>
		<row><td>2910</td><td>##IDS_ERROR_2910##</td></row>
		<row><td>2911</td><td>##IDS_ERROR_2911##</td></row>
		<row><td>2912</td><td>##IDS_ERROR_2912##</td></row>
		<row><td>2919</td><td>##IDS_ERROR_2919##</td></row>
		<row><td>2920</td><td>##IDS_ERROR_2920##</td></row>
		<row><td>2924</td><td>##IDS_ERROR_2924##</td></row>
		<row><td>2927</td><td>##IDS_ERROR_2927##</td></row>
		<row><td>2928</td><td>##IDS_ERROR_2928##</td></row>
		<row><td>2929</td><td>##IDS_ERROR_2929##</td></row>
		<row><td>2932</td><td>##IDS_ERROR_2932##</td></row>
		<row><td>2933</td><td>##IDS_ERROR_2933##</td></row>
		<row><td>2934</td><td>##IDS_ERROR_2934##</td></row>
		<row><td>2935</td><td>##IDS_ERROR_2935##</td></row>
		<row><td>2936</td><td>##IDS_ERROR_2936##</td></row>
		<row><td>2937</td><td>##IDS_ERROR_2937##</td></row>
		<row><td>2938</td><td>##IDS_ERROR_2938##</td></row>
		<row><td>2939</td><td>##IDS_ERROR_2939##</td></row>
		<row><td>2940</td><td>##IDS_ERROR_2940##</td></row>
		<row><td>2941</td><td>##IDS_ERROR_2941##</td></row>
		<row><td>2942</td><td>##IDS_ERROR_2942##</td></row>
		<row><td>2943</td><td>##IDS_ERROR_2943##</td></row>
		<row><td>2944</td><td>##IDS_ERROR_2944##</td></row>
		<row><td>2945</td><td>##IDS_ERROR_2945##</td></row>
		<row><td>3001</td><td>##IDS_ERROR_3001##</td></row>
		<row><td>3002</td><td>##IDS_ERROR_3002##</td></row>
		<row><td>32</td><td>##IDS_ERROR_20##</td></row>
		<row><td>33</td><td>##IDS_ERROR_21##</td></row>
		<row><td>4</td><td>##IDS_ERROR_3##</td></row>
		<row><td>5</td><td>##IDS_ERROR_4##</td></row>
		<row><td>7</td><td>##IDS_ERROR_5##</td></row>
		<row><td>8</td><td>##IDS_ERROR_6##</td></row>
		<row><td>9</td><td>##IDS_ERROR_7##</td></row>
	</table>

	<table name="EventMapping">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col def="s50">Attribute</col>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>SelectionDescription</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Location</td><td>SelectionPath</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Size</td><td>SelectionSize</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>ActionData</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>AdminInstallFinalize</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>InstallFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>MoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>SetProgress</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>UnmoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteIniValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
	</table>

	<table name="Extension">
		<col key="yes" def="s255">Extension</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_</col>
		<col def="S64">MIME_</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="Feature">
		<col key="yes" def="s38">Feature</col>
		<col def="S38">Feature_Parent</col>
		<col def="L64">Title</col>
		<col def="L255">Description</col>
		<col def="I2">Display</col>
		<col def="i2">Level</col>
		<col def="S72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISFeatureCabName</col>
		<col def="S255">ISProFeatureName</col>
		<row><td>AlwaysInstall</td><td/><td>##DN_AlwaysInstall##</td><td>Enter the description for this feature here.</td><td>0</td><td>1</td><td>INSTALLDIR</td><td>16</td><td/><td>Enter comments regarding this feature here.</td><td/><td/></row>
	</table>

	<table name="FeatureComponents">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AnalysisServices.AdomdClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>Microsoft.AnalysisServices.SPClient.Interfaces.dll</td></row>
		<row><td>AlwaysInstall</td><td>POSSTD.exe</td></row>
		<row><td>AlwaysInstall</td><td>POSSTD.vshost.exe</td></row>
	</table>

	<table name="File">
		<col key="yes" def="s72">File</col>
		<col def="s72">Component_</col>
		<col def="s255">FileName</col>
		<col def="i4">FileSize</col>
		<col def="S72">Version</col>
		<col def="S20">Language</col>
		<col def="I2">Attributes</col>
		<col def="i2">Sequence</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I4">ISAttributes</col>
		<col def="S72">ISComponentSubFolder_</col>
		<row><td>microsoft.analysisservices.a</td><td>Microsoft.AnalysisServices.AdomdClient.dll</td><td>MICROS~1.DLL|Microsoft.AnalysisServices.AdomdClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\Microsoft.AnalysisServices.AdomdClient.dll</td><td>1</td><td/></row>
		<row><td>microsoft.analysisservices.s</td><td>Microsoft.AnalysisServices.SPClient.Interfaces.dll</td><td>MICROS~1.DLL|Microsoft.AnalysisServices.SPClient.Interfaces.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\Microsoft.AnalysisServices.SPClient.Interfaces.dll</td><td>1</td><td/></row>
		<row><td>posstd.application</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD~1.APP|POSSTD.application</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.application</td><td>1</td><td/></row>
		<row><td>posstd.exe</td><td>POSSTD.exe</td><td>POSSTD.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe</td><td>1</td><td/></row>
		<row><td>posstd.exe.config</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD~1.CON|POSSTD.exe.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe.config</td><td>1</td><td/></row>
		<row><td>posstd.exe.manifest</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD~1.MAN|POSSTD.exe.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe.manifest</td><td>1</td><td/></row>
		<row><td>posstd.pdb</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.pdb</td><td>1</td><td/></row>
		<row><td>posstd.vshost.application</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD~1.APP|POSSTD.vshost.application</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.vshost.application</td><td>1</td><td/></row>
		<row><td>posstd.vshost.exe</td><td>POSSTD.vshost.exe</td><td>POSSTD~1.EXE|POSSTD.vshost.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.vshost.exe</td><td>1</td><td/></row>
		<row><td>posstd.vshost.exe.config</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD~1.CON|POSSTD.vshost.exe.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.vshost.exe.config</td><td>1</td><td/></row>
		<row><td>posstd.vshost.exe.manifest</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD~1.MAN|POSSTD.vshost.exe.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.vshost.exe.manifest</td><td>1</td><td/></row>
		<row><td>posstd.xml</td><td>ISX_DEFAULTCOMPONENT</td><td>POSSTD.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.xml</td><td>1</td><td/></row>
	</table>

	<table name="FileSFPCatalog">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s255">SFPCatalog_</col>
	</table>

	<table name="Font">
		<col key="yes" def="s72">File_</col>
		<col def="S128">FontTitle</col>
	</table>

	<table name="ISAssistantTag">
		<col key="yes" def="s72">Tag</col>
		<col def="S255">Data</col>
		<row><td>PROJECT_ASSISTANT_DEFAULT_FEATURE</td><td>AlwaysInstall</td></row>
		<row><td>PROJECT_ASSISTANT_FEATURES</td><td>NonSelectable</td></row>
	</table>

	<table name="ISBillBoard">
		<col key="yes" def="s72">ISBillboard</col>
		<col def="i2">Duration</col>
		<col def="i2">Origin</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Effect</col>
		<col def="i2">Sequence</col>
		<col def="i2">Target</col>
		<col def="S72">Color</col>
		<col def="S72">Style</col>
		<col def="S72">Font</col>
		<col def="L72">Title</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackage">
		<col key="yes" def="s72">Package</col>
		<col def="S255">SourcePath</col>
		<col def="S72">ProductCode</col>
		<col def="i2">Order</col>
		<col def="i4">Options</col>
		<col def="S255">InstallCondition</col>
		<col def="S255">RemoveCondition</col>
		<col def="S0">InstallProperties</col>
		<col def="S0">RemoveProperties</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackageData">
		<col key="yes" def="s72">Package_</col>
		<col key="yes" def="s72">File</col>
		<col def="s50">FilePath</col>
		<col def="I4">Options</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISClrWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISComCatalogAttribute">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col key="yes" def="s255">ItemName</col>
		<col def="S0">ItemValue</col>
	</table>

	<table name="ISComCatalogCollection">
		<col key="yes" def="s72">ISComCatalogCollection</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s255">CollectionName</col>
	</table>

	<table name="ISComCatalogCollectionObjects">
		<col key="yes" def="s72">ISComCatalogCollection_</col>
		<col key="yes" def="s72">ISComCatalogObject_</col>
	</table>

	<table name="ISComCatalogObject">
		<col key="yes" def="s72">ISComCatalogObject</col>
		<col def="s255">DisplayName</col>
	</table>

	<table name="ISComPlusApplication">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col def="S255">ComputerName</col>
		<col def="s72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusApplicationDLL">
		<col key="yes" def="s72">ISComPlusApplicationDLL</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s0">CLSID</col>
		<col def="S0">ProgId</col>
		<col def="S0">DLL</col>
		<col def="S0">AlterDLL</col>
	</table>

	<table name="ISComPlusProxy">
		<col key="yes" def="s72">ISComPlusProxy</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="S72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusProxyDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusProxyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComPlusServerDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusServerFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComponentExtended">
		<col key="yes" def="s72">Component_</col>
		<col def="I4">OS</col>
		<col def="S0">Language</col>
		<col def="s72">FilterProperty</col>
		<col def="I4">Platforms</col>
		<col def="S0">FTPLocation</col>
		<col def="S0">HTTPLocation</col>
		<col def="S0">Miscellaneous</col>
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_0785E7B1_8B88_4BC0_9980_1887D20BD75B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AnalysisServices.AdomdClient.dll</td><td/><td/><td>_13DE6B5D_1504_4EF1_B287_4F374A70C39A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Microsoft.AnalysisServices.SPClient.Interfaces.dll</td><td/><td/><td>_9A8D0B9D_CAAB_44B9_922F_CE8A98944819_FILTER</td><td/><td/><td/><td/></row>
		<row><td>POSSTD.exe</td><td/><td/><td>_D18C5D5E_000B_4412_9D96_C32CD0647715_FILTER</td><td/><td/><td/><td/></row>
		<row><td>POSSTD.vshost.exe</td><td/><td/><td>_639618A2_8FEB_429C_BCB9_D98B31A1AF5F_FILTER</td><td/><td/><td/><td/></row>
	</table>

	<table name="ISCustomActionReference">
		<col key="yes" def="s72">Action_</col>
		<col def="S0">Description</col>
		<col def="S255">FileType</col>
		<col def="S255">ISCAReferenceFilePath</col>
	</table>

	<table name="ISDIMDependency">
		<col key="yes" def="s72">ISDIMReference_</col>
		<col def="s255">RequiredUUID</col>
		<col def="S255">RequiredMajorVersion</col>
		<col def="S255">RequiredMinorVersion</col>
		<col def="S255">RequiredBuildVersion</col>
		<col def="S255">RequiredRevisionVersion</col>
	</table>

	<table name="ISDIMReference">
		<col key="yes" def="s72">ISDIMReference</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISDIMReferenceDependencies">
		<col key="yes" def="s72">ISDIMReference_Parent</col>
		<col key="yes" def="s72">ISDIMDependency_</col>
	</table>

	<table name="ISDIMVariable">
		<col key="yes" def="s72">ISDIMVariable</col>
		<col def="s72">ISDIMReference_</col>
		<col def="s0">Name</col>
		<col def="S0">NewValue</col>
		<col def="I4">Type</col>
	</table>

	<table name="ISDLLWrapper">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s0">Source</col>
		<col def="s255">Target</col>
	</table>

	<table name="ISDRMFile">
		<col key="yes" def="s72">ISDRMFile</col>
		<col def="S72">File_</col>
		<col def="S72">ISDRMLicense_</col>
		<col def="s255">Shell</col>
	</table>

	<table name="ISDRMFileAttribute">
		<col key="yes" def="s72">ISDRMFile_</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISDRMLicense">
		<col key="yes" def="s72">ISDRMLicense</col>
		<col def="S255">Description</col>
		<col def="S50">ProjectVersion</col>
		<col def="I4">Attributes</col>
		<col def="S255">LicenseNumber</col>
		<col def="S255">RequestCode</col>
		<col def="S255">ResponseCode</col>
	</table>

	<table name="ISDependency">
		<col key="yes" def="S50">ISDependency</col>
		<col def="I2">Exclude</col>
	</table>

	<table name="ISDisk1File">
		<col key="yes" def="s72">ISDisk1File</col>
		<col def="s255">ISBuildSourcePath</col>
		<col def="I4">Disk</col>
	</table>

	<table name="ISDynamicFile">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">SourceFolder</col>
		<col def="I2">IncludeFlags</col>
		<col def="S0">IncludeFiles</col>
		<col def="S0">ExcludeFiles</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISFeatureDIMReferences">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISDIMReference_</col>
	</table>

	<table name="ISFeatureMergeModuleExcludes">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ModuleID</col>
		<col key="yes" def="i2">Language</col>
	</table>

	<table name="ISFeatureMergeModules">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
	</table>

	<table name="ISFeatureSetupPrerequisites">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISSetupPrerequisites_</col>
	</table>

	<table name="ISFileManifests">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Manifest_</col>
	</table>

	<table name="ISIISItem">
		<col key="yes" def="s72">ISIISItem</col>
		<col def="S72">ISIISItem_Parent</col>
		<col def="L255">DisplayName</col>
		<col def="i4">Type</col>
		<col def="S72">Component_</col>
	</table>

	<table name="ISIISProperty">
		<col key="yes" def="s72">ISIISProperty</col>
		<col key="yes" def="s72">ISIISItem_</col>
		<col def="S0">Schema</col>
		<col def="S255">FriendlyName</col>
		<col def="I4">MetaDataProp</col>
		<col def="I4">MetaDataType</col>
		<col def="I4">MetaDataUserType</col>
		<col def="I4">MetaDataAttributes</col>
		<col def="L0">MetaDataValue</col>
		<col def="I4">Order</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISInstallScriptAction">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s72">Source</col>
		<col def="S255">Target</col>
	</table>

	<table name="ISLanguage">
		<col key="yes" def="s50">ISLanguage</col>
		<col def="I2">Included</col>
		<row><td>1033</td><td>0</td></row>
		<row><td>1034</td><td>1</td></row>
		<row><td>1036</td><td>0</td></row>
	</table>

	<table name="ISLinkerLibrary">
		<col key="yes" def="s72">ISLinkerLibrary</col>
		<col def="s255">Library</col>
		<col def="i4">Order</col>
		<row><td>isrt.obl</td><td>isrt.obl</td><td>2</td></row>
		<row><td>iswi.obl</td><td>iswi.obl</td><td>1</td></row>
	</table>

	<table name="ISLocalControl">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="I2">X</col>
		<col def="I2">Y</col>
		<col def="I2">Width</col>
		<col def="I2">Height</col>
		<col def="S72">Binary_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISLocalDialog">
		<col key="yes" def="S50">Dialog_</col>
		<col key="yes" def="S50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="S72">TextStyle_</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLocalRadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISLogicalDisk">
		<col key="yes" def="i2">DiskId</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="ISLogicalDiskFeatures">
		<col key="yes" def="i2">ISLogicalDisk_</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col key="yes" def="S38">Feature_</col>
		<col def="i2">Sequence</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModule">
		<col key="yes" def="s255">ISMergeModule</col>
		<col key="yes" def="i2">Language</col>
		<col def="s255">Name</col>
		<col def="S255">Destination</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModuleCfgValues">
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
		<col key="yes" def="s72">ModuleConfiguration_</col>
		<col def="L0">Value</col>
		<col def="i2">Format</col>
		<col def="L255">Type</col>
		<col def="L255">ContextData</col>
		<col def="L255">DefaultValue</col>
		<col def="I2">Attributes</col>
		<col def="L255">DisplayName</col>
		<col def="L255">Description</col>
		<col def="L255">HelpLocation</col>
		<col def="L255">HelpKeyword</col>
	</table>

	<table name="ISObject">
		<col key="yes" def="s50">ObjectName</col>
		<col def="s15">Language</col>
	</table>

	<table name="ISObjectProperty">
		<col key="yes" def="S50">ObjectName</col>
		<col key="yes" def="S50">Property</col>
		<col def="S0">Value</col>
		<col def="I2">IncludeInBuild</col>
	</table>

	<table name="ISPatchConfigImage">
		<col key="yes" def="S72">PatchConfiguration_</col>
		<col key="yes" def="s72">UpgradedImage_</col>
	</table>

	<table name="ISPatchConfiguration">
		<col key="yes" def="s72">Name</col>
		<col def="i2">CanPCDiffer</col>
		<col def="i2">CanPVDiffer</col>
		<col def="i2">IncludeWholeFiles</col>
		<col def="i2">LeaveDecompressed</col>
		<col def="i2">OptimizeForSize</col>
		<col def="i2">EnablePatchCache</col>
		<col def="S0">PatchCacheDir</col>
		<col def="i4">Flags</col>
		<col def="S0">PatchGuidsToReplace</col>
		<col def="s0">TargetProductCodes</col>
		<col def="s50">PatchGuid</col>
		<col def="s0">OutputPath</col>
		<col def="i2">MinMsiVersion</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISPatchConfigurationProperty">
		<col key="yes" def="S72">ISPatchConfiguration_</col>
		<col key="yes" def="S50">Property</col>
		<col def="S50">Value</col>
	</table>

	<table name="ISPatchExternalFile">
		<col key="yes" def="s50">Name</col>
		<col key="yes" def="s13">ISUpgradedImage_</col>
		<col def="s72">FileKey</col>
		<col def="s255">FilePath</col>
	</table>

	<table name="ISPatchWholeFile">
		<col key="yes" def="s50">UpgradedImage</col>
		<col key="yes" def="s72">FileKey</col>
		<col def="S72">Component</col>
	</table>

	<table name="ISPathVariable">
		<col key="yes" def="s72">ISPathVariable</col>
		<col def="S255">Value</col>
		<col def="S255">TestValue</col>
		<col def="i4">Type</col>
		<row><td>CommonFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>ISPROJECTDIR</td><td/><td/><td>1</td></row>
		<row><td>ISProductFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectDataFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectFolder</td><td/><td/><td>1</td></row>
		<row><td>ProgramFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>SystemFolder</td><td/><td/><td>1</td></row>
		<row><td>WindowsFolder</td><td/><td/><td>1</td></row>
	</table>

	<table name="ISPowerShellWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISProductConfiguration">
		<col key="yes" def="s72">ISProductConfiguration</col>
		<col def="S255">ProductConfigurationFlags</col>
		<col def="I4">GeneratePackageCode</col>
		<row><td>Express</td><td/><td>1</td></row>
	</table>

	<table name="ISProductConfigurationInstance">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="i2">InstanceId</col>
		<col key="yes" def="s72">Property</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISProductConfigurationProperty">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Property</col>
		<col def="L255">Value</col>
	</table>

	<table name="ISRelease">
		<col key="yes" def="s72">ISRelease</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="s255">BuildLocation</col>
		<col def="s255">PackageName</col>
		<col def="i4">Type</col>
		<col def="s0">SupportedLanguagesUI</col>
		<col def="i4">MsiSourceType</col>
		<col def="i4">ReleaseType</col>
		<col def="s72">Platforms</col>
		<col def="S0">SupportedLanguagesData</col>
		<col def="s6">DefaultLanguage</col>
		<col def="i4">SupportedOSs</col>
		<col def="s50">DiskSize</col>
		<col def="i4">DiskSizeUnit</col>
		<col def="i4">DiskClusterSize</col>
		<col def="S0">ReleaseFlags</col>
		<col def="i4">DiskSpanning</col>
		<col def="S255">SynchMsi</col>
		<col def="s255">MediaLocation</col>
		<col def="S255">URLLocation</col>
		<col def="S255">DigitalURL</col>
		<col def="S255">DigitalPVK</col>
		<col def="S255">DigitalSPC</col>
		<col def="S255">Password</col>
		<col def="S255">VersionCopyright</col>
		<col def="i4">Attributes</col>
		<col def="S255">CDBrowser</col>
		<col def="S255">DotNetBuildConfiguration</col>
		<col def="S255">MsiCommandLine</col>
		<col def="I4">ISSetupPrerequisiteLocation</col>
		<row><td>CD_ROM</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>0</td><td>1034</td><td>0</td><td>2</td><td>Intel</td><td/><td>1034</td><td>0</td><td>650</td><td>0</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>Custom</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>2</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>100</td><td>0</td><td>1024</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-10</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>8.75</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-18</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>15.83</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-5</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1034</td><td>0</td><td>2</td><td>Intel</td><td/><td>1034</td><td>0</td><td>4.38</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-9</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>7.95</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>SingleImage</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>1</td><td>1034</td><td>0</td><td>1</td><td>Intel</td><td/><td>1034</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>108573</td><td/><td/><td/><td>3</td></row>
		<row><td>WebDeployment</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>4</td><td>1033</td><td>2</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>124941</td><td/><td/><td/><td>3</td></row>
	</table>

	<table name="ISReleaseASPublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="S0">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISReleaseExtended">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="I4">WebType</col>
		<col def="S255">WebURL</col>
		<col def="I4">WebCabSize</col>
		<col def="S255">OneClickCabName</col>
		<col def="S255">OneClickHtmlName</col>
		<col def="S255">WebLocalCachePath</col>
		<col def="I4">EngineLocation</col>
		<col def="S255">Win9xMsiUrl</col>
		<col def="S255">WinNTMsiUrl</col>
		<col def="I4">ISEngineLocation</col>
		<col def="S255">ISEngineURL</col>
		<col def="I4">OneClickTargetBrowser</col>
		<col def="S255">DigitalCertificateIdNS</col>
		<col def="S255">DigitalCertificateDBaseNS</col>
		<col def="S255">DigitalCertificatePasswordNS</col>
		<col def="I4">DotNetRedistLocation</col>
		<col def="S255">DotNetRedistURL</col>
		<col def="I4">DotNetVersion</col>
		<col def="S255">DotNetBaseLanguage</col>
		<col def="S0">DotNetLangaugePacks</col>
		<col def="S255">DotNetFxCmdLine</col>
		<col def="S255">DotNetLangPackCmdLine</col>
		<col def="S50">JSharpCmdLine</col>
		<col def="I4">Attributes</col>
		<col def="I4">JSharpRedistLocation</col>
		<col def="I4">MsiEngineVersion</col>
		<col def="S255">WinMsi30Url</col>
		<col def="S255">CertPassword</col>
		<row><td>CD_ROM</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>Custom</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-10</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-18</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-5</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-9</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>SingleImage</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>1</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>WebDeployment</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>setup</td><td>Default</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>2</td><td>http://www.Installengine.com/Msiengine20</td><td>http://www.Installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
	</table>

	<table name="ISReleaseProperty">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
	</table>

	<table name="ISReleasePublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="S255">Repository</col>
		<col def="S255">DisplayName</col>
		<col def="S255">Publisher</col>
		<col def="S255">Description</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISSQLConnection">
		<col key="yes" def="s72">ISSQLConnection</col>
		<col def="s255">Server</col>
		<col def="s255">Database</col>
		<col def="s255">UserName</col>
		<col def="s255">Password</col>
		<col def="s255">Authentication</col>
		<col def="i2">Attributes</col>
		<col def="i2">Order</col>
		<col def="S0">Comments</col>
		<col def="I4">CmdTimeout</col>
		<col def="S0">BatchSeparator</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
	</table>

	<table name="ISSQLConnectionDBServer">
		<col key="yes" def="s72">ISSQLConnectionDBServer</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLDBMetaData_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLConnectionScript">
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLDBMetaData">
		<col key="yes" def="s72">ISSQLDBMetaData</col>
		<col def="S0">DisplayName</col>
		<col def="S0">AdoDriverName</col>
		<col def="S0">AdoCxnDriver</col>
		<col def="S0">AdoCxnServer</col>
		<col def="S0">AdoCxnDatabase</col>
		<col def="S0">AdoCxnUserID</col>
		<col def="S0">AdoCxnPassword</col>
		<col def="S0">AdoCxnWindowsSecurity</col>
		<col def="S0">AdoCxnNetLibrary</col>
		<col def="S0">TestDatabaseCmd</col>
		<col def="S0">TestTableCmd</col>
		<col def="S0">VersionInfoCmd</col>
		<col def="S0">VersionBeginToken</col>
		<col def="S0">VersionEndToken</col>
		<col def="S0">LocalInstanceNames</col>
		<col def="S0">CreateDbCmd</col>
		<col def="S0">SwitchDbCmd</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">TestTableCmd2</col>
		<col def="S0">WinAuthentUserId</col>
		<col def="S0">DsnODBCName</col>
		<col def="S0">AdoCxnPort</col>
		<col def="S0">AdoCxnAdditional</col>
		<col def="S0">QueryDatabasesCmd</col>
		<col def="S0">CreateTableCmd</col>
		<col def="S0">InsertRecordCmd</col>
		<col def="S0">SelectTableCmd</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
		<col def="S0">ScriptVersion_ColumnType</col>
	</table>

	<table name="ISSQLRequirement">
		<col key="yes" def="s72">ISSQLRequirement</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col def="S15">MajorVersion</col>
		<col def="S25">ServicePackLevel</col>
		<col def="i4">Attributes</col>
		<col def="S72">ISSQLConnectionDBServer_</col>
	</table>

	<table name="ISSQLScriptError">
		<col key="yes" def="i4">ErrNumber</col>
		<col key="yes" def="S72">ISSQLScriptFile_</col>
		<col def="i2">ErrHandling</col>
		<col def="L255">Message</col>
		<col def="i2">Attributes</col>
	</table>

	<table name="ISSQLScriptFile">
		<col key="yes" def="s72">ISSQLScriptFile</col>
		<col def="s72">Component_</col>
		<col def="i2">Scheduling</col>
		<col def="L255">InstallText</col>
		<col def="L255">UninstallText</col>
		<col def="S0">ISBuildSourcePath</col>
		<col def="S0">Comments</col>
		<col def="i2">ErrorHandling</col>
		<col def="i2">Attributes</col>
		<col def="S255">Version</col>
		<col def="S255">Condition</col>
		<col def="S0">DisplayName</col>
	</table>

	<table name="ISSQLScriptImport">
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S255">Server</col>
		<col def="S255">Database</col>
		<col def="S255">UserName</col>
		<col def="S255">Password</col>
		<col def="i4">Authentication</col>
		<col def="S0">IncludeTables</col>
		<col def="S0">ExcludeTables</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISSQLScriptReplace">
		<col key="yes" def="s72">ISSQLScriptReplace</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S0">Search</col>
		<col def="S0">Replace</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISScriptFile">
		<col key="yes" def="s255">ISScriptFile</col>
	</table>

	<table name="ISSelfReg">
		<col key="yes" def="s72">FileKey</col>
		<col def="I2">Cost</col>
		<col def="I2">Order</col>
		<col def="S50">CmdLine</col>
	</table>

	<table name="ISSetupFile">
		<col key="yes" def="s72">ISSetupFile</col>
		<col def="S255">FileName</col>
		<col def="V0">Stream</col>
		<col def="S50">Language</col>
		<col def="I2">Splash</col>
		<col def="S0">Path</col>
	</table>

	<table name="ISSetupPrerequisites">
		<col key="yes" def="s72">ISSetupPrerequisites</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">Order</col>
		<col def="I2">ISSetupLocation</col>
		<col def="S255">ISReleaseFlags</col>
	</table>

	<table name="ISSetupType">
		<col key="yes" def="s38">ISSetupType</col>
		<col def="L255">Description</col>
		<col def="L255">Display_Name</col>
		<col def="i2">Display</col>
		<col def="S255">Comments</col>
		<row><td>Custom</td><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Custom##</td><td>3</td><td/></row>
		<row><td>Minimal</td><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Minimal##</td><td>2</td><td/></row>
		<row><td>Typical</td><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td>1</td><td/></row>
	</table>

	<table name="ISSetupTypeFeatures">
		<col key="yes" def="s38">ISSetupType_</col>
		<col key="yes" def="s38">Feature_</col>
		<row><td>Custom</td><td>AlwaysInstall</td></row>
		<row><td>Minimal</td><td>AlwaysInstall</td></row>
		<row><td>Typical</td><td>AlwaysInstall</td></row>
	</table>

	<table name="ISStorages">
		<col key="yes" def="s72">Name</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISString">
		<col key="yes" def="s255">ISString</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="S0">Value</col>
		<col def="I2">Encoded</col>
		<col def="S0">Comment</col>
		<col def="I4">TimeStamp</col>
		<row><td>COMPANY_NAME</td><td>1033</td><td>Nom de votre société</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>COMPANY_NAME</td><td>1034</td><td>Pasteleria Strindberg</td><td>0</td><td/><td>-1239084564</td></row>
		<row><td>DN_AlwaysInstall</td><td>1033</td><td>Toujours installer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>DN_AlwaysInstall</td><td>1034</td><td>Instalar siempre</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>1033</td><td>Les paramètres couleur de votre système ne sont pas adaptés à l'exécution de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>1034</td><td>La configuración de colores de su sistema no es adecuada para ejecutar [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION35</td><td>1033</td><td>Microsoft .NET Framework 3.5 needs to be installed for this installation to continue.</td><td>0</td><td/><td>1310872714</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION35</td><td>1034</td><td>Microsoft .NET Framework 3.5 needs to be installed for this installation to continue.</td><td>0</td><td/><td>1310872714</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION35</td><td>1036</td><td>Microsoft .NET Framework 3.5 needs to be installed for this installation to continue.</td><td>0</td><td/><td>1310872714</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_MSOFFICE2010</td><td>1033</td><td>Microsoft Office 2010 or greater needs to be installed for this installation to continue.</td><td>0</td><td/><td>1310874762</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_MSOFFICE2010</td><td>1034</td><td>Microsoft Office 2010 or greater needs to be installed for this installation to continue.</td><td>0</td><td/><td>1310874762</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_MSOFFICE2010</td><td>1036</td><td>Microsoft Office 2010 or greater needs to be installed for this installation to continue.</td><td>0</td><td/><td>1310874762</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>1033</td><td>Le système d'exploitation n'est pas adapté à l'exécution de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>1034</td><td>El sistema operativo no es adecuado para ejecutar [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>1033</td><td>Le processeur n'est pas adapté à l'exécution de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>1034</td><td>El procesador no es adecuado para ejecutar [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>1033</td><td>Le taux RAM n'est pas adapté à l'exécution de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>1034</td><td>La cantidad de RAM no es adecuada para ejecutar [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>1033</td><td>La résolution de l'écran n'est pas adaptée à l'exécution [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>1034</td><td>La resolución de pantalla no es adecuada para ejecutar [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>1033</td><td>Compacte</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>1034</td><td>Compacta</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>1033</td><td>Description brève</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>1034</td><td>Descripción compacta</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>1033</td><td>Installation standard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>1034</td><td>Completa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>1033</td><td>Installatio&amp;n standard</td><td>0</td><td>	</td><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>1034</td><td>Descripción completa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>1033</td><td>Personnalisée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>1034</td><td>Personalizada</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>1033</td><td>Description personnalisée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>1034</td><td>Descripción personalizada</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>1033</td><td>Description personnalisée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>1034</td><td>Descripción personalizada</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>1033</td><td>Par défaut</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>1034</td><td>Típica</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>1033</td><td>Description type</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>1034</td><td>Descripción típica</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>1033</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>1034</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>1033</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>1034</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>1033</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>1034</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>1033</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>1034</td><td>[1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>1033</td><td>Publication d'informations sur l'application</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>1034</td><td>Mostrar aplicación</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>1033</td><td>Allocation d'espace dans le registre</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>1034</td><td>Asignando espacio del registro</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>1033</td><td>Application : [1] ; Ligne de commande : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>1034</td><td>Aplicación: [1], Línea de comandos: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>1033</td><td>AppId: [1]{{, AppType: [2]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>1034</td><td>IdApl: [1]{{, Tipo de apl.: [2]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>1033</td><td>AppId: [1]{{, AppType: [2], Users: [3], RSN: [4]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>1034</td><td>IdApl: [1]{{, Tipo de apl.: [2], Usuarios: [3], RSN: [4]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>1033</td><td>Application : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>1034</td><td>Aplicación: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>1033</td><td>Liaison des exécutables</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>1034</td><td>Enlazando archivos ejecutables</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>1033</td><td>Identificateur de la classe : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>1034</td><td>Id. de clase: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>1033</td><td>Identificateur de la classe : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>1034</td><td>Id. de clase: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>1033</td><td>Identificateur du composant : [1] ; qualificateur : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>1034</td><td>Id. del componente: [1], capacitador: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>1033</td><td>Identificateur du composant : [1] ; qualificateur : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>1034</td><td>Id. del componente: [1], capacitador: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>1033</td><td>Calcul de l'espace requis</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>1034</td><td>Calculando el espacio necesario</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>1033</td><td>Calcul de l'espace requis</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>1034</td><td>Calculando el espacio necesario</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>1033</td><td>Calcul de l'espace requis</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>1034</td><td>Calculando el espacio necesario</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>1033</td><td>Type de contenu MIME : [1] ; extension : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>1034</td><td>Tipo de contenido MIME: [1], extensión: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>1033</td><td>Type de contenu MIME : [1] ; extension : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>1034</td><td>Tipo de contenido MIME: [1], extensión: [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>1033</td><td>Copie des fichiers d'installation réseau</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>1034</td><td>Copiando archivos de instalación de la red</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>1033</td><td>Copie des nouveaux fichiers</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>1034</td><td>Copiando archivos nuevos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>1033</td><td>Création des fichiers en double</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>1034</td><td>Creando archivos duplicados</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>1033</td><td>Création des dossiers</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>1034</td><td>Creando carpetas</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>1033</td><td>Création des racines virtuelles IIS en cours...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>1034</td><td>Creando raíces virtuales de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>1033</td><td>Création des raccourcis</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>1034</td><td>Creando accesos directos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>1033</td><td>Suppression des services</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>1034</td><td>Eliminando servicios</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>1033</td><td>Mise à jour des chaînes d'environnement</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>1034</td><td>Actualizando cadenas de entorno</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>1033</td><td>Évaluation des conditions de lancement</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>1034</td><td>Evaluando condiciones de inicio</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>1033</td><td>Extension : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>1034</td><td>Extensión: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>1033</td><td>Extension : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>1034</td><td>Extensión: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>1033</td><td>Composant : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>1034</td><td>Función: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>1033</td><td>Composant : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>1034</td><td>Función: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>1033</td><td>Fichier : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>1034</td><td>Archivo: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>1033</td><td>Fichier : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>1034</td><td>Archivo: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>1033</td><td>Fichier : [1],  Dépendences : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>1034</td><td>Archivo: [1],  Dependencias: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>1033</td><td>Fichier : [1] ; répertoire : [9]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>1034</td><td>Archivo: [1], directorio: [9]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>1034</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>1033</td><td>Fichier : [1] ; répertoire : [9]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>1034</td><td>Archivo: [1], directorio: [9]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>1033</td><td>Fichier : [1] ; répertoire : [9] ; taille : [6]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>1034</td><td>Archivo: [1], directorio: [9], tamaño: [6]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>1034</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>1033</td><td>Fichier : [1],  Répertoire : [9],  Taille : [6]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>1034</td><td>Archivo: [1], directorio: [9], tamaño: [6]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>1033</td><td>Fichier : [1] ; répertoire : [2] ; taille : [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>1034</td><td>Archivo: [1], directorio: [2], tamaño: [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>1033</td><td>Fichier : [1] ; répertoire : [9] ; taille : [6]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>1034</td><td>Archivo: [1], directorio: [9], tamaño: [6]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>1033</td><td>Fichier : [1] ; dossier : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>1034</td><td>Archivo: [1], carpeta: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>1033</td><td>Fichier : [1] ; dossier : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>1034</td><td>Archivo: [1], carpeta: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>1033</td><td>Fichier : [1] ; section : [2] ; clé : [3] ; valeur : [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>1034</td><td>Archivo: [1], sección: [2], clave: [3], valor: [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>1033</td><td>Fichier : [1] ; section : [2] ; clé : [3] ; valeur : [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>1034</td><td>Archivo: [1], sección: [2], clave: [3], valor: [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>1033</td><td>Dossier : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>1034</td><td>Carpeta: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>1033</td><td>Dossier : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>1034</td><td>Carpeta: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>1033</td><td>Police : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>1034</td><td>Fuente: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>1033</td><td>Police : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>1034</td><td>Fuente: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>1033</td><td>Application trouvée : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>1034</td><td>Se encontró esta aplicación: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>1033</td><td>Espace libre : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>1034</td><td>Espacio disponible: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>1033</td><td>Génération de scripts pour l'action :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>1034</td><td>Generando operaciones de secuencias de comandos para la acción:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>1033</td><td>Lecture des autorisations des objets...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>1034</td><td>Recogiendo información de permisos para los objetos…</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>1033</td><td>Application des autorisations aux objets...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>1034</td><td>Aplicando información de permisos para los objetos…</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>1033</td><td>Initialisation des répertoires ODBC</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>1034</td><td>Inicializando directorios ODBC</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>1033</td><td>Installation des composants ODBC</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>1034</td><td>Instalando componentes ODBC</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>1033</td><td>Installation des nouveaux services</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>1034</td><td>Instalando servicios nuevos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>1033</td><td>Catalogue d'installation système</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>1034</td><td>Instalar catálogo del sistema</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>1033</td><td>Clé : [1] ; nom : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>1034</td><td>Clave: [1], nombre: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>1033</td><td>Clé : [1] ; nom : [2] ; valeur : [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>1034</td><td>Clave: [1], nombre: [2], valor: [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>1033</td><td>Identificateur de la bibliothèque : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>1034</td><td>Id. de la biblioteca: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>1033</td><td>Identificateur de la bibliothèque : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>1034</td><td>LibID: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>1033</td><td>Migration d'état de composants à partir d'applications associées</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>1034</td><td>Transfiriendo los estados de las características desde las aplicaciones relacionadas</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>1033</td><td>Déplacement des fichiers</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>1034</td><td>Moviendo archivos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>1033</td><td>Nom : [1] ; valeur : [2] ; action : [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>1034</td><td>Nombre: [1], valor: [2], acción [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>1033</td><td>Nom : [1] ; valeur : [2] ; action : [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>1034</td><td>Nombre: [1], valor: [2], acción [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>1033</td><td>Exécution du correctif sur les fichiers</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>1034</td><td>Revisando archivos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>1033</td><td>Identificateur du programme : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>1034</td><td>IdProg: [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>1033</td><td>Identificateur du programme : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>1034</td><td>IdProg: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>1033</td><td>Propriété : [1] ; signature : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>1034</td><td>Propiedad: [1], firma: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>1033</td><td>Publication des composants du produit</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>1034</td><td>Publicar funciones del producto</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>1033</td><td>Publication des informations sur le produit</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>1034</td><td>Publicar información del producto</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>1033</td><td>Publication des composants qualifiés</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>1034</td><td>Publicar componentes aceptables</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>1033</td><td>Inscription de l'utilisateur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>1034</td><td>Registrando usuario</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>1033</td><td>Inscription des serveurs de classes</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>1034</td><td>Registrando servidores de clases</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>1033</td><td>Inscription des extensions serveur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>1034</td><td>Registrando servidores de extensiones</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>1033</td><td>Inscription des polices</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>1034</td><td>Registrando fuentes</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>1033</td><td>Inscription des informations MIME</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>1034</td><td>Registrando información MIME</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>1033</td><td>Inscription des bibliothèques de type</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>1034</td><td>Registrando bibliotecas de tipos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>1033</td><td>Inscription des applications et des composants COM+</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>1034</td><td>Registrando aplicaciones y componentes COM+</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>1033</td><td>Inscription des modules</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>1034</td><td>Registrando módulos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>1033</td><td>Inscription du produit</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>1034</td><td>Registrando el producto</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>1033</td><td>Inscription des identificateurs de programme</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>1034</td><td>Registrando identificadores de programa del registro</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>1033</td><td>Suppression d'applications en cours</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>1034</td><td>Quitando aplicaciones</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>1033</td><td>Suppression des fichiers de sauvegarde</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>1034</td><td>Quitando copias de seguridad</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>1033</td><td>Suppression des fichiers en double</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>1034</td><td>Quitando archivos duplicados</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>1033</td><td>Suppression des fichiers</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>1034</td><td>Quitando archivos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>1033</td><td>Suppression des dossiers</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>1034</td><td>Quitando carpetas</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>1033</td><td>Suppression des racines virtuelles IIS en cours...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>1034</td><td>Eliminando raíces virtuales de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>1033</td><td>Suppression des entrées des fichiers INI</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>1034</td><td>Quitando entradas de archivos INI</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>1033</td><td>Suppression des fichiers déplacés</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>1034</td><td>Quitando archivos movidos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>1033</td><td>Suppression des composants ODBC</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>1034</td><td>Quitando componentes ODBC</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>1033</td><td>Suppression des valeurs du registre système</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>1034</td><td>Quitando valores del registro del sistema</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>1033</td><td>Suppression des raccourcis</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>1034</td><td>Quitando accesos directos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>1033</td><td>Annulation de l'action :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>1034</td><td>Acción de restauración:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>1033</td><td>Recherche d'applications associées</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>1034</td><td>Buscando aplicaciones relacionadas</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>1033</td><td>Recherche des applications déjà installées</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>1034</td><td>Buscando aplicaciones instaladas</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>1033</td><td>Recherche des produits qualifiants</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>1034</td><td>Buscando productos necesarios</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>1033</td><td>Recherche des produits qualifiants</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>1034</td><td>Buscando productos necesarios</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>1033</td><td>Service : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>1034</td><td>Servicio: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>1033</td><td>Service : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>1034</td><td>Servicio: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>1033</td><td>Service : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>1034</td><td>Servicio: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>1033</td><td>Service : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>1034</td><td>Servicio: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>1033</td><td>Raccourci : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>1034</td><td>Acceso directo: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>1033</td><td>Raccourci : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>1034</td><td>Acceso directo: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>1033</td><td>Démarrage des services</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>1034</td><td>Iniciando servicios</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>1033</td><td>Arrêt des services</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>1034</td><td>Deteniendo servicios</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>1033</td><td>Annulation de la publication des composants du produit</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>1034</td><td>Anular publicación de funciones del producto</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>1033</td><td>Annulation de la publication des composants qualifiés</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>1034</td><td>Anular publicación de componentes aceptables</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>1033</td><td>Annulation de la publication des informations sur le produit</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>1034</td><td>Anular publicación de información del producto</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>1033</td><td>Annulation de l'inscription des bibliothèques de type</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>1034</td><td>Eliminando del registro bibliotecas de tipos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>1033</td><td>Annulation de l'inscription des serveurs de classes</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>1034</td><td>Eliminar del registro los servidores de clases</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>1033</td><td>Annulation de l'inscription des extensions serveur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>1034</td><td>Eliminando del registro los servidores de extensiones</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>1033</td><td>Annulation de l'inscription des modules</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>1034</td><td>Eliminando módulos del registro</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>1033</td><td>Annulation de l'inscription des applications et des composants COM+</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>1034</td><td>Quitando aplicaciones y componentes COM+ del registro</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>1033</td><td>Annulation de l'inscription des polices</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>1034</td><td>Eliminando del registro las fuentes</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>1033</td><td>Annulation de l'inscription des informations MIME</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>1034</td><td>Eliminando del registro información MIME</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>1033</td><td>Annulation de l'inscription des identificateurs de programme</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>1034</td><td>Eliminando identificadores de programa del registro</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>1033</td><td>Mise à jour de l'inscription des composants</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>1034</td><td>Actualizando el registro de componentes</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>1033</td><td>Mise à jour des chaînes d'environnement</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>1034</td><td>Actualizando cadenas de entorno</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>1033</td><td>Validation de l'installation</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>1034</td><td>Validando la instalación</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>1033</td><td>Écriture des valeurs des fichiers INI</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>1034</td><td>Escribiendo valores de los archivos INI</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>1033</td><td>Écriture des valeurs du registre système</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>1034</td><td>Escribiendo valores del registro del sistema</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_BACK</td><td>1033</td><td>&lt; &amp;Précédent</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_BACK</td><td>1034</td><td>&lt; &amp;Atrás</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_CANCEL</td><td>1033</td><td>Annuler</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_CANCEL</td><td>1034</td><td>Cancelar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_CANCEL2</td><td>1033</td><td>{&amp;Tahoma8}&amp;Annuler</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_CANCEL2</td><td>1034</td><td>{&amp;Tahoma8}&amp;Cancelar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_CHANGE</td><td>1033</td><td>&amp;Modifier...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_CHANGE</td><td>1034</td><td>&amp;Cambiar...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>1033</td><td>Calcul des coûts de l'application COM+ : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>1034</td><td>Coste de la aplicación COM+: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>1033</td><td>Installation de l'application COM+ : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>1034</td><td>Instalando la aplicación COM+: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>1033</td><td>Désinstallation de l'application COM+ : [1]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>1034</td><td>Desinstalando la aplicación COM+: [1]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>1033</td><td>Description de la boîte de dialogue (caractères Normal)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>1034</td><td>Descripción normal del cuadro de diálogo</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>1033</td><td>{&amp;TahomaBold10}Titre de la boîte de dialogue (caractères Gras)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>1034</td><td>{&amp;TahomaBold10}Título del cuadro de diálogo en negrita</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>1033</td><td>{&amp;MSSansBold8}Titre de la boîte de dialogue (caractères Gras)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>1034</td><td>{&amp;MSSansBold8}Título del cuadro de diálogo en negrita</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>1033</td><td>[ProductName] requiert un processeur X64. Cliquez sur OK pour fermer l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>1034</td><td>[ProductName] requiere un procesador X64. Haga clic en Aceptar para salir del asistente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DIFX_IA64</td><td>1033</td><td>[ProductName] requiert un processeur IA64. Cliquez sur OK pour fermer l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DIFX_IA64</td><td>1034</td><td>[ProductName] requiere un procesador IA64. Haga clic en Aceptar para salir del asistente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DIFX_X86</td><td>1033</td><td>[ProductName] requiert un processeur X86. Cliquez sur OK pour fermer l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DIFX_X86</td><td>1034</td><td>[ProductName] requiere un procesador X86. Haga clic en Aceptar para salir del asistente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>1033</td><td>Installer base de données [ProductName] vers :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>1034</td><td>Instalar base de datos de [ProductName] en:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_0</td><td>1033</td><td>{{Erreur fatale : }}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_0</td><td>1034</td><td>{{Error fatal: }}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1</td><td>1033</td><td>{{Erreur [1]. }}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1</td><td>1034</td><td>{{Error [1]. }}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_10</td><td>1033</td><td>=== Début de l'écriture dans le journal : [Date]  [Time] ===</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_10</td><td>1034</td><td>=== Registro iniciado: [Date]  [Time] ===</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_100</td><td>1033</td><td>Impossible de supprimer le raccourci [2]. Vérifiez que le fichier de raccourcis existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_100</td><td>1034</td><td>No se puede crear el acceso directo [2]. Compruebe que el archivo de acceso directo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_101</td><td>1033</td><td>Impossible d'inscrire la bibliothèque de type pour le fichier [2]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_101</td><td>1034</td><td>No se puede registrar la biblioteca de tipos para el archivo [2]. Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_102</td><td>1033</td><td>Impossible d'annuler l'inscription de la bibliothèque de type pour le fichier [2]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_102</td><td>1034</td><td>No se puede quitar del registro la biblioteca de tipos del archivo [2]. Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_103</td><td>1033</td><td>Impossible de mettre à jour le fichier INI [2][3]. Vérifiez que ce fichier existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_103</td><td>1034</td><td>No se puede actualizar el archivo .ini [2][3]. Compruebe que el archivo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_104</td><td>1033</td><td>Impossible de planifier le remplacement du fichier [3] par le fichier [2] au démarrage. Vérifiez que vous êtes autorisé à accéder en écriture au fichier [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_104</td><td>1034</td><td>No se puede programar el archivo [2] para que reemplace a [3] cuando se reinicie el sistema. Compruebe que dispone de permisos de escritura para el archivo [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_105</td><td>1033</td><td>Erreur lors de la suppression du gestionnaire de pilotes ODBC. Erreur ODBC [2] : [3]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_105</td><td>1034</td><td>Error al quitar el administrador de controladores ODBC; error de ODBC [2]: [3]. Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_106</td><td>1033</td><td>Erreur lors de l'installation du gestionnaire de pilotes ODBC. Erreur ODBC [2] : [3]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_106</td><td>1034</td><td>Error al instalar el administrador de controladores ODBC; error de ODBC [2]: [3]. Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_107</td><td>1033</td><td>Erreur lors de la suppression du pilote ODBC [4]. Erreur ODBC [2] : [3]. Vérifiez que vous disposez des privilèges suffisants pour supprimer des pilotes ODBC.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_107</td><td>1034</td><td>Error al quitar el controlador ODBC [4]; error de ODBC [2]: [3]. Compruebe que dispone de suficientes privilegios para quitar controladores ODBC.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_108</td><td>1033</td><td>Erreur lors de l'installation du pilote ODBC [4]. Erreur ODBC [2] : [3]. Vérifiez que le fichier [4] existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_108</td><td>1034</td><td>Error al instalar el controlador ODBC [4]; error de ODBC [2]: [3]. Compruebe que el archivo [4] existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_109</td><td>1033</td><td>Erreur lors de la configuration de la source de données ODBC [4]. Erreur ODBC [2] : [3]. Vérifiez que le fichier [4] existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_109</td><td>1034</td><td>Error al configurar el origen de datos de ODBC [4]; error de ODBC [2]: [3]. Compruebe que el archivo [4] y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_11</td><td>1033</td><td>=== Fin de l'écriture dans le journal : [Date]  [Time] ===</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_11</td><td>1034</td><td>=== Registro detenido: [Date]  [Time] ===</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_110</td><td>1033</td><td>Échec du démarrage du service [2] ([3]). Vérifiez que vous disposez de privilèges suffisants pour démarrer les services système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_110</td><td>1034</td><td>Fallo al iniciar el servicio '[2]' ([3]). Compruebe que dispone de suficientes privilegios para iniciar servicios del sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_111</td><td>1033</td><td>Impossible d'arrêter le service [2] ([3]). Vérifiez que vous disposez de privilèges suffisants pour arrêter les services système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_111</td><td>1034</td><td>No se puede detener el servicio '[2]' ([3]). Compruebe que dispone de suficientes privilegios para detener servicios del sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_112</td><td>1033</td><td>Impossible de supprimer le service [2] ([3]). Vérifiez que vous disposez de privilèges suffisants pour supprimer les services système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_112</td><td>1034</td><td>No se puede eliminar el servicio '[2]' ([3]). Compruebe que dispone de suficientes privilegios para quitar servicios del sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_113</td><td>1033</td><td>Impossible d'installer le service [2] ([3]). Vérifiez que vous disposez de privilèges suffisants pour installer des services système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_113</td><td>1034</td><td>No se puede instalar el servicio '[2]' ([3]). Compruebe que dispone de suficientes privilegios para instalar servicios del sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_114</td><td>1033</td><td>Impossible de mettre à jour la variable d'environnement [2]. Vérifiez que vous disposez de privilèges suffisants pour modifier les variables d'environnement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_114</td><td>1034</td><td>No se puede actualizar la variable de entorno '[2]'. Compruebe que dispone de suficientes privilegios para modificar variables de entorno.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_115</td><td>1033</td><td>Vous ne disposez pas des privilèges suffisants pour exécuter cette installation pour tous les utilisateurs de cet ordinateur. Ouvrez une session en tant qu'administrateur, puis réessayez d'exécuter cette installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_115</td><td>1034</td><td>No tiene suficientes privilegios para completar esta instalación para todos los usuarios del equipo. Inicie la sesión como administrador y vuelva a realizar la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_116</td><td>1033</td><td>Impossible de définir la sécurité du fichier [3]. Erreur : [2]. Vérifiez que vous disposez des privilèges suffisants pour modifier les permissions sur ce fichier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_116</td><td>1034</td><td>No se puede establecer la seguridad para el archivo '[3]'. Error: [2]. Compruebe que dispone de suficientes privilegios para modificar los permisos de seguridad para este archivo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_117</td><td>1033</td><td>Les services de composants (COM+ 1.0) ne sont pas installés sur cet ordinateur. Les services de composants sont nécessaires pour effectuer l'installation.  Ils sont disponibles sur Windows 2000.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_117</td><td>1034</td><td>Los Servicios de componente (COM+ 1.0) no están instalados en este sistema.  Para realizar esta instalación, es necesario que los Servicios de componente estén instalados. Encontrará los Servicios de componente en Windows 2000.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_118</td><td>1033</td><td>Erreur lors de l'inscription de l'application COM+. Contactez votre personnel de support technique pour des informations supplémentaires.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_118</td><td>1034</td><td>Error al registrar la aplicación COM+.  Póngase en contacto con el personal de soporte para obtener más información.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_119</td><td>1033</td><td>Erreur lors de l'annulation de l'inscription de l'application COM+. Contactez votre personnel de support technique pour des informations supplémentaires.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_119</td><td>1034</td><td>Error al quitar la aplicación COM+ del registro. Póngase en contacto con el personal de soporte para obtener más información.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_12</td><td>1033</td><td>Début de l'action [Time] : [1].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_12</td><td>1034</td><td>La acción se inició a las [Time]: [1].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_120</td><td>1033</td><td>Suppression en cours des versions antérieures de cette application...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_120</td><td>1034</td><td>Quitando las versiones anteriores de esta aplicación...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_121</td><td>1033</td><td>Suppression des versions antérieures de cette application en cours de préparation...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_121</td><td>1034</td><td>Preparando la eliminación de las versiones anteriores de esta aplicación...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_122</td><td>1033</td><td>Erreur lors de l'application du programme correctif au fichier [2]. Il a sans doute été mis à jour de manière différente et ne peut plus être modifié par ce programme correctif. Pour obtenir des informations complémentaires, contactez le revendeur de votre programme correctif. {{Erreur système : [3]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_122</td><td>1034</td><td>Error al aplicar la revisión al archivo [2].  Probablemente el archivo ya se ha actualizado por otros medios y esta revisión no puede modificarlo.  Para obtener más información, consulte al proveedor de la revisión.  {{Error del sistema: [3]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_123</td><td>1033</td><td>[2] ne peut pas installer l'un des produits requis. Contactez votre groupe de support technique. {{Erreur système : [3].}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_123</td><td>1034</td><td>[2] no puede instalar los productos requeridos. Póngase en contacto con su grupo de soporte técnico.  {{Error del sistema: [3].}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_124</td><td>1033</td><td>Impossible de supprimer la version antérieure de [2]. Contactez votre groupe de support technique.  {{Erreur système : [3].}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_124</td><td>1034</td><td>No se puede quitar la versión anterior de [2]. Póngase en contacto con su grupo de soporte técnico.  {{Error del sistema: [3].}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_125</td><td>1033</td><td>Impossible de modifier la description pour le service '[2]' ([3]).</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_125</td><td>1034</td><td>No se pudo cambiar la descripción del servicio '[2]' ([3]).</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_126</td><td>1033</td><td>Le service Windows Installer ne peut pas mettre à jour le fichier système [2] car le fichier est protégé par Windows. Vous devrez peut-être mettre à jour votre système d'exploitation pour que le programme fonctionne correctement. {{Version : [3], Version protégée du système d'exploitation : [4]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_126</td><td>1034</td><td>El servicio Windows Installer no pudo actualizar el archivo del sistema [2] porque está protegido por Windows. Es posible que tenga que actualizar el sistema operativo para que este programa funcione correctamente. {{Versión del paquete: [3], Versión protegida del SO: [4]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_127</td><td>1033</td><td>Le service Windows Installer ne peut pas mettre à jour le fichier système [2] car le fichier est protégé par Windows. {{Version : [3], Version protégée du système d'exploitation : [4], Erreur SFP : [5]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_127</td><td>1034</td><td>El servicio Windows Installer no pudo actualizar el archivo protegido de Windows [2]. {{Versión del paquete: [3], Versión protegida del SO: [4], Error SFP: [5]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_128</td><td>1033</td><td>Un ou plusieurs fichiers Windows protégés ne peuvent être mis à jour par le service Windows Installer. Erreur SFP : [2]. Liste des fichiers protégés : [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_128</td><td>1034</td><td>El servicio del Instalador del Windows no puede actualizar uno o varios archivos protegidos de Windows. Error de SFP: [2]. Lista de archivos protegidos: [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_129</td><td>1033</td><td>Les installations utilisateurs sont désactivées au moyen de règles sur l'ordinateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_129</td><td>1034</td><td>Las instalaciones del usuario se han desactivado en el equipo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_13</td><td>1033</td><td>Fin de l'action [Time] : [1]. Valeur renvoyée : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_13</td><td>1034</td><td>La acción terminó a las [Time]: [1]. Valor devuelto: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_130</td><td>1033</td><td>Cette installation requiert Internet Information Server 4.0 ou plus pour configurer les racines virtuelles IIS. Assurez-vous de bien utiliser la version 4.0 ou plus récente de IIS.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_130</td><td>1034</td><td>Para configurar raíces virtuales de IIS, el programa de instalación necesita Internet Information Server 4.0 ó posterior. Compruebe que dispone de IIS 4.0 o posterior.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_131</td><td>1033</td><td>Cette installation requiert les privilèges d'administrateur pour configurer les racines virtuelles IIS.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_131</td><td>1034</td><td>Para configurar raíces virtuales de IIS, el programa de instalación requiere derechos de administrador.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1329</td><td>1033</td><td>Un fichier requis ne peut pas être installé car le fichier .cab [2] ne dispose pas de signature numérique. Cela signifie que le fichier .cab est peut-être corrompu.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1329</td><td>1034</td><td>No es posible instalar un archivo necesario porque el archivo .cab [2] no está firmado digitalmente. Esto puede indicar que el archivo .cab está dañado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1330</td><td>1033</td><td>Un fichier requis ne peut pas être installé car la signature numérique du fichier .cab [2] est incorrecte. Cela signifie que le fichier .cab est peut-être corrompu. { L'erreur [3] a été renvoyée par WinVerifyTrust.}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1330</td><td>1034</td><td>No es posible instalar un archivo necesario porque el archivo .cab [2] tiene una firma digital no válida. Esto puede indicar que el archivo .cab está dañado.{ El Verificador de confianza de Windows ha devuelto el error [3].}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1331</td><td>1033</td><td>Echec de copie du fichier [2] : Erreur de CRC.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1331</td><td>1034</td><td>Fallo al copiar correctamente el archivo [2]: Error de CRC.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1332</td><td>1033</td><td>Echec de correction du fichier [2] : Erreur de CRC.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1332</td><td>1034</td><td>Fallo al aplicar revisión correctamente el archivo [2]: Error de CRC.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1333</td><td>1033</td><td>Echec de correction du fichier [2] : Erreur de CRC.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1333</td><td>1034</td><td>Fallo al aplicar revisión correctamente el archivo [2]: Error de CRC.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1334</td><td>1033</td><td>Impossible d'installer le fichier '[2]' car il est introuvable dans le fichier .cab '[3]'. Cela peut indiquer une erreur de réseau, une erreur lors de la lecture à partir du CD-ROM ou un problème avec ce logiciel.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1334</td><td>1034</td><td>No es posible instalar el archivo '[2]' porque no se pudo encontrar en el archivo .cab '[3]'. Esto podría indicar un error de red, un error de lectura del CD-ROM o un problema específico de este paquete.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1335</td><td>1033</td><td>Le fichier .cab '[2]' requis pour cette installation est corrompu et ne peut pas être utilisé. Cela peut indiquer une erreur de réseau, une erreur lors de la lecture à partir du CD-ROM ou un problème avec ce logiciel.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1335</td><td>1034</td><td>El archivo .cab '[2]' necesario para esta instalación está dañado y no se puede utilizar. Esto podría indicar un error de red, un error de lectura del CD-ROM o un problema específico de este paquete.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1336</td><td>1033</td><td>Une erreur est survenue lors de la création d'un fichier temporaire nécessaire pour terminer l'installation. Dossier : [3]. Code d'erreur système : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1336</td><td>1034</td><td>Ha ocurrido un error al crear un archivo temporal necesario para completar esta instalación. Carpeta: [3]. Código de error de sistema: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_14</td><td>1033</td><td>Durée restante : {[1] minute(s) }{[2] secondes}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_14</td><td>1034</td><td>Tiempo restante: {[1] minutos }{[2] segundos}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_15</td><td>1033</td><td>Mémoire insuffisante. Fermez les autres applications avant de réessayer.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_15</td><td>1034</td><td>Memoria insuficiente. Cierre otras aplicaciones antes de intentarlo de nuevo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_16</td><td>1033</td><td>Le programme d'installation ne répond plus.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_16</td><td>1034</td><td>El instalador no responde.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1609</td><td>1033</td><td>Une erreur est survenue lors de l'application des paramètres de sécurité. [2] n'est pas un utilisateur ou un groupe valide. Il s'agit peut-être d'un problème de logiciel ou de connexion à un contrôleur de domaine du réseau. Vérifiez votre connexion réseau et cliquez sur Réessayer ou sur Annuler pour interrompre l'installation. Impossible de trouver le SID de l'utilisateur, erreur système [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1609</td><td>1034</td><td>Error al aplicar la configuración de seguridad. [2] no es un usuario o grupo válido. Puede ser un problema con el paquete o con la conexión a un controlador de dominio de la red. Compruebe la conexión de red y pulse Reintentar, o Cancelar para finalizar la instalación. No se encuentra la ID de seguridad del usuario, error de sistema [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1651</td><td>1033</td><td>L'utilisateur Admin n'a pas réussi à appliquer le correctif à une application gérée par utilisateur ou une application gérée par l'ordinateur dont l'état est Promotion.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1651</td><td>1034</td><td>El usuario de administración no ha aplicado la revisión correspondiente a una aplicación por equipos o administrada por usuarios que se encuentre en un estado de anuncio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_17</td><td>1033</td><td>L'exécution du programme d'installation a pris fin prématurément.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_17</td><td>1034</td><td>El instalador se detuvo antes de tiempo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1715</td><td>1033</td><td>Installé [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1715</td><td>1034</td><td>[2] instalado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1716</td><td>1033</td><td>[2] configuré.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1716</td><td>1034</td><td>[2] configurado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1717</td><td>1033</td><td>[2] supprimé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1717</td><td>1034</td><td>[2] eliminado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1718</td><td>1033</td><td>Le fichier [2] a été rejeté par une règle de signature numérique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1718</td><td>1034</td><td>Se ha rechazado el archivo [2] por la política de firma digital.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1719</td><td>1033</td><td>Impossible d'accéder au service Windows Installer. Veuillez contacter votre support technique pour vérifier s'il est activé et enregistré correctement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1719</td><td>1034</td><td>No se pudo acceder al servicio del Instalador de Windows. Póngase en contacto con el personal de asistencia para comprobar que está registrado y habilitado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1720</td><td>1033</td><td>Il existe un problème avec ce logiciel Windows Installer. Un script requis pour terminer l'installation n'a pas pu être exécuté. Veuillez contacter votre support technique ou votre revendeur. Action personnalisée [2] erreur de script [3], [4] : [5] Ligne [6], Colonne [7], [8]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1720</td><td>1034</td><td>Se produjo un problema con el paquete del Instalador de Windows. No se pudo ejecutar un archivo de comandos necesario para la instalación. Póngase en contacto con el personal de asistencia o el proveedor del paquete. Acción personalizada [2] error de archivo de comandos [3], [4]: [5] Línea [6], Columna [7], [8]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1721</td><td>1033</td><td>Il existe un problème avec ce logiciel Windows Installer. Un programme requis pour terminer l'installation n'a pas pu être exécuté. Veuillez contacter votre support technique ou votre revendeur. Action : [2], emplacement : [3], commande : [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1721</td><td>1034</td><td>Se produjo un problema con este paquete del Instalador de Windows. No se pudo ejecutar un programa necesario para esta instalación. Póngase en contacto con el personal de asistencia o el proveedor del paquete. Acción: [2], ubicación: [3], comando: [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1722</td><td>1033</td><td>Il existe un problème avec ce logiciel Windows Installer. Un programme faisant partie de l'installation n'a pas été exécuté correctement. Veuillez contacter votre support technique ou votre revendeur. Action [2], emplacement : [3], commande : [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1722</td><td>1034</td><td>Se produjo un problema con este paquete del Instalador de Windows. La ejecución de un programa perteneciente a la instalación no ha finalizado según lo esperado. Póngase en contacto con el personal de asistencia o el proveedor del paquete. Acción [2], ubicación: [3], comando: [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1723</td><td>1033</td><td>Il existe un problème avec ce logiciel Windows Installer. Une DLL requise pour terminer l'installation n'a pas pu être exécutée. Veuillez contacter votre support technique ou votre revendeur. Action [2], entrée : [3], bibliothèque : [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1723</td><td>1034</td><td>Se produjo un problema con este paquete del Instalador de Windows. No se pudo ejecutar una dll necesaria para esta instalación. Póngase en contacto con el personal de asistencia o el proveedor del paquete. Acción [2], entrada: [3], biblioteca: [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1724</td><td>1033</td><td>Suppression terminée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1724</td><td>1034</td><td>La eliminación se ha completado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1725</td><td>1033</td><td>Echec de la suppression.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1725</td><td>1034</td><td>La eliminación no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1726</td><td>1033</td><td>Publicité terminée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1726</td><td>1034</td><td>El anuncio se ha completado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1727</td><td>1033</td><td>Echec de la publicité.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1727</td><td>1034</td><td>Fallo en el anuncio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1728</td><td>1033</td><td>Configuration terminée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1728</td><td>1034</td><td>La configuración se ha completado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1729</td><td>1033</td><td>Echec de la configuration.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1729</td><td>1034</td><td>Fallo en la configuración.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1730</td><td>1033</td><td>Vous devez être administrateur pour supprimer cette application. Pour supprimer cette application, vous pouvez vous connecter en tant qu'administrateur ou contacter votre support technique pour obtenir de l'aide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1730</td><td>1034</td><td>Debe tener derechos de administrador para eliminar esta aplicación. Para eliminar esta aplicación, puede iniciar la sesión como administrador, o bien ponerse en contacto con el servicio de asistencia técnica para obtener ayuda.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1731</td><td>1033</td><td>Le logiciel d'installation source du produit [2] n'est pas synchronisé avec le logiciel client. Réessayez d'installer avec une copie valide du logiciel d'installation '[3]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1731</td><td>1034</td><td>El paquete de instalación de origen del producto [2] no está sincronizado con el paquete cliente. Intente ejecutar la instalación de nuevo con una copia válida del paquete de instalación '[3]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1732</td><td>1033</td><td>Pour terminer l'installation [2], vous devez redémarrer l'ordinateur. D'autres utilisateurs sont actuellement connectés à cet ordinateur. Si vous redémarrez, ils perdront peut-être les données sur lesquelles ils travaillent. Souhaitez-vous redémarrer maintenant ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1732</td><td>1034</td><td>Es necesario reiniciar el equipo para completar la instalación de [2]. Hay otros usuarios actualmente conectados al equipo, y puede que pierdan su trabajo si reinicia. ¿Desea reiniciar el equipo ahora?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_18</td><td>1033</td><td>Veuillez patienter pendant que Windows configure [ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_18</td><td>1034</td><td>Espere mientras Windows configura [ProductName]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_19</td><td>1033</td><td>Collecte des informations requises en cours...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_19</td><td>1034</td><td>Recopilando la información necesaria...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1935</td><td>1033</td><td>Une erreur est survenue pendant l'installation d'un composant de l'assembly '[2]'. HRESULT: [3]. {{interface assembly : [4], fonction : [5], Nom de l'assembly : [6]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1935</td><td>1034</td><td>Ha ocurrido un error durante la instalación del componente del ensamblaje [2]. HRESULT: [3]. {{interfaz de ensamblaje: [4], función: [5], nombre de ensamblaje: [6]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1936</td><td>1033</td><td>Une erreur est survenue pendant l'installation de l'assembly '[6]'. L'assembly n'est pas expressément nommé ou n'est pas signé avec la longueur minimale de clé. HRESULT: [3]. {{interface assembly : [4], fonction : [5], composant : [2]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1936</td><td>1034</td><td>Ha ocurrido un error durante la instalación del ensamblaje '[6]'. El ensamblaje no tiene un nombre seguro o no se ha registrado con la longitud de clave mínima. HRESULT: [3]. {{interfaz de ensamblaje: [4], función: [5], componente: [2]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1937</td><td>1033</td><td>Une erreur est survenue pendant l'installation de l'assembly '[6]'. La signature ou le catalogue n'ont pas pu être vérifiés ou ne sont pas valides. HRESULT: [3]. {{interface assembly : [4], fonction : [5], composant : [2]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1937</td><td>1034</td><td>Ha ocurrido un error durante la instalación del ensamblaje '[6]'. La firma del catálogo no se pudo comprobar o no es válida. HRESULT: [3]. {{interfaz de ensamblaje: [4], función: [5], componente: [2]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_1938</td><td>1033</td><td>Une erreur est survenue pendant l'installation de l'assembly '[6]'. Un ou plusieurs modules de cet assembly sont introuvables. HRESULT: [3]. {{interface assembly : [4], fonction : [5], composant : [2]}}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_1938</td><td>1034</td><td>Ha ocurrido un error durante la instalación del ensamblaje '[6]'. No se pudieron encontrar uno o más módulos del ensamblaje. HRESULT: [3]. {{interfaz de ensamblaje: [4], función: [5], componente: [2]}}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2</td><td>1033</td><td>Avertissement [1]. </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2</td><td>1034</td><td>Advertencia [1]. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_20</td><td>1033</td><td>Installation de {[ProductName] }terminée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_20</td><td>1034</td><td>La instalación de {[ProductName] } finalizó correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_21</td><td>1033</td><td>Échec de l'installation de {[ProductName]}.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_21</td><td>1034</td><td>Fallo en la instalación de {[ProductName]}.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2101</td><td>1033</td><td>Les raccourcis ne sont pas pris en charge par le système d'exploitation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2101</td><td>1034</td><td>El sistema operativo no admite accesos directos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2102</td><td>1033</td><td>Action .ini incorrecte : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2102</td><td>1034</td><td>Acción .ini no válida: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2103</td><td>1033</td><td>Impossible de résoudre le chemin pour le dossier du bureau [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2103</td><td>1034</td><td>No se pudo resolver la ruta de la carpeta de shell [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2104</td><td>1033</td><td>Ecriture du fichier .ini : [3]: Erreur système : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2104</td><td>1034</td><td>Escribiendo archivo .ini: [3]: Error de sistema: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2105</td><td>1033</td><td>Echec de création [3] du raccourci. Erreur système : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2105</td><td>1034</td><td>La creación de accesos directos [3] no se ha realizado correctamente. Error de sistema: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2106</td><td>1033</td><td>Echec de suppression [3] du raccourci. Erreur système : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2106</td><td>1034</td><td>La eliminación de accesos directos [3] no se ha realizado correctamente. Error de sistema: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2107</td><td>1033</td><td>Erreur [3] lors de l'enregistrement de la bibliothèque [2] de type.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2107</td><td>1034</td><td>Error [3] al registrar la biblioteca de tipos [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2108</td><td>1033</td><td>Erreur [3] lors du désenregistrement de la bibliothèque [2] de type.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2108</td><td>1034</td><td>Error [3] al anular el registro de la biblioteca de tipos [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2109</td><td>1033</td><td>Section manquante pour l'action .ini.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2109</td><td>1034</td><td>Falta sección para acción .ini.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2110</td><td>1033</td><td>Clé manquante pour l'action .ini.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2110</td><td>1034</td><td>Falta clave para acción .ini.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2111</td><td>1033</td><td>Echec de détection des applications en cours d'exécution, impossible d'obtenir des données de performance. Opération enregistrée a renvoyé : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2111</td><td>1034</td><td>La detección de las aplicaciones en ejecución no se ha realizado correctamente; no se han podido obtener datos de rendimiento. La operación de registro ha devuelto: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2112</td><td>1033</td><td>Echec de détection des applications en cours d'exécution, impossible d'obtenir un indice de performance. Opération enregistrée a renvoyé : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2112</td><td>1034</td><td>La detección de las aplicaciones en ejecución no se ha realizado correctamente; no se ha podido obtener el índice de rendimiento. La operación de registro ha devuelto: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2113</td><td>1033</td><td>Echec de la détection des applications en cours.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2113</td><td>1034</td><td>La detección de las aplicaciones en ejecución no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_22</td><td>1033</td><td>Erreur lors de la lecture du fichier [2].{{ Erreur système [3].}} Vérifiez que ce fichier existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_22</td><td>1034</td><td>Error al leer el archivo [2]. {{ Error del sistema [3].}} Compruebe que el archivo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2200</td><td>1033</td><td>Base de données : [2]. Impossible de créer l'objet de base de données, mode = [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2200</td><td>1034</td><td>Base de datos: [2]. La creación del objeto de base de datos no se ha realizado correctamente, modo = [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2201</td><td>1033</td><td>Base de données : [2]. Echec d'initialisation, mémoire insuffisante.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2201</td><td>1034</td><td>Base de datos: [2]. La inicialización no se ha realizado correctamente; no hay suficiente memoria.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2202</td><td>1033</td><td>Base de données : [2]. Impossible d'accéder aux données, plus de mémoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2202</td><td>1034</td><td>Base de datos: [2]. El acceso a datos no se ha realizado correctamente; no hay suficiente memoria.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2203</td><td>1033</td><td>Base de données : [2]. Impossible d'ouvrir le fichier de base de données. Erreur système [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2203</td><td>1034</td><td>Base de datos: [2]. No se puede abrir el archivo de base de datos. Error de sistema [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2204</td><td>1033</td><td>Base de données : [2]. La table existe déjà : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2204</td><td>1034</td><td>Base de datos: [2]. La tabla ya existe: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2205</td><td>1033</td><td>Base de données : [2]. La table n'existe pas : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2205</td><td>1034</td><td>Base de datos: [2]. La tabla no existe: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2206</td><td>1033</td><td>Base de données : [2]. Impossible de déposer la table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2206</td><td>1034</td><td>Base de datos: [2]. La tabla no se pudo descartar: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2207</td><td>1033</td><td>Base de données : [2]. Violation d'intention.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2207</td><td>1034</td><td>Base de datos: [2]. Infracción de intento.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2208</td><td>1033</td><td>Base de données : [2]. Paramètres insuffisants pour Execute.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2208</td><td>1034</td><td>Base de datos: [2]. No hay suficientes parámetros para Ejecutar.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2209</td><td>1033</td><td>Base de données : [2]. L'état du curseur est incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2209</td><td>1034</td><td>Base de datos: [2]. EL estado del cursor no es válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2210</td><td>1033</td><td>Base de données : [2]. Type de données de mise à jour invalide dans la colonne [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2210</td><td>1034</td><td>Base de datos: [2]. Tipo de datos de actualización no válido en la columna [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2211</td><td>1033</td><td>Base de données : [2]. Impossible de créer la table de base de données [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2211</td><td>1034</td><td>Base de datos: [2]. No se pudo crear la tabla de base de datos [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2212</td><td>1033</td><td>Base de données : [2]. La base de données est en lecture seule.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2212</td><td>1034</td><td>Base de datos: [2]. El estado de la base de datos no permite escribir en ella.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2213</td><td>1033</td><td>Base de données : [2]. Erreur lors de l'enregistrement des tables de la base de données.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2213</td><td>1034</td><td>Base de datos: [2]. Error al guardar tablas de base de datos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2214</td><td>1033</td><td>Base de données : [2]. Erreur d'écriture du fichier d'exportation : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2214</td><td>1034</td><td>Base de datos: [2]. Error al escribir archivo de exportación: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2215</td><td>1033</td><td>Base de données : [2]. Impossible d'ouvrir le fichier d'importation : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2215</td><td>1034</td><td>Base de datos: [2]. No se puede abrir el archivo de importación: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2216</td><td>1033</td><td>Base de données : [2]. Erreur de format du fichier d'importation : [3], Ligne [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2216</td><td>1034</td><td>Base de datos: [2]. Error de importación de formato de archivo: [3], Línea [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2217</td><td>1033</td><td>Base de données : [2]. Etat incorrect pour CreateOutputDatabase [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2217</td><td>1034</td><td>Base de datos: [2]. Estado incorrecto de Crear salida de base de datos [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2218</td><td>1033</td><td>Base de données : [2]. La table n'est pas fournie :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2218</td><td>1034</td><td>Base de datos: [2]. No se ha proporcionado el nombre de la tabla.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2219</td><td>1033</td><td>Base de données : [2]. Format de base de données Installer non valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2219</td><td>1034</td><td>Base de datos: [2]. Formato de base de datos del instalador no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2220</td><td>1033</td><td>Base de données : [2]. Données de ligne/colonne incorrectes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2220</td><td>1034</td><td>Base de datos: [2]. Datos de fila/campo no válidos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2221</td><td>1033</td><td>Base de données : [2]. Conflit de page de code dans le fichier d'importation : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2221</td><td>1034</td><td>Base de datos: [2]. Conflicto de código de página en el archivo de importación: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2222</td><td>1033</td><td>Base de données : [2]. La page de code de fusion ou de transformation [3] est différente de la page de code de [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2222</td><td>1034</td><td>Base de datos: [2]. La página de código de combinación o transformación [3] difiere de la página de código de base de datos [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2223</td><td>1033</td><td>Base de données : [2]. Les bases de données sont les mêmes : Aucune transformation générée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2223</td><td>1034</td><td>Base de datos: [2]. Las bases de datos son iguales. No se ha generado ninguna transformación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2224</td><td>1033</td><td>Base de données : [2]. GenerateTransform : Base de données corrompue. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2224</td><td>1034</td><td>Base de datos: [2]. Generar transformación: Base de datos dañada. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2225</td><td>1033</td><td>Base de données : [2]. Transform : impossible de transformer une table temporaire. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2225</td><td>1034</td><td>Base de datos: [2] Transformación: No se puede transformar una tabla temporal. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2226</td><td>1033</td><td>Base de données : [2] Echec de la transformation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2226</td><td>1034</td><td>Base de datos: [2]. La transformación no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2227</td><td>1033</td><td>Base de données : [2]. Identificateur '[3]' invalide dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2227</td><td>1034</td><td>Base de datos: [2]. Identificador no válido '[3]' en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2228</td><td>1033</td><td>Base de données : [2]. Table inconnue '[3]' dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2228</td><td>1034</td><td>Base de datos: [2]. Tabla desconocida '[3]' en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2229</td><td>1033</td><td>Base de données : [2]. Impossible de charger la table '[3]' dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2229</td><td>1034</td><td>Base de datos: [2]. No se pudo cargar la tabla '[3]' en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2230</td><td>1033</td><td>Base de données : [2]. Table répétée '[3]' dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2230</td><td>1034</td><td>Base de datos: [2]. Tabla repetida '[3]' en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2231</td><td>1033</td><td>Base de données : [2]. ')' manquante dans la requête SQL : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2231</td><td>1034</td><td>Base de datos: [2]. Falta ')' en la consulta SQL: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2232</td><td>1033</td><td>Base de données : [2]. Jeton '[3]' inattendu dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2232</td><td>1034</td><td>Base de datos: [2]. Símbolo inesperado '[3]' en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2233</td><td>1033</td><td>Base de données : [2]. Aucune colonne dans la clause SELECT de la requête SQL : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2233</td><td>1034</td><td>Base de datos: [2]. No hay columnas en la cláusula SELECT de la consulta SQL: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2234</td><td>1033</td><td>Base de données : [2]. Aucune colonne dans la clause ORDER BY de la requête SQL : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2234</td><td>1034</td><td>Base de datos: [2]. No hay columnas en la cláusula ORDER BY de la consulta SQL: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2235</td><td>1033</td><td>Base de données : [2]. Colonne '[3]' absente ou ambiguë dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2235</td><td>1034</td><td>Base de datos: [2]. La columna '[3]' no está presente o es ambigua en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2236</td><td>1033</td><td>Base de données : [2]. Opérateur '[3]' invalide dans la requête SQL : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2236</td><td>1034</td><td>Base de datos: [2]. Operador no válido '[3]' en la consulta SQL: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2237</td><td>1033</td><td>Base de données : [2]. Chaîne de requête incorrecte : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2237</td><td>1034</td><td>Base de datos: [2]. La cadena de consulta falta o no es válida: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2238</td><td>1033</td><td>Base de données : [2]. Clause FROM manquante dans la requête SQL : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2238</td><td>1034</td><td>Base de datos: [2]. Falta la cláusula FROM en la consulta SQL: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2239</td><td>1033</td><td>Base de données : [2]. Valeurs insuffisantes dans l'instruction INSERT SQL.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2239</td><td>1034</td><td>Base de datos: [2]. No hay suficientes valores en la instrucción INSERT de SQL.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2240</td><td>1033</td><td>Base de données : [2]. Colonnes de mise à jour manquantes dans l'instruction UPDATE SQL.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2240</td><td>1034</td><td>Base de datos: [2]. Faltan columnas de actualización en la instrucción UPDATE de SQL.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2241</td><td>1033</td><td>Base de données : [2]. Colonnes d'insertion manquantes dans l'instruction INSERT SQL.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2241</td><td>1034</td><td>Base de datos: [2]. Faltan columnas de inserción en la instrucción INSERT de SQL.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2242</td><td>1033</td><td>Base de données : [2]. Colonne '[3]' répétée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2242</td><td>1034</td><td>Base de datos: [2]. Columna '[3]' repetida.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2243</td><td>1033</td><td>Base de données : [2]. Aucune colonne primaire définie pour la création de table.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2243</td><td>1034</td><td>Base de datos: [2]. No se han definido columnas principales para la creación de tablas.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2244</td><td>1033</td><td>Base de données : [2]. Spécificateur de type '[3]' invalide dans la requête SQL [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2244</td><td>1034</td><td>Base de datos: [2]. Especificador de tipo no válido '[3]' en la consulta SQL [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2245</td><td>1033</td><td>Echec d'IStorage::Stat avec l'erreur [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2245</td><td>1034</td><td>IStorage::Stat ha fallado con el error [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2246</td><td>1033</td><td>Base de données : [2]. Format de transformation Installer non valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2246</td><td>1034</td><td>Base de datos: [2]. Formato de transformación del instalador no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2247</td><td>1033</td><td>Base de données : [2] Echec de lecture/écriture du flux de transformation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2247</td><td>1034</td><td>Base de datos: [2] Fallo de lectura/escritura de la secuencia de transformación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2248</td><td>1033</td><td>Base de données : [2] GenerateTransform/Merge : Le type de colonne dans la table de base ne correspond pas à la table de référence. Table : [3] n° de colonne : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2248</td><td>1034</td><td>Base de datos: [2] Generar transformación/combinación: El tipo de columna de la tabla base no coincide con el de la tabla de referencia. Tabla: [3] Nº de col: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2249</td><td>1033</td><td>Base de données : [2] GenerateTransform : Il y a plus de colonnes dans la table de base que dans la table de référence. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2249</td><td>1034</td><td>Base de datos: [2] Generar transformación: Hay más columnas en la tabla base que en la tabla de referencia. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2250</td><td>1033</td><td>Base de données : [2] Transform: Impossible d'ajouter une ligne existante. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2250</td><td>1034</td><td>Base de datos: [2] Transformación: No se puede añadir la fila existente. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2251</td><td>1033</td><td>Base de données : [2] Transform: Impossible de supprimer une ligne qui n'existe pas. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2251</td><td>1034</td><td>Base de datos: [2] Transformación: No se puede suprimir una fila que no existe. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2252</td><td>1033</td><td>Base de données : [2] Transform: Impossible d'ajouter une table existante. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2252</td><td>1034</td><td>Base de datos: [2] Transformación: No se puede añadir la tabla existente. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2253</td><td>1033</td><td>Base de données : [2] Transform: Impossible de supprimer une table qui n'existe pas. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2253</td><td>1034</td><td>Base de datos: [2] Transformación: No se puede suprimir una tabla que no existe. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2254</td><td>1033</td><td>Base de données : [2] Transform: Impossible de mettre à jour une ligne qui n'existe pas. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2254</td><td>1034</td><td>Base de datos: [2] Transformación: No se puede actualizar una fila que no existe. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2255</td><td>1033</td><td>Base de données : [2] Transform: Une colonne portant ce nom existe déjà. Table : [3] Colonne : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2255</td><td>1034</td><td>Base de datos: [2] Transformación: Ya existe una columna con este nombre. Tabla: [3] Col: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2256</td><td>1033</td><td>Base de données : [2] GenerateTransform/Merge : Le nombre de clés primaires dans la table de base ne correspond pas à la table de référence. Table : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2256</td><td>1034</td><td>Base de datos: [2] Generar transformación/combinación: El número de claves principales de la tabla base no coincide con el de la tabla de referencia. Tabla: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2257</td><td>1033</td><td>Base de données : [2]. Intention de modifier la table en lecture seule : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2257</td><td>1034</td><td>Base de datos: [2]. Intento de modificar tabla de sólo lectura: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2258</td><td>1033</td><td>Base de données : [2]. Erreur de correspondance de types dans les paramètres : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2258</td><td>1034</td><td>Base de datos: [2]. No coincide el tipo en el parámetro: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2259</td><td>1033</td><td>Base de données : [2] Echec de la mise à jour de la ou des tables</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2259</td><td>1034</td><td>Base de datos: [2] La actualización de tablas no se ha realizado correctamente</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2260</td><td>1033</td><td>Echec du stockage CopyTo. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2260</td><td>1034</td><td>La acción Copiar a de la ubicación de almacenamiento no se ha realizado correctamente. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2261</td><td>1033</td><td>Impossible de supprimer le flux [2]. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2261</td><td>1034</td><td>No se pudo eliminar la secuencia [2]. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2262</td><td>1033</td><td>Le flux n'existe pas : [2]. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2262</td><td>1034</td><td>La secuencia no existe: [2]. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2263</td><td>1033</td><td>Impossible d'ouvrir le flux [2]. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2263</td><td>1034</td><td>No se pudo abrir la secuencia [2]. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2264</td><td>1033</td><td>Impossible de supprimer le flux [2]. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2264</td><td>1034</td><td>No se pudo eliminar la secuencia [2]. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2265</td><td>1033</td><td>Impossible de valider le stockage. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2265</td><td>1034</td><td>No se pudo confirmar la ubicación de almacenamiento. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2266</td><td>1033</td><td>Impossible d'annuler le stockage. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2266</td><td>1034</td><td>No se pudo deshacer la ubicación de almacenamiento. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2267</td><td>1033</td><td>Impossible de supprimer le stockage [2]. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2267</td><td>1034</td><td>No se pudo suprimir la ubicación de almacenamiento [2]. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2268</td><td>1033</td><td>Base de données : [2]. Merge : Des conflits de fusion on été signalés dans les tables [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2268</td><td>1034</td><td>Base de datos: [2]. Combinación: Se informó de la existencia de conflictos de combinación en las tablas [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2269</td><td>1033</td><td>Base de données : [2]. Merge : Le décompte de la colonne était différent dans la table '[3]' des deux bases de données.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2269</td><td>1034</td><td>Base de datos: [2]. Combinación: El número de columnas es diferente en la tabla '[3]' de las dos bases de datos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2270</td><td>1033</td><td>Base de données : [2]. GenerateTransform/Merge : Le nom de la colonne dans la table de base ne correspond pas à la table de référence. Table : [3] n° de colonne : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2270</td><td>1034</td><td>Base de datos: [2]. Generar transformación/combinación: El nombre de la columna de la tabla base no coincide con el de la tabla de referencia. Tabla: [3] Nº de col: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2271</td><td>1033</td><td>Echec d'écriture de SummaryInformation pour la transformation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2271</td><td>1034</td><td>La escritura de Información de resumen para la transformación no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2272</td><td>1033</td><td>Base de données : [2]. MergeDatabase n'écrira aucune modification car la base de données est ouverte en lecture seule.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2272</td><td>1034</td><td>Base de datos: [2]. Combinar base de datos no escribirá ningún cambio porque la base de datos está abierta en modo de sólo lectura.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2273</td><td>1033</td><td>Base de données : [2]. MergeDatabase : Une référence de la base de donnée de base a été passée comme base de donnée de référence.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2273</td><td>1034</td><td>Base de datos: [2]. Combinar base de datos: Se ha transmitido una referencia a la base de datos de base como base de datos de referencia.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2274</td><td>1033</td><td>Base de données : [2]. MergeDatabase : impossible d'inscrire les erreurs dans la table d'erreurs. Ceci peut-être dû à une colonne non vide dans une table d'erreurs définie préalablement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2274</td><td>1034</td><td>Base de datos: [2]. Combinar base de datos: No es posible escribir errores en la tabla Error. Esto puede deberse a la existencia de una columna que no puede dejarse vacía en una tabla Error predefinida.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2275</td><td>1033</td><td>Base de données : [2]. L'opération de modification [3] spécifiée est incorrecte pour les réunions de tables.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2275</td><td>1034</td><td>Base de datos: [2]. La operación de modificación especificada [3] no es válida para las combinaciones de tablas.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2276</td><td>1033</td><td>Base de données : [2]. Page de code [3] non prise en charge par le système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2276</td><td>1034</td><td>Base de datos: [2]. El sistema no admite la página de código [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2277</td><td>1033</td><td>Base de données : [2]. Echec de l'enregistrement de la table [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2277</td><td>1034</td><td>Base de datos: [2]. Fallo al guardar la tabla [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2278</td><td>1033</td><td>Base de données : [2]. Plafond de 32 expressions dépassé dans la clause WHERE de la requête SQL : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2278</td><td>1034</td><td>Base de datos: [2]. Se ha superado el límite de expresiones establecido en 32 en la cláusula WHERE de la consulta SQL: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2279</td><td>1033</td><td>Base de données : [2] Transform: Trop de colonnes dans la table de base [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2279</td><td>1034</td><td>Base de datos: [2] Transformación: Demasiadas columnas en la tabla base [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2280</td><td>1033</td><td>Base de données : [2]. Impossible de créer la colonne [3] pour la table [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2280</td><td>1034</td><td>Base de datos: [2]. No se pudo crear la columna [3] de la tabla [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2281</td><td>1033</td><td>Impossible de renommer le flux [2]. Erreur système : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2281</td><td>1034</td><td>No se pudo cambiar el nombre de la secuencia [2]. Error de sistema: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2282</td><td>1033</td><td>Nom de flux incorrect [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2282</td><td>1034</td><td>Nombre de secuencia [2] no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_23</td><td>1033</td><td>Impossible de créer le fichier [2]. Un répertoire du même nom existe déjà. Annulez l'installation et essayez d'installer à un autre emplacement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_23</td><td>1034</td><td>No se puede crear el archivo '[2]'. Ya existe un directorio con ese nombre. Cancele la instalación y pruebe a instalar en una ubicación distinta.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2302</td><td>1033</td><td>Notification de correctif : [2] octets corrigés.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2302</td><td>1034</td><td>Notificación de revisión: [2] bytes revisados hasta ahora.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2303</td><td>1033</td><td>Erreur d'obtention des informations de volume. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2303</td><td>1034</td><td>Error al obtener información de volumen. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2304</td><td>1033</td><td>Erreur lors de la tentative d'obtention d'espace disque. GetLastError : [2]. Volume : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2304</td><td>1034</td><td>Error al obtener espacio libre en disco. Obtener último error: [2]. Volumen: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2305</td><td>1033</td><td>Erreur d'attente du thread du correctif. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2305</td><td>1034</td><td>Error durante la espera del subproceso de revisión. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2306</td><td>1033</td><td>Impossible de créer un thread pour l'application de correction. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2306</td><td>1034</td><td>No se pudo crear el subproceso de la aplicación de revisión. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2307</td><td>1033</td><td>Le nom de fichier source est vide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2307</td><td>1034</td><td>El nombre de la clave del archivo de origen es nulo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2308</td><td>1033</td><td>Le nom de fichier de destination est vide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2308</td><td>1034</td><td>El nombre del archivo de destino es nulo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2309</td><td>1033</td><td>Tentative de correction du fichier [2] alors que le correctif est déjà en cours d'exécution.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2309</td><td>1034</td><td>Se intenta aplicar la revisión al archivo [2] con el proceso de revisión ya en curso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2310</td><td>1033</td><td>Tentative de poursuite de la correction alors que le correctif n'est pas en cours d'exécution.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2310</td><td>1034</td><td>Se intenta continuar con la revisión cuando no hay ninguna revisión en curso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2315</td><td>1033</td><td>Séparateur de chemin manquant : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2315</td><td>1034</td><td>Falta separador de ruta: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2318</td><td>1033</td><td>Le fichier n'existe pas : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2318</td><td>1034</td><td>El archivo no existe: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2319</td><td>1033</td><td>Erreur de définition de l'attribut du fichier : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2319</td><td>1034</td><td>Error al configurar atributo de archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2320</td><td>1033</td><td>Fichier en lecture seule : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2320</td><td>1034</td><td>No se puede escribir en el archivo: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2321</td><td>1033</td><td>Erreur lors de la création du fichier : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2321</td><td>1034</td><td>Error al crear archivo: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2322</td><td>1033</td><td>Utilisateur annulé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2322</td><td>1034</td><td>Cancelado por el usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2323</td><td>1033</td><td>Attribut de fichier incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2323</td><td>1034</td><td>Atributo de archivo no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2324</td><td>1033</td><td>Ouverture de fichier échouée : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2324</td><td>1034</td><td>Error al abrir el archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2325</td><td>1033</td><td>Impossible d'obtenir l'heure fichier pour le fichier : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2325</td><td>1034</td><td>No se pudo obtener la hora de archivo del archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2326</td><td>1033</td><td>Erreur dans FileToDosDateTime.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2326</td><td>1034</td><td>Error en Archivo hasta fecha/hora DOS.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2327</td><td>1033</td><td>impossible de supprimer le répertoire : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2327</td><td>1034</td><td>No se pudo eliminar el directorio: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2328</td><td>1033</td><td>Erreur d'obtention d'informations de version pour le fichier : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2328</td><td>1034</td><td>Error al obtener información sobre la versión de archivo del archivo: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2329</td><td>1033</td><td>Erreur lors de la suppression du fichier : [3]. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2329</td><td>1034</td><td>Error al suprimir archivo: [3]. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2330</td><td>1033</td><td>Erreur d'obtention des attributs du fichier : [3]. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2330</td><td>1034</td><td>Error al obtener atributos de archivo: [3]. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2331</td><td>1033</td><td>Erreur lors du chargement de la bibliothèque [2] ou de la recherche du point d'entrée [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2331</td><td>1034</td><td>Error al cargar la biblioteca [2] o al buscar el punto de entrada [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2332</td><td>1033</td><td>Erreur d'obtention des attributs du fichier. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2332</td><td>1034</td><td>Error al obtener atributos de archivo. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2333</td><td>1033</td><td>Erreur de définition des attributs de fichier. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2333</td><td>1034</td><td>Error al configurar atributos de archivo. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2334</td><td>1033</td><td>Erreur de conversion de l'heure fichier en heure locale pour le fichier : [3]. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2334</td><td>1034</td><td>Error al convertir la hora de archivo a la hora local en el archivo: [3]. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2335</td><td>1033</td><td>Chemin d'accès : [2] n'est pas un parent de [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2335</td><td>1034</td><td>Ruta: [2] no es un elemento principal de [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2336</td><td>1033</td><td>Erreur lors de la création d'un fichier temporaire dans le dossier : [3]. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2336</td><td>1034</td><td>Error al crear archivo temporal en la ruta: [3]. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2337</td><td>1033</td><td>Impossible de fermer le fichier : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2337</td><td>1034</td><td>Error al cerrar el archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2338</td><td>1033</td><td>Impossible de mettre à jour la ressource pour le fichier : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2338</td><td>1034</td><td>No se pudo actualizar el recurso para el archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2339</td><td>1033</td><td>Impossible définir l'heure fichier pour le fichier : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2339</td><td>1034</td><td>No se pudo establecer la hora de archivo del archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2340</td><td>1033</td><td>Impossible de mettre à jour la ressource pour le fichier : [3], ressource manquante.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2340</td><td>1034</td><td>No se pudo actualizar el recurso para el archivo: [3], Falta el recurso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2341</td><td>1033</td><td>Impossible de mettre à jour la ressource pour le fichier : [3], ressource trop importante.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2341</td><td>1034</td><td>No se pudo actualizar el recurso para el archivo: [3], El recurso es demasiado grande.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2342</td><td>1033</td><td>Impossible de mettre à jour la ressource pour le fichier : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2342</td><td>1034</td><td>No se pudo actualizar el recurso para el archivo: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2343</td><td>1033</td><td>Le chemin défini est vide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2343</td><td>1034</td><td>La ruta especificada está vacía.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2344</td><td>1033</td><td>Impossible de trouver le fichier IMAGEHLP.DLL requis pour valider le fichier :[2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2344</td><td>1034</td><td>No se pudo encontrar el archivo IMAGEHLP.DLL necesario para validar el archivo:[2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2345</td><td>1033</td><td>[2]: le fichier ne contient pas de valeur de somme de contrôle valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2345</td><td>1034</td><td>[2]: El archivo no contiene un valor de suma de comprobación válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2347</td><td>1033</td><td>Ignorer utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2347</td><td>1034</td><td>Ignorado por el usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2348</td><td>1033</td><td>Erreur lors d'une tentative de lecture à partir d'un fichier .cab.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2348</td><td>1034</td><td>Error al intentar leer desde la secuencia del archivo .cab.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2349</td><td>1033</td><td>La copie a repris avec des informations différentes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2349</td><td>1034</td><td>Copia reanudada con información diferente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2350</td><td>1033</td><td>Erreur serveur FDI</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2350</td><td>1034</td><td>Error de servidor FDI</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2351</td><td>1033</td><td>Clé de fichier '[2]' introuvable dans le fichier .cab '[3]'. L'installation ne peut pas se poursuivre.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2351</td><td>1034</td><td>Clave de archivo '[2]' no encontrada en el archivo .cab '[3]'. El proceso de instalación no puede continuar.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2352</td><td>1033</td><td>Impossible d'initialiser le serveur de fichiers .cab. Le fichier requis 'CABINET.DLL' est peut-être manquant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2352</td><td>1034</td><td>No se pudo inicializar el servidor del archivo .cab. Puede que falte el archivo 'CABINET.DLL' requerido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2353</td><td>1033</td><td>N'est pas un fichier .cab.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2353</td><td>1034</td><td>No es un archivo .cab.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2354</td><td>1033</td><td>Impossible de gérer le fichier .cab.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2354</td><td>1034</td><td>No se puede gestionar el archivo .cab.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2355</td><td>1033</td><td>Fichier .cab corrompu.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2355</td><td>1034</td><td>Archivo .cab dañado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2356</td><td>1033</td><td>Fichier. Cab introuvable dans le flux : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2356</td><td>1034</td><td>No se pudo localizar el archivo .cab en la secuencia: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2357</td><td>1033</td><td>Impossible de définir des attributs.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2357</td><td>1034</td><td>No se pueden establecer atributos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2358</td><td>1033</td><td>Erreur lors de la détermination de l'activité d'un fichier : [3]. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2358</td><td>1034</td><td>Error al determinar si el archivo se encuentra en uso: [3]. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2359</td><td>1033</td><td>Impossible de créer le fichier cible. Le fichier est peut-être en cours d'utilisation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2359</td><td>1034</td><td>No es posible crear el archivo de destino; puede que el archivo se encuentre en uso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2360</td><td>1033</td><td>Battement de progression.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2360</td><td>1034</td><td>Marca de progreso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2361</td><td>1033</td><td>Fichier .cab suivant nécessaire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2361</td><td>1034</td><td>Se requiere el archivo .cab siguiente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2362</td><td>1033</td><td>Dossier introuvable : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2362</td><td>1034</td><td>Carpeta no encontrada: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2363</td><td>1033</td><td>Impossible d'énumérer les sous-dossiers pour le dossier : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2363</td><td>1034</td><td>No se pudieron enumerar las subcarpetas de la carpeta: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2364</td><td>1033</td><td>Mauvaise constante d'énumération dans l'appel CreateCopier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2364</td><td>1034</td><td>Constante de enumeración incorrecta en la llamada Crear copiador.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2365</td><td>1033</td><td>BindImage exe pour le fichier [2] impossible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2365</td><td>1034</td><td>No se pudo ejecutar Vincular imagen en el archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2366</td><td>1033</td><td>Echec utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2366</td><td>1034</td><td>Fallo del usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2367</td><td>1033</td><td>Annuler utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2367</td><td>1034</td><td>Anulado por el usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2368</td><td>1033</td><td>Impossible d'obtenir des informations de ressource de réseau. Erreur [2], chemin d'accès au réseau [3]. Erreur étendue : fournisseur de réseau [5], code d'erreur [4], description d'erreur [6].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2368</td><td>1034</td><td>Fallo al obtener información de los recursos de red. Error [2], ruta de red [3]. Error ampliado: proveedor de red [5], código de error [4], descripción del error [6].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2370</td><td>1033</td><td>Valeur de somme de contrôle CRC invalide pour le fichier [2]. {La valeur indiquée dans l'en-tête est [3], alors que la valeur calculée est [4].}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2370</td><td>1034</td><td>Valor de suma de comprobación por redundancia cíclica (CRC) del archivo [2] no válido.{ El encabezado indica [3] para la suma de comprobación; el valor calculado es [4].}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2371</td><td>1033</td><td>Impossible d'appliquer le correctif au fichier [2]. GetLastError : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2371</td><td>1034</td><td>No se pudo aplicar la revisión al archivo [2]. Obtener último error: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2372</td><td>1033</td><td>Le fichier correctif [2] est corrompu ou dans un format incorrect. Tentative de correction du fichier [3]. GetLastError : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2372</td><td>1034</td><td>El archivo de revisión [2] está dañado o el formato no es válido. Intentando aplicar revisión al archivo [3]. Obtener último error: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2373</td><td>1033</td><td>Le fichier [2] n'est pas un fichier correctif valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2373</td><td>1034</td><td>El archivo [2] no es un archivo de revisión válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2374</td><td>1033</td><td>Le fichier [2] n'est pas un fichier de destination valide pour le fichier correctif [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2374</td><td>1034</td><td>El archivo [2] no es un archivo de destino válido para el archivo de revisión [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2375</td><td>1033</td><td>Erreur de correction inconnue : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2375</td><td>1034</td><td>Error de revisión desconocido: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2376</td><td>1033</td><td>Fichier .cab introuvable.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2376</td><td>1034</td><td>Archivo .cab no encontrado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2379</td><td>1033</td><td>Erreur d'ouverture du fichier en mode lecture : [3] GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2379</td><td>1034</td><td>Error al abrir el archivo para su lectura: [3] Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2380</td><td>1033</td><td>Erreur d'ouverture du fichier en mode écriture : [3]. GetLastError : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2380</td><td>1034</td><td>Error al abrir el archivo para su escritura: [3]. Obtener último error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2381</td><td>1033</td><td>Le répertoire n'existe pas : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2381</td><td>1034</td><td>El directorio no existe: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2382</td><td>1033</td><td>Lecteur non disponible : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2382</td><td>1034</td><td>La unidad no está lista: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_24</td><td>1033</td><td>Insérez le disque : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_24</td><td>1034</td><td>Inserte el disco [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2401</td><td>1033</td><td>Tentative d'enregistrement 64 bits sur un système d'exploitation 32 bits pour la clé [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2401</td><td>1034</td><td>Se ha intentado realizar una operación de registro de 64 bits en un sistema operativo de 32 bits en relación a la clave [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2402</td><td>1033</td><td>Plus de mémoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2402</td><td>1034</td><td>No hay suficiente memoria.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_25</td><td>1033</td><td>Le programme d'installation ne dispose pas des privilèges suffisants pour accéder au répertoire [2]. Impossible de poursuivre l'installation. Ouvrez une session en tant qu'administrateur ou contactez votre administrateur système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_25</td><td>1034</td><td>El instalador no dispone de privilegios suficientes para obtener acceso al directorio [2] y no se puede continuar con la instalación. Inicie la sesión como administrador o póngase en contacto con el administrador del sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2501</td><td>1033</td><td>Impossible de créer un énumérateur de script rollback.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2501</td><td>1034</td><td>No se pudo crear el enumerador del archivo de comandos de la acción para deshacer.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2502</td><td>1033</td><td>InstallFinalize appelé alors qu'aucune installation n'est en cours.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2502</td><td>1034</td><td>Se ha llamado a Finalizar instalación cuando no hay ninguna instalación en curso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2503</td><td>1033</td><td>RunScript appelé s'il n'est pas en cours d'utilisation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2503</td><td>1034</td><td>Se ha llamado a Ejecutar archivo de comandos cuando no se indica que se encuentre en curso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_26</td><td>1033</td><td>Erreur lors de l'écriture dans le fichier [2]. Vérifiez que vous êtes autorisé à accéder à ce répertoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_26</td><td>1034</td><td>Error al escribir en el archivo [2]. Compruebe que dispone de acceso a ese directorio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2601</td><td>1033</td><td>Valeur incorrecte pour la propriété [2]: '[3]'</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2601</td><td>1034</td><td>Valor no válido para la propiedad [2]: '[3]'</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2602</td><td>1033</td><td>Dans la table [2], aucune entrée de la table des supports n'est associée à l'entrée '[3]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2602</td><td>1034</td><td>La [2] entrada de tabla '[3]' no tiene ninguna entrada asociada en la tabla Medios.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2603</td><td>1033</td><td>Nom de la table [2] en double.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2603</td><td>1034</td><td>Nombre de tabla [2] duplicado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2604</td><td>1033</td><td>Propriété [2] non définie.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2604</td><td>1034</td><td>[2] Propiedad no definida.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2605</td><td>1033</td><td>Serveur [2] introuvable dans [3] ou [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2605</td><td>1034</td><td>No se pudo encontrar el servidor [2] en [3] o [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2606</td><td>1033</td><td>La valeur de la propriété [2] n'est pas un chemin complet valide : '[3]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2606</td><td>1034</td><td>El valor de la propiedad [2] no es una ruta completa válida: '[3]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2607</td><td>1033</td><td>Table des supports introuvable ou vide (elle est requise pour l'installation des fichiers).</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2607</td><td>1034</td><td>La tabla Medios no se ha encontrado o está vacía (necesaria para la instalación de los archivos).</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2608</td><td>1033</td><td>Impossible de créer un descripteur de sécurité pour l'objet. Erreur : '[2]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2608</td><td>1034</td><td>No se pudo crear un descriptor de seguridad para el objeto. Error: '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2609</td><td>1033</td><td>Tentative de migration des paramètres du produit avant l'initialisation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2609</td><td>1034</td><td>Intente actualizar la configuración del producto antes de la inicialización.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2611</td><td>1033</td><td>Le fichier [2] est marqué comme étant compressé, mais les entrées de support associées ne spécifient pas de fichier .cab.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2611</td><td>1034</td><td>El archivo [2] está marcado como comprimido, pero la entrada del medio asociado no especifica ningún archivo .cab.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2612</td><td>1033</td><td>Flux introuvable dans la colonne [2]. Clé primaire : '[3]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2612</td><td>1034</td><td>La secuencia no se ha encontrado en la columna '[2]'. Clave principal: '[3]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2613</td><td>1033</td><td>action RemoveExistingProducts séquencée incorrectement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2613</td><td>1034</td><td>La secuencia de la acción Eliminar productos existentes no es correcta.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2614</td><td>1033</td><td>Impossible d'accéder à l'objet IStorage à partir du logiciel d'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2614</td><td>1034</td><td>No se pudo acceder al objeto IStorage desde el paquete de instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2615</td><td>1033</td><td>Désinscription du module [2] ignorée, en raison de l'échec de résolution de la source.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2615</td><td>1034</td><td>Se ha omitido la anulación del registro del módulo [2] debido a un fallo de resolución de origen.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2616</td><td>1033</td><td>Le parent du fichier [2] assistant est manquant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2616</td><td>1034</td><td>Falta elemento principal del archivo complementario [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2617</td><td>1033</td><td>Composant partagé [2] introuvable dans la table des composants.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2617</td><td>1034</td><td>No se ha encontrado el componente compartido [2] en la tabla Componente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2618</td><td>1033</td><td>Composant d'application isolé [2] introuvable dans la table des composants.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2618</td><td>1034</td><td>No se ha encontrado el componente de aplicación aislado [2] en la tabla Componente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2619</td><td>1033</td><td>Composants isolés [2], [3] ne font pas partie de la même fonction.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2619</td><td>1034</td><td>Los componentes aislados [2], [3] no forman parte de la misma función.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2620</td><td>1033</td><td>Le fichier clé du composant d'application isolé [2] est introuvable dans la table des fichiers.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2620</td><td>1034</td><td>El archivo de claves del componente de aplicación aislado [2] no se encuentra en la tabla Archivo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2621</td><td>1033</td><td>informations de DLL ressource ou d'ID ressource pour le raccourci [2] mal défini.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2621</td><td>1034</td><td>La información de la ID o DLL de recursos del acceso directo [2] no se ha establecido correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27</td><td>1033</td><td>Erreur lors de la lecture du fichier [2]. {{ Erreur système [3].}}Vérifiez que ce fichier existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27</td><td>1034</td><td>Error al leer el archivo [2]. {{ Error del sistema [3].}} Compruebe que el archivo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2701</td><td>1033</td><td>La profondeur d'une fonction dépasse la profondeur maximale acceptable de [2] niveaux dans l'arborescence.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2701</td><td>1034</td><td>La profundidad de una función excede el máximo de [2] niveles de profundidad del árbol admitidos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2702</td><td>1033</td><td>Un enregistrement de la table Fonction ([2]) se réfère à un parent non existant dans le champ Attributs.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2702</td><td>1034</td><td>Un registro de la tabla Función ([2]) hace referencia a un elemento principal no existente en el campo Atributos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2703</td><td>1033</td><td>Nom de propriété non défini pour le chemin source racine : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2703</td><td>1034</td><td>No se ha definido el nombre de propiedad de la ruta de origen raíz: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2704</td><td>1033</td><td>Propriété du répertoire racine non définie : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2704</td><td>1034</td><td>Propiedad de directorio raíz no definida: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2705</td><td>1033</td><td>Table invalide : [2] ; n'a pas pu être relier en tant qu'arborescence.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2705</td><td>1034</td><td>Tabla no válida: [2]; No se pudo vincular como árbol.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2706</td><td>1033</td><td>Les chemins d'accès source n'ont pas été créés. Aucun chemin d'accès n'existe pour l'entrée [2] dans la table Répertoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2706</td><td>1034</td><td>No se han creado las rutas de origen. No existe ninguna ruta para la entrada [2] en la tabla Directorio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2707</td><td>1033</td><td>Les chemins d'accès cible n'ont pas été créés. Aucun chemin d'accès n'existe pour l'entrée [2] dans la table Répertoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2707</td><td>1034</td><td>No se han creado las rutas de destino. No existe ninguna ruta para la entrada [2] en la tabla Directorios.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2708</td><td>1033</td><td>Entrées introuvables dans la table de fichier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2708</td><td>1034</td><td>No se han encontrado entradas en la tabla de archivos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2709</td><td>1033</td><td>Le nom de composant spécifié ('[2]') est introuvable dans la table des composants.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2709</td><td>1034</td><td>No se ha encontrado el nombre del componente especificado ('[2]') en la tabla Componente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2710</td><td>1033</td><td>L'état 'Select' requis est illégal pour ce composant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2710</td><td>1034</td><td>El estado 'Seleccionar' solicitado no es válido para este componente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2711</td><td>1033</td><td>Le nom de fonction spécifié ('[2]') est introuvable dans la table Fonction.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2711</td><td>1034</td><td>No se ha encontrado el nombre de función especificado ('[2]') en la tabla Función.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2712</td><td>1033</td><td>Renvoi invalide de la boîte de dialogue sans mode : [3], lors de l'action [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2712</td><td>1034</td><td>Devolución no válida desde el cuadro de diálogo no modal: [3], en la acción [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2713</td><td>1033</td><td>Valeur vide dans une colonne non vide ('[2]' dans la colonne '[3]' de la table '[4]').</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2713</td><td>1034</td><td>Valor nulo en una columna que no puede dejarse vacía ('[2]' en la columna '[3]' de la tabla '[4]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2714</td><td>1033</td><td>Valeur incorrecte pour le nom du dossier par défaut : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2714</td><td>1034</td><td>Valor no válido para el nombre de carpeta predeterminado: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2715</td><td>1033</td><td>La clé de fichier spécifiée ('[2]') est introuvable dans la table Fichier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2715</td><td>1034</td><td>No se ha encontrado la clave de archivo especificada ('[2]') en la tabla Archivo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2716</td><td>1033</td><td>Impossible de créer un nom de sous-composant aléatoire pour le composant '[2]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2716</td><td>1034</td><td>No se pudo crear un nombre de subcomponente aleatorio para el componente '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2717</td><td>1033</td><td>Mauvaise condition d'action ou erreur lors de l'appel de l'action personnalisée '[2]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2717</td><td>1034</td><td>Condición de acción incorrecta o acción personalizada de llamada a error '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2718</td><td>1033</td><td>Nom de package manquant pour le code produit '[2]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2718</td><td>1034</td><td>Falta el nombre de paquete para el código del producto '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2719</td><td>1033</td><td>Pas de chemin UNC ni de chemin avec une lettre de lecteur trouvés dans la source '[2]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2719</td><td>1034</td><td>No se ha encontrado ni la ruta de la letra de la unidad ni la ruta UNC en el origen '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2720</td><td>1033</td><td>Une erreur est survenue lors de l'ouverture de la clé de liste source. Erreur : '[2]'</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2720</td><td>1034</td><td>Error al abrir clave de lista de orígenes. Error: '[2]'</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2721</td><td>1033</td><td>Action personnalisée [2] introuvable dans le flux de la table Binaire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2721</td><td>1034</td><td>Acción personalizada [2] no encontrada en la secuencia de la tabla Binarios.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2722</td><td>1033</td><td>Action personnalisée [2] introuvable dans la table de fichier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2722</td><td>1034</td><td>Acción personalizada [2] no encontrada en la tabla Archivo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2723</td><td>1033</td><td>L'action personnalisée [2] définit un type non pris en charge.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2723</td><td>1034</td><td>La acción personalizada [2] especifica un tipo no admitido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2724</td><td>1033</td><td>L'étiquette de volume '[2]' du support que vous exécutez ne correspond pas à l'étiquette '[3]' listée dans la table de supports. Ceci est uniquement autorisé s'il n'existe qu'une seule entrée dans votre table des supports.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2724</td><td>1034</td><td>La etiqueta del volumen '[2]' del medio desde el que ejecuta la instalación no coincide con la etiqueta '[3]' proporcionada en la tabla Medios. Esto únicamente es posible si sólo hay 1 entrada en la tabla Medios.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2725</td><td>1033</td><td>Table de base de données incorrecte</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2725</td><td>1034</td><td>Tablas de base de datos no válidas</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2726</td><td>1033</td><td>Action introuvable : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2726</td><td>1034</td><td>Acción no encontrada: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2727</td><td>1033</td><td>L'entrée de répertoire '[2]' n'existe pas dans la table Répertoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2727</td><td>1034</td><td>La entrada de directorio '[2]' no existe en la tabla Directorio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2728</td><td>1033</td><td>Erreur de définition de table : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2728</td><td>1034</td><td>Error de definición de tabla: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2729</td><td>1033</td><td>Moteur d'installation non initialisé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2729</td><td>1034</td><td>El motor de instalación no se ha inicializado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2730</td><td>1033</td><td>Valeur incorrecte dans la base de données. Table : '[2]' ; clé primaire : '[3]' ; Colonne : '[4]'</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2730</td><td>1034</td><td>Valor incorrecto en la base de datos. Tabla: '[2]'; Clave principal: '[3]'; Columna: '[4]'</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2731</td><td>1033</td><td>Le gestionnaire de sélection n'est pas initialisé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2731</td><td>1034</td><td>Administrador de selección no inicializado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2732</td><td>1033</td><td>Le gestionnaire de répertoire n'est pas initialisé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2732</td><td>1034</td><td>Administrador de directorio no inicializado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2733</td><td>1033</td><td>Mauvaise clé étrangère ('[2]') dans la colonne '[3]' de la table '[4]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2733</td><td>1034</td><td>Clave externa incorrecta ('[2]') en la columna '[3]' de la tabla '[4]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2734</td><td>1033</td><td>Caractère de mode de réinstallation incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2734</td><td>1034</td><td>Carácter de modo de reinstalación no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2735</td><td>1033</td><td>L'action personnalisée '[2]' a provoqué une exception non gérée et a été interrompue. Ceci peut être le résultat d'une erreur interne de l'action personnalisée, telle qu'une violation d'accès.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2735</td><td>1034</td><td>La acción personalizada '[2]' ha provocado una excepción no identificada y se ha detenido. Esto puede ser resultado de un error interno en la acción personalizada, como una infracción de acceso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2736</td><td>1033</td><td>Echec de génération de fichier temporaire pour une action personnalisée [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2736</td><td>1034</td><td>La generación del archivo temporal de acción personalizada no se ha realizado correctamente: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2737</td><td>1033</td><td>Impossible d'accéder à l'action personnalisée [2], entrée [3], bibliothèque [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2737</td><td>1034</td><td>No se pudo acceder a la acción personalizada [2], entrada [3], biblioteca [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2738</td><td>1033</td><td>Impossible d'accéder à VBScript run time pour l'action personnalisée [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2738</td><td>1034</td><td>No se pudo acceder al tiempo de ejecución de VBScript para la acción personalizada [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2739</td><td>1033</td><td>Impossible d'accéder à JavaScript run time pour l'action personnalisée [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2739</td><td>1034</td><td>No se pudo acceder al tiempo de ejecución de JavaScript para la acción personalizada [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2740</td><td>1033</td><td>Action personnalisée [2] erreur de script [3], [4] : [5] Ligne [6], Colonne [7], [8].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2740</td><td>1034</td><td>Acción personalizada [2] error de archivo de comandos [3], [4]: [5] Línea [6], Columna [7], [8].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2741</td><td>1033</td><td>Les informations de configuration pour le produit [2] sont corrompues. Information incorrecte : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2741</td><td>1034</td><td>La información de configuración del producto [2] está dañada. Información no válida: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2742</td><td>1033</td><td>Echec de l'assemblage vers le serveur : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2742</td><td>1034</td><td>El cálculo de referencia del servidor no se ha realizado correctamente: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2743</td><td>1033</td><td>Impossible d'exécuter l'action personnalisée [2], emplacement : [3], commande : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2743</td><td>1034</td><td>No se pudo ejecutar la acción personalizada [2], ubicación: [3], comando: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2744</td><td>1033</td><td>Echec de l'EXE appelé par une action personnalisée [2], emplacement : [3], commande : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2744</td><td>1034</td><td>Fallo en archivo ejecutable llamado mediante la acción personalizada [2], ubicación: [3], comando: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2745</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Langue attendue [4], langue trouvée [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2745</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Idioma previsto [4]; idioma encontrado [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2746</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Produit attendu [4], produit trouvé [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2746</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Producto previsto [4]; producto encontrado [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2747</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Version de produit attendue &lt; [4], version de produit trouvée [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2747</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Versión del producto prevista &lt; [4]; versión del producto encontrada [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2748</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Version de produit attendue &lt;= [4], version de produit trouvée [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2748</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Versión del producto prevista &lt;= [4]; versión del producto encontrada [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2749</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Version de produit attendue == [4], version de produit trouvée [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2749</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Versión del producto prevista == [4]; versión del producto encontrada [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2750</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Version de produit attendue &gt;= [4], version de produit trouvée [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2750</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Versión del producto prevista &gt;= [4]; versión del producto encontrada [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27502</td><td>1033</td><td>Impossible de se connecter à [2] '[3]'. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27502</td><td>1034</td><td>No se pudo conectar al [2] '[3]'. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27503</td><td>1033</td><td>Erreur lors de la récupération de la chaîne de version depuis [2] '[3]'. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27503</td><td>1034</td><td>Error al recuperar la cadena de la versión de [2] '[3]'. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27504</td><td>1033</td><td>Les conditions de version SQL ne sont pas remplies : [3]. Cette installation requiert [2] [4] ou supérieur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27504</td><td>1034</td><td>No se cumplen los requisitos de la versión de SQL: [3]. Esta instalación requiere [2] [4] o posterior.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27505</td><td>1033</td><td>Impossible d'ouvrir le fichier script SQL [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27505</td><td>1034</td><td>No se pudo abrir el archivo de comandos de SQL [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27506</td><td>1033</td><td>Erreur d'exécution du script SQL [2]. Ligne [3]. [4]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27506</td><td>1034</td><td>Error al ejecutar el archivo de comandos de SQL [2]. Línea [3]. [4]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27507</td><td>1033</td><td>La recherche ou la connexion des serveurs de bases de données nécessite l'installation de MDAC.  L'assistant d'installation va maintenant se terminer.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27507</td><td>1034</td><td>Examinar servidores de bases de datos o conectarse a ellos requiere que MDAC esté instalado.  La instalación va a finalizar.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27508</td><td>1033</td><td>Erreur en installant l'application COM+ [2]. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27508</td><td>1034</td><td>Error al instalar la aplicación COM+ [2]. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27509</td><td>1033</td><td>Erreur en désinstallant l'application COM+ [2]. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27509</td><td>1034</td><td>Error al desinstalar la aplicación COM+ [2]. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2751</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Version de produit attendue &gt; [4], version de produit trouvée [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2751</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Versión del producto prevista &gt; [4]; versión del producto encontrada [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27510</td><td>1033</td><td>Erreur en installant l'application COM+ [2]. Impossible de créer l'objet System.EnterpriseServices.RegistrationHelper. L'enregistrement de composants Microsoft(R) .NET nécessite l'installation de Microsoft(R) .NET Framework.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27510</td><td>1034</td><td>Error al instalar la aplicación COM+ [2]. No se pudo crear el objeto System.EnterpriseServices.RegistrationHelper. Para registrar los componentes utilizados por Microsoft(R) .NET, Microsoft(R) .NET Framework deberá estar instalado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27511</td><td>1033</td><td>Impossible d'exécuter le fichier script SQL [2]. Connexion non ouverte : [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27511</td><td>1034</td><td>No se pudo ejecutar el archivo de comandos de SQL [2]. La conexión no está abierta: [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27512</td><td>1033</td><td>Erreur au début des transactions pour [2] '[3]'. Base de données [4]. [5]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27512</td><td>1034</td><td>Error al comenzar las transacciones para [2] '[3]'. Base de datos [4]. [5]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27513</td><td>1033</td><td>Erreur dans les transactions pour [2] '[3]'. Base de données [4]. [5]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27513</td><td>1034</td><td>Error al realizar transacciones para [2] '[3]'. Base de datos [4]. [5]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27514</td><td>1033</td><td>Cette installation nécessite Microsoft SQL Server. Le serveur '[3]' défini est un Microsoft SQL Server Desktop Engine (MSDE) ou SQL Server Express.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27514</td><td>1034</td><td>Esta instalación necesita Microsoft SQL Server. El servidor especificado '[3]' es Microsoft SQL Server Desktop Engine o SQL Server Express.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27515</td><td>1033</td><td>Erreur lors de la récupération de la version du schéma depuis [2] '[3]'. Base de données : '[4]'. [5]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27515</td><td>1034</td><td>Error al recuperar la versión esquemática desde [2] '[3]'. Base de datos: '[4]'. [5]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27516</td><td>1033</td><td>Erreur lors de l'écriture de la version du schéma vers [2] '[3]'. Base de données : '[4]'. [5]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27516</td><td>1034</td><td>Error al escribir la versión esquemática hacia [2] '[3]'. Base de datos: '[4]'. [5]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27517</td><td>1033</td><td>Cette installation exige les privilèges d’administrateur pour les applications COM+. Ouvrez une session d’administrateur et relancez l’installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27517</td><td>1034</td><td>Esta instalación requiere privilegios de administrador para instalar aplicaciones COM+. Inicie sesión como administrador e intente de nuevo llevar a cabo esta instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27518</td><td>1033</td><td>L’application COM+ "[2]" est configurée sous forme de service NT ; cette application exige COM+ 1.5 (ou version ultérieure). Votre système disposant uniquement de COM+ 1.0, cette application ne sera pas installée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27518</td><td>1034</td><td>La aplicación COM+ "[2]" está configurada para funcionar como un servicio NT; esto requiere que su sistema tenga instalado COM+ 1.5 o posterior. Como su sistema tiene COM+ 1.0, esta aplicación no se instalará.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27519</td><td>1033</td><td>Erreur lors de la mise à jour du fichier XML [2]. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27519</td><td>1034</td><td>Error al actualizar el archivo XML [2]. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2752</td><td>1033</td><td>Impossible d'ouvrir la transformation [2] stockée en tant qu'enfant du logiciel [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2752</td><td>1034</td><td>No se pudo abrir la transformación [2] almacenada como almacenamiento secundario del paquete [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27520</td><td>1033</td><td>Erreur lors de l'ouverture du fichier XML [2]. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27520</td><td>1034</td><td>Error al abrir el archivo XML [2]. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27521</td><td>1033</td><td>Cette installation requiert MSXML 3.0 ou supérieur pour la configuration des fichiers XML. Assurez-vous de bien utiliser la version 3.0 ou plus récente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27521</td><td>1034</td><td>Para configurar archivos XML, el programa de instalación necesita MSXML 3.0 o posterior. Compruebe que dispone de la versión 3.0 o posterior.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27522</td><td>1033</td><td>Erreur lors de la création du fichier XML [2]. [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27522</td><td>1034</td><td>Error al crear el archivo XML [2]. [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27523</td><td>1033</td><td>Erreur lors du chargement des serveurs.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27523</td><td>1034</td><td>Error al cargar servidores.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27524</td><td>1033</td><td>Erreur lors du chargement de NetApi32.DLL. ISNetApi.dll requiert un système d'exploitation NT et le chargement correct de NetApi32.DLL.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27524</td><td>1034</td><td>Error al cargar NetApi32.DLL. ISNetApi.dll necesita que NetApi32.DLL se haya cargado correctamente y requiere un sistema operativo basado en NT.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27525</td><td>1033</td><td>Serveur introuvable. Vérifiez que le serveur spécifié existe. Le nom du serveur ne peut pas être vide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27525</td><td>1034</td><td>El servidor no se ha encontrado. Compruebe que el servidor especificado existe. El nombre de servidor no puede estar vacío.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27526</td><td>1033</td><td>Erreur non spécifique de ISNetApi.dll.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27526</td><td>1034</td><td>Error no especificado de ISNetApi.dll.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27527</td><td>1033</td><td>La mémoire tampon n'est pas assez importante.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27527</td><td>1034</td><td>El búfer es demasiado pequeño.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27528</td><td>1033</td><td>Accès refusé. Cochez les droits administratifs.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27528</td><td>1034</td><td>Acceso denegado. Compruebe los derechos de administración.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27529</td><td>1033</td><td>Ordinateur incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27529</td><td>1034</td><td>Equipo no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2753</td><td>1033</td><td>Le fichier '[2]' n'est pas marqué pour l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2753</td><td>1034</td><td>El archivo '[2]' no está marcado para su instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27530</td><td>1033</td><td>Une erreur inconnue a été renvoyée par NetAPI. Erreur système : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27530</td><td>1034</td><td>Se ha recibido un error desconocido de NetAPI. Error del sistema: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27531</td><td>1033</td><td>Exception non traitée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27531</td><td>1034</td><td>Excepción no identificada.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27532</td><td>1033</td><td>Nom d'utilisateur incorrect pour ce serveur ou ce domaine.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27532</td><td>1034</td><td>Nombre de usuario no válido para este servidor o dominio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27533</td><td>1033</td><td>Les mots de passe respectant la casse ne correspondent pas.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27533</td><td>1034</td><td>Las contraseñas que distinguen entre mayúscula y minúscula no coinciden.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27534</td><td>1033</td><td>La liste est vide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27534</td><td>1034</td><td>La lista está vacía.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27535</td><td>1033</td><td>Violation d'accès.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27535</td><td>1034</td><td>Infracción de acceso.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27536</td><td>1033</td><td>Erreur lors de l'obtention du groupe.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27536</td><td>1034</td><td>Error al obtener grupo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27537</td><td>1033</td><td>Erreur lors de l'ajout de l'utilisateur au groupe. Vérifiez que le groupe existe pour ce domaine ou ce serveur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27537</td><td>1034</td><td>Error al añadir el usuario al grupo. Compruebe que el grupo existe para este dominio o servidor.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27538</td><td>1033</td><td>Erreur lors de la création de l'utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27538</td><td>1034</td><td>Error al crear usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27539</td><td>1033</td><td>ERROR_NETAPI_ERROR_NOT_PRIMARY renvoyée par NetAPI.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27539</td><td>1034</td><td>NetAPI devolvió el código de error ERROR_NETAPI_ERROR_NOT_PRIMARY.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2754</td><td>1033</td><td>Le fichier '[2]' n'est pas un fichier correctif valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2754</td><td>1034</td><td>El archivo '[2]' no es un archivo de revisión válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27540</td><td>1033</td><td>L'utilisateur spécifié existe déjà.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27540</td><td>1034</td><td>El usuario especificado ya existe.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27541</td><td>1033</td><td>Le groupe spécifié existe déjà.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27541</td><td>1034</td><td>El grupo especificado ya existe.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27542</td><td>1033</td><td>Mot de passe incorrect. Vérifiez que le mot de passe respecte les directives de votre réseau pour les mots de passe.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27542</td><td>1034</td><td>Contraseña no válida. Compruebe que la contraseña cumple con la política de contraseñas de red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27543</td><td>1033</td><td>Nom incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27543</td><td>1034</td><td>Nombre no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27544</td><td>1033</td><td>Groupe incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27544</td><td>1034</td><td>Grupo no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27545</td><td>1033</td><td>Le nom d'utilisateur ne peut pas être laissé vide et doit avoir le format DOMAIN\NomUtilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27545</td><td>1034</td><td>El nombre de usuario no se puede dejar en blanco y debe introducirse de acuerdo con el formato DOMINIO\Nombre de usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27546</td><td>1033</td><td>Erreur lors du téléchargement ou de la création du fichier INI dans le répertoire TEMP de l'utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27546</td><td>1034</td><td>Error al cargar o crear el archivo INI en el directorio TEMP.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27547</td><td>1033</td><td>ISNetAPI.dll n'est pas chargé ou une erreur est survenue lors du chargement de la dll. Vous devez charger cette dll pour pouvoir effectuer cette opération. Vérifiez que la dll se trouve dans le répertoire SUPPORTDIR.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27547</td><td>1034</td><td>ISNetAPI.dll no se ha cargado o se produjo un error al cargar la dll. Deberá cargar esta dll para realizar esta operación. Compruebe que la dll se encuentra en el directorio SUPPORTDIR.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27548</td><td>1033</td><td>Erreur lors de la suppression du fichier INI contenant les nouvelles informations utilisateur du répertoire TEMP de l'utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27548</td><td>1034</td><td>Error al suprimir el archivo INI que contiene la nueva información de usuario del directorio TEMP del usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27549</td><td>1033</td><td>Erreur lors de l'obtention du contrôleur de domaine principal (PDC).</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27549</td><td>1034</td><td>Error al obtener el controlador principal de dominio (PDC).</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2755</td><td>1033</td><td>Le serveur a renvoyé une erreur [2] inattendue lors de la tentative d'installation du logiciel [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2755</td><td>1034</td><td>El servidor ha devuelto un error inesperado [2] al intentar instalar el paquete [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27550</td><td>1033</td><td>Pour rendre possible la création d'un utilisateur, chaque champ doit contenir une valeur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27550</td><td>1034</td><td>Para crear un usuario, cada campo deberá tener un valor.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27551</td><td>1033</td><td>Le pilote ODBC pour [2] est introuvable. Ce pilote est requis pour établir une connexion aux serveurs de base de données [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27551</td><td>1034</td><td>No se ha encontrado el controlador ODBC para [2]. Este componente es necesario para establecer conexión con los servidores de bases de datos de [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27552</td><td>1033</td><td>Erreur lors de la création de la base de données [4]. Serveur : [2] [3]. [5]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27552</td><td>1034</td><td>Error al crear la base de datos [4]. Servidor: [2] [3]. [5]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27553</td><td>1033</td><td>Erreur lors de la connexion à la base de données [4]. Serveur : [2] [3]. [5]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27553</td><td>1034</td><td>Error al conectar a la base de datos [4]. Servidor: [2] [3]. [5]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27554</td><td>1033</td><td>Erreur lors de la tentative de connexion [2]. Aucune métadonnée de la base de données valide associée à cette connexion.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27554</td><td>1034</td><td>Error al intentar abrir la conexión [2]. No hay metadatos de base de datos válidos asociados a esta conexión.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_27555</td><td>1033</td><td>Impossible d’appliquer les autorisations à l’objet : '[2]'. Erreur système : [3] ([4])</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_27555</td><td>1034</td><td>Error al intentar aplicar los permisos al objeto '[2]'. Error del sistema: [3] ([4])</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2756</td><td>1033</td><td>La propriété '[2]' a été utilisée en tant que propriété de répertoire dans une ou plusieurs tables, mais aucune valeur ne lui a jamais été attribuée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2756</td><td>1034</td><td>Se ha utilizado la propiedad '[2]' como propiedad de directorio en una o más tablas, pero no se ha asignado ningún valor jamás.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2757</td><td>1033</td><td>Impossible de créer des informations de sommaire pour la transformation [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2757</td><td>1034</td><td>No se pudo crear información de resumen para la transformación [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2758</td><td>1033</td><td>La transformation [2] ne contient pas de version MSI.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2758</td><td>1034</td><td>La transformación de [2] no contiene una versión de MSI.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2759</td><td>1033</td><td>Transformation [2] version [3] incompatible avec le moteur ; Min : [4], Max : [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2759</td><td>1034</td><td>La transformación [2] de la versión [3] no es compatible con el motor; Mín: [4], Máx: [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2760</td><td>1033</td><td>Transformation [2] incorrecte pour le logiciel [3]. Code de mise à niveau attendu [4], code trouvé [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2760</td><td>1034</td><td>Transformación de [2] no válida para el paquete [3]. Código de actualización previsto [4], encontrado [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2761</td><td>1033</td><td>Impossible de démarrer la transaction. Initialisation incorrecte du mutex global.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2761</td><td>1034</td><td>No se puede iniciar la transacción. No se ha inicializado correctamente la exclusión mutua global.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2762</td><td>1033</td><td>Impossible d'écrire l'enregistrement de script. Transaction non démarrée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2762</td><td>1034</td><td>No se puede escribir el registro del archivo de comandos. La transacción no se ha iniciado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2763</td><td>1033</td><td>Impossible de lancer le script. Transaction non démarrée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2763</td><td>1034</td><td>No se puede ejecutar el archivo de comandos. La transacción no se ha iniciado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2765</td><td>1033</td><td>Nom d'assembly manquant dans la table AssemblyName : Composant : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2765</td><td>1034</td><td>Falta el nombre de ensamblaje en la tabla Nombre de ensamblaje: Componente: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2766</td><td>1033</td><td>Le fichier [2] est un fichier de stockage MSI incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2766</td><td>1034</td><td>El archivo [2] es un archivo de almacenamiento MSI no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2767</td><td>1033</td><td>Plus de données {lors de l'énumération de [2]}.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2767</td><td>1034</td><td>No hay más datos{ mientras se enumera [2]}.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2768</td><td>1033</td><td>La transformation du package de correction est incorrecte.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2768</td><td>1034</td><td>La transformación del paquete de revisión no es válida.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2769</td><td>1033</td><td>L'action personnalisée [2] n'a pas réussi à fermer MSIHANDLEs [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2769</td><td>1034</td><td>La acción personalizada [2] no cerró [3] MSIHANDLE.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2770</td><td>1033</td><td>Le dossier mis en cache [2] n'a pas été défini dans la table des dossiers en cache interne.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2770</td><td>1034</td><td>La carpeta almacenada en la caché local [2] no se ha definido en la tabla de carpetas de la caché interna.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2771</td><td>1033</td><td>Composant manquant dans la mise à niveau de la fonction [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2771</td><td>1034</td><td>Falta un componente en la actualización de la función [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2772</td><td>1033</td><td>La nouvelle fonction de mise à niveau [2] doit être une fonction leaf.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2772</td><td>1034</td><td>La nueva función de actualización [2] debe ser una función de hoja.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_28</td><td>1033</td><td>Le fichier est ouvert en mode exclusif dans une autre application [2]. Fermez toutes les autres applications, puis cliquez sur Réessayer.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_28</td><td>1034</td><td>Otra aplicación tiene acceso exclusivo al archivo '[2]'. Cierre todas las demás aplicaciones y haga clic en Reintentar.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2801</td><td>1033</td><td>Message inconnu -- Type [2]. Aucune action effectuée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2801</td><td>1034</td><td>Mensaje desconocido: Tipo [2]. No se realizará ninguna acción.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2802</td><td>1033</td><td>Editeur introuvable pour l'événement [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2802</td><td>1034</td><td>No se ha encontrado ningún editor para el evento [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2803</td><td>1033</td><td>Dialog View n'a pas réussi à trouver d'enregistrement pour la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2803</td><td>1034</td><td>Vista de cuadro de diálogo no encontró un registro para el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2804</td><td>1033</td><td>Lors de l'activation de la commande [3] dans la boîte de dialogue [2], CMsiDialog n'a pas réussi à évaluer la condition [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2804</td><td>1034</td><td>En la activación del control [3] en el cuadro de diálogo [2], Cuadro de diálogo CMsi no evaluó la condición [3] de forma satisfactoria.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2806</td><td>1033</td><td>La boîte de dialogue [2] n'a pas réussi à évaluer la condition [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2806</td><td>1034</td><td>El cuadro de diálogo [2] no ha evaluado la condición [3] correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2807</td><td>1033</td><td>L'action [2] n'est pas reconnue.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2807</td><td>1034</td><td>No se reconoce la acción [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2808</td><td>1033</td><td>Le bouton par défaut est mal défini sur la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2808</td><td>1034</td><td>El botón predeterminado no está definido correctamente en el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2809</td><td>1033</td><td>Dans la boîte de dialogue [2], les pointeurs de commande suivants ne forment pas un cycle. Un pointeur va de [3] à [4], mais il n'en existe pas d'autre.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2809</td><td>1034</td><td>En el cuadro de diálogo [2], los punteros de control siguientes no forman un ciclo. Hay un puntero desde [3] hasta [4], pero no hay ningún puntero más.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2810</td><td>1033</td><td>Dans la boîte de dialogue [2], les pointeurs de commande suivants ne forment pas un cycle. Il existe un pointeur allant de [3] et [5] à [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2810</td><td>1034</td><td>En el cuadro de diálogo [2], los punteros de control siguientes no forman un ciclo. Hay un puntero desde [3] y [5] hasta [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2811</td><td>1033</td><td>Dans la boîte de dialogue [2], la commande [3] doit être sélectionnée, mais cela n'est pas possible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2811</td><td>1034</td><td>En el cuadro de diálogo [2], el control [3] debe aparecer centrado, pero esto no es posible.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2812</td><td>1033</td><td>L'événement [2] n'est pas reconnu.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2812</td><td>1034</td><td>No se reconoce el evento [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2813</td><td>1033</td><td>L'événement EndDialog a été appelé avec l'argument [2], mais la boîte de dialogue dispose d'un parent.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2813</td><td>1034</td><td>Se ha llamado al evento Fin de cuadro de diálogo con el argumento [2], pero el cuadro de diálogo tiene un elemento principal.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2814</td><td>1033</td><td>Dans la boîte de dialogue [2], la commande [3] désigne une commande [4] non existante comme commande suivante.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2814</td><td>1034</td><td>En el cuadro de diálogo [2], el control [3] menciona un control no existente [4] como el control siguiente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2815</td><td>1033</td><td>Il manque la condition pour la boîte de dialogue [2] à une ligne de la table ControlCondition.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2815</td><td>1034</td><td>La tabla Condición de control tiene una fila sin una condición para el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2816</td><td>1033</td><td>La table EventMapping se réfère à une commande [4] incorrecte dans la boîte de dialogue [2] pour l'événement [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2816</td><td>1034</td><td>La tabla Asignación de eventos hace referencia a un control no válido [4] en el cuadro de diálogo [2] correspondiente al evento [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2817</td><td>1033</td><td>L'événement [2] n'a pas réussi à définir l'attribut pour la commande [4] dans la boîte de dialogue [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2817</td><td>1034</td><td>El evento [2] no ha establecido correctamente el atributo del control [4] en el cuadro de diálogo [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2818</td><td>1033</td><td>Argument [2] non reconnu pour EndDialog dans la table ControlEvent.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2818</td><td>1034</td><td>En la tabla Evento de control, Fin de cuadro de diálogo tiene un argumento [2] no reconocido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2819</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] nécessite qu'une propriété lui soit attribuée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2819</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] requiere una propiedad vinculada a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2820</td><td>1033</td><td>Tentative d'initialisation d'un connecteur déjà initialisé :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2820</td><td>1034</td><td>Se ha intentado inicializar un controlador ya inicializado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2821</td><td>1033</td><td>Tentative d'initialisation d'une boîte de dialogue déjà initialisée : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2821</td><td>1034</td><td>Se ha intentado inicializar un cuadro de diálogo ya inicializado: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2822</td><td>1033</td><td>Aucune autre méthode ne peut être appelée pour la boîte de dialogue [2] avant que toutes les commandes ne soient ajoutées.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2822</td><td>1034</td><td>No se puede llamar a ningún otro método desde el cuadro de diálogo [2] hasta que no se hayan añadido todos los controles.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2823</td><td>1033</td><td>Tentative d'initialisation d'une commande déjà initialisée : [3] dans la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2823</td><td>1034</td><td>Se ha intentado inicializar un control ya inicializado: [3] en el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2824</td><td>1033</td><td>L'attribut de la boîte de dialogue [3] nécessite l'enregistrement de [2] champ(s).</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2824</td><td>1034</td><td>El atributo de cuadro de diálogo [3] requiere un registro de [2] campo(s) como mínimo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2825</td><td>1033</td><td>L'attribut de commande [3] nécessite l'enregistrement de [2] champ(s).</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2825</td><td>1034</td><td>El atributo de control [3] requiere un registro de [2] campo(s) como mínimo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2826</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] dépasse les limites de la boîte de dialogue [4] de [5] pixels.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2826</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] excede los límites del cuadro de diálogo [4] en [5] píxeles.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2827</td><td>1033</td><td>Le bouton [4] du groupe de cases d'option [3] dans la boîte de dialogue [2] dépasse les limites du groupe [5] de [6] pixels.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2827</td><td>1034</td><td>El botón [4] del grupo de botones de opción [3] del cuadro de diálogo [2] excede los límites del grupo [5] en [6] píxeles.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2828</td><td>1033</td><td>La tentative de suppression de la commande [3] de la boîte de dialogue [2] a échoué car cette commande n'est pas un composant de cette boîte de dialogue.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2828</td><td>1034</td><td>Se ha intentado eliminar el control [3] del cuadro de diálogo [2], pero el control no forma parte del cuadro de diálogo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2829</td><td>1033</td><td>Tentative d'utilisation une boîte de dialogue non initialisée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2829</td><td>1034</td><td>Intente utilizar un cuadro de diálogo no inicializado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2830</td><td>1033</td><td>Tentative d'utilisation d'une commande non initialisée dans la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2830</td><td>1034</td><td>Intente utilizar un control no inicializado en el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2831</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] ne prend pas en charge [5] l'attribut [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2831</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] no admite [5] el atributo [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2832</td><td>1033</td><td>La boîte de dialogue [2] ne prend pas en charge l'attribut [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2832</td><td>1034</td><td>El cuadro de diálogo [2] no admite el atributo [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2833</td><td>1033</td><td>La commande [4] dans la boîte de dialogue [3] a ignoré le message [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2833</td><td>1034</td><td>El control [4] del cuadro de diálogo [3] ignoró el mensaje [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2834</td><td>1033</td><td>Les prochains pointeurs dans la boîte de dialogue [2] ne forment pas une boucle unique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2834</td><td>1034</td><td>Los punteros siguientes del cuadro de diálogo [2] no forman una única repetición continua.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2835</td><td>1033</td><td>La commande [2] est introuvable sur la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2835</td><td>1034</td><td>No se ha encontrado el control [2] en el cuadro de diálogo [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2836</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] ne peut pas prendre le focus.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2836</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] no puede centrarse.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2837</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] souhaite que winproc renvoie [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2837</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] desea que winproc devuelva [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2838</td><td>1033</td><td>L'élément [2] de la table de sélection est son propre parent.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2838</td><td>1034</td><td>El elemento [2] de la tabla de selección es elemento principal de sí mismo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2839</td><td>1033</td><td>Echec de la définition de la propriété [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2839</td><td>1034</td><td>La configuración de la propiedad [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2840</td><td>1033</td><td>Incompatibilité du nom de la boîte de dialogue d'erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2840</td><td>1034</td><td>El nombre del cuadro de diálogo de error no coincide.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2841</td><td>1033</td><td>Bouton OK introuvable sur la boîte de dialogue d'erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2841</td><td>1034</td><td>No se ha encontrado ningún botón Aceptar en el cuadro de diálogo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2842</td><td>1033</td><td>Champ de texte introuvable sur la boîte de dialogue d'erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2842</td><td>1034</td><td>No se ha encontrado ningún campo de texto en el cuadro de diálogo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2843</td><td>1033</td><td>L'attribut ErrorString n'est pas pris en charge pour les boîtes de dialogue standard.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2843</td><td>1034</td><td>No se admite el atributo Cadena de error en cuadros de diálogo estándar.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2844</td><td>1033</td><td>Impossible d'exécuter une boîte de dialogue d'erreur si la chaîne d'erreur n'a pas été définie.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2844</td><td>1034</td><td>No se puede ejecutar un cuadro de diálogo de error si no se ha establecido el atributo Cadena de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2845</td><td>1033</td><td>La largeur totale des boutons dépasse la taille de la boîte de dialogue d'erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2845</td><td>1034</td><td>El ancho total de los botones excede el tamaño del cuadro de diálogo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2846</td><td>1033</td><td>SetFocus n'a pas réussi à trouver la commande requise dans la boîte de dialogue d'erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2846</td><td>1034</td><td>Establecer enfoque no encontró el control requerido en el cuadro de diálogo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2847</td><td>1033</td><td>Deux styles ont été définis pour la commande [3] dans la boîte de dialogue [2] : icône et bitmap.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2847</td><td>1034</td><td>Se ha establecido el estilo de mapa de bits y el icono del control [3] del cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2848</td><td>1033</td><td>La tentative de définir la commande [3] en tant que bouton par défaut dans la boîte de dialogue [2] a échoué, car cette commande n'existe pas.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2848</td><td>1034</td><td>Se ha intentado establecer el control [3] como el botón predeterminado del cuadro de diálogo [2], pero el control no existe.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2849</td><td>1033</td><td>Le type de la commande [3] dans la boîte de dialogue [2] n'autorise pas les valeurs entières.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2849</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] es de un tipo al que no se puede asignar un valor entero.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2850</td><td>1033</td><td>Type de volume inconnu.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2850</td><td>1034</td><td>Tipo de volumen no reconocido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2851</td><td>1033</td><td>Les données pour l'icône [2] ne sont pas valides.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2851</td><td>1034</td><td>Los datos del icono [2] no son válidos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2852</td><td>1033</td><td>Vous devez ajouter au moins une commande à la boîte de dialogue [2] avant de l'utiliser.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2852</td><td>1034</td><td>Es necesario añadir al menos un control al cuadro de diálogo [2] antes de poder utilizarlo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2853</td><td>1033</td><td>La boîte de dialogue [2] est une boîte de dialogue sans mode. Vous ne devez pas l'appeler avec la méthode execute.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2853</td><td>1034</td><td>El cuadro de diálogo [2] es no modal. No se debe llamar al método de ejecución desde él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2854</td><td>1033</td><td>dans la boîte de dialogue [2], la commande [3] est désignée comme la première commande active, mais une telle commande n'existe pas.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2854</td><td>1034</td><td>En el cuadro de diálogo [2], se ha designado el control [3] como el primer control activo, pero no existe tal control.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2855</td><td>1033</td><td>Le groupe de cases d'option [3] dans la boîte de dialogue [2] comporte moins de 2 boutons.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2855</td><td>1034</td><td>El grupo de botones de opción [3] del cuadro de diálogo [2] tiene menos de 2 botones.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2856</td><td>1033</td><td>Création d'une seconde copie de la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2856</td><td>1034</td><td>Creando una segunda copia del cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2857</td><td>1033</td><td>Le répertoire [2] est mentionné dans la table de sélection, mais n'a pas été trouvé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2857</td><td>1034</td><td>Se menciona el directorio [2] en la tabla de selección, pero no se encuentra.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2858</td><td>1033</td><td>Les données pour le bitmap [2] ne sont pas valides.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2858</td><td>1034</td><td>Los datos del mapa de bits [2] no son válidos.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2859</td><td>1033</td><td>Message d'erreur test.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2859</td><td>1034</td><td>Mensaje de error de prueba.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2860</td><td>1033</td><td>Le bouton Annuler est mal défini sur la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2860</td><td>1034</td><td>El botón Cancelar no está definido correctamente en el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2861</td><td>1033</td><td>Les prochains pointeurs pour les cases d'option dans la boîte de dialogue [2], commande [3] ne forment pas un cycle.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2861</td><td>1034</td><td>Los siguientes punteros de los botones de opción del control [3] del cuadro de diálogo [2] no forman un ciclo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2862</td><td>1033</td><td>Les attributs pour la commande [3] de la boîte de dialogue [2] ne définissent pas une taille d'icône valide. Définition de la taille sur 16.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2862</td><td>1034</td><td>Los atributos del control [3] del cuadro de diálogo [2] no definen un tamaño de icono válido. Estableciendo un tamaño de 16.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2863</td><td>1033</td><td>La commande [3] de la boîte de dialogue [2] nécessite l'icône [4] en taille [5]x[5], mais cette taille n'est pas disponible. Chargement de la première taille disponible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2863</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] necesita que el icono [4] tenga el tamaño [5]x[5], pero dicho tamaño no se encuentra disponible. Cargando el primer tamaño disponible.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2864</td><td>1033</td><td>La commande [3] de la boîte de dialogue [2] a reçu un événement de type Parcourir, mais aucun répertoire configurable n'existe pour la sélection actuelle. Cause probable : le bouton Parcourir n'a pas été programmé correctement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2864</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] recibió un evento de exploración, pero no hay ningún directorio configurable para la selección actual. La causa más probable es que el botón de exploración no se ha creado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2865</td><td>1033</td><td>La commande [3] sur le panneau [2] dépasse les limites du panneau [4] de [5] pixels.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2865</td><td>1034</td><td>El control [3] de la cartelera [2] excede los límites de la cartelera [4] en [5] píxeles.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2866</td><td>1033</td><td>La boîte de dialogue [2] n'est pas autorisée à renvoyer l'argument [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2866</td><td>1034</td><td>No se permite al cuadro de diálogo [2] devolver el argumento [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2867</td><td>1033</td><td>Propriété de boîte de dialogue d'erreur non définie.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2867</td><td>1034</td><td>No se ha establecido la propiedad del cuadro de diálogo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2868</td><td>1033</td><td>Le bit de style de la boîte de dialogue d'erreur [2] n'est pas défini sur erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2868</td><td>1034</td><td>El cuadro de diálogo de error [2] no tiene establecido el bit de estilo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2869</td><td>1033</td><td>Le bit de style de la boîte de dialogue [2] est défini sur erreur, mais il ne s'agit pas d'une boîte de dialogue d'erreur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2869</td><td>1034</td><td>Se ha establecido el bit de estilo de error en el cuadro de diálogo [2], pero no se trata de un cuadro de diálogo de error.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2870</td><td>1033</td><td>La chaîne d'aide [4] pour la commande [3] de la boîte de dialogue [2] ne contient pas de séparateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2870</td><td>1034</td><td>La cadena de ayuda [4] del control [3] del cuadro de diálogo [2] no incluye el carácter separador.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2871</td><td>1033</td><td>La table [2] est obsolète : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2871</td><td>1034</td><td>La tabla [2] no está actualizada: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2872</td><td>1033</td><td>L'argument de l'événement de commande CheckPath dans la boîte de dialogue [2] est incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2872</td><td>1034</td><td>El argumento del control Comprobar ruta del cuadro de diálogo [2] no es válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2873</td><td>1033</td><td>Dans la boîte de dialogue [2], la commande [3] a une limite de longueur de chaîne incorrecte : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2873</td><td>1034</td><td>En el cuadro de diálogo [2], el control [3] tiene un límite de longitud de cadena no válido: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2874</td><td>1033</td><td>Echec de la modification de la police de texte en [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2874</td><td>1034</td><td>El cambio de la fuente del texto a [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2875</td><td>1033</td><td>Echec de la modification de la couleur de texte en [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2875</td><td>1034</td><td>El cambio del color del texto a [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2876</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] a dû tronquer la chaîne : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2876</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] tiene que truncar la cadena: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2877</td><td>1033</td><td>Données binaires [2] introuvable</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2877</td><td>1034</td><td>No se han encontrado los datos binarios [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2878</td><td>1033</td><td>Dans la boîte de dialogue [2], la commande [3] a la valeur : [4]. Il s'agit d'une valeur incorrecte ou existant déjà.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2878</td><td>1034</td><td>En el cuadro de diálogo [2], el control [3] tiene un valor posible: [4]. Este valor no es válido o está duplicado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2879</td><td>1033</td><td>La commande [3] dans la boîte de dialogue [2] ne peut pas analyser la chaîne de masque : [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2879</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] no puede analizar la cadena de máscara: [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2880</td><td>1033</td><td>N'exécutez pas les événements de commande restants.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2880</td><td>1034</td><td>No ejecute los eventos de control restantes.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2881</td><td>1033</td><td>Echec d'initialisation de CmsiHandler.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2881</td><td>1034</td><td>La inicialización del Controlador CMsi no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2882</td><td>1033</td><td>Echec de l'enregistrement de la classe de fenêtre de boîte de dialogue.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2882</td><td>1034</td><td>El registro de la clase de ventana de cuadro de diálogo no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2883</td><td>1033</td><td>Echec de CreateNewDialog pour la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2883</td><td>1034</td><td>Error de Crear nuevo cuadro de diálogo en el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2884</td><td>1033</td><td>Impossible de créer une fenêtre pour la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2884</td><td>1034</td><td>Fallo al crear una ventana para el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2885</td><td>1033</td><td>Impossible de créer la commande [3] dans la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2885</td><td>1034</td><td>Fallo al crear el control [3] en el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2886</td><td>1033</td><td>Echec de la création de la table [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2886</td><td>1034</td><td>La creación de la tabla [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2887</td><td>1033</td><td>Echec de la création d'un curseur vers la table [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2887</td><td>1034</td><td>La creación de un cursor en la tabla [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2888</td><td>1033</td><td>Echec de l'exécution de l'affichage [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2888</td><td>1034</td><td>La ejecución de la vista [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2889</td><td>1033</td><td>Echec de création de la fenêtre pour la commande [3] dans la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2889</td><td>1034</td><td>La creación de la ventana para el control [3] del cuadro de diálogo [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2890</td><td>1033</td><td>Echec de création et d'initialisation de la boîte de dialogue par le connecteur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2890</td><td>1034</td><td>Fallo del controlador al crear un cuadro de diálogo inicializado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2891</td><td>1033</td><td>Echec de la destruction de la fenêtre pour la boîte de dialogue [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2891</td><td>1034</td><td>Fallo al destruir ventana para el cuadro de diálogo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2892</td><td>1033</td><td>[2] est une commande a valeur entière, [3] n'est pas une valeur entière valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2892</td><td>1034</td><td>[2] es un control de valores enteros exclusivamente; [3] no es un valor entero válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2893</td><td>1033</td><td>La commande [3] de la boîte de dialogue [2] accepte uniquement les valeurs de propriété contenant [5] caractères maximum. La valeur [4] dépasse cette limite et a été tronquée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2893</td><td>1034</td><td>El control [3] del cuadro de diálogo [2] acepta valores de propiedades con [5] caracteres de longitud como máximo. El valor [4] excede este límite y ha sido truncado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2894</td><td>1033</td><td>Echec du chargement de RICHED20.DLL. GetLastError () a renvoyé : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2894</td><td>1034</td><td>La carga de RICHED20.DLL no se ha realizado correctamente. GetLastError() ha devuelto: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2895</td><td>1033</td><td>Echec de libération de RICHED20.DLL. GetLastError () a renvoyé : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2895</td><td>1034</td><td>La liberación de RICHED20.DLL no se ha realizado correctamente. GetLastError() ha devuelto: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2896</td><td>1033</td><td>Echec de l'exécution de l'action [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2896</td><td>1034</td><td>La ejecución de la acción [2] no se ha realizado correctamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2897</td><td>1033</td><td>Impossible de créer une police [2] sur ce système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2897</td><td>1034</td><td>Fallo al crear cualquier fuente [2] en este sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2898</td><td>1033</td><td>Pour le style de texte [2], le système a créé une police '[3]', dans le jeu de caractères [4].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2898</td><td>1034</td><td>En el caso del estilo de texto [2], el sistema ha creado una fuente '[3]' en el conjunto de caracteres [4].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2899</td><td>1033</td><td>Impossible de créer le style de texte [2]. GetLastError () a renvoyé : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2899</td><td>1034</td><td>Fallo al crear estilo de texto [2]. GetLastError() ha devuelto: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_29</td><td>1033</td><td>Espace disque insuffisant pour installer le fichier [2]. Libérez de l'espace et cliquez sur Réessayer, ou cliquez sur Annuler pour quitter le programme d'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_29</td><td>1034</td><td>No hay espacio en disco suficiente para instalar el archivo [2]. Libere espacio en disco y haga clic en Reintentar, o bien, haga clic en Cancelar para salir.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2901</td><td>1033</td><td>Paramètre invalide pour l'opération [2] : paramètre [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2901</td><td>1034</td><td>Parámetro no válido para la operación [2]: Parámetro [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2902</td><td>1033</td><td>Opération [2] n'a plus de séquences.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2902</td><td>1034</td><td>Se ha llamado a la operación [2] fuera de la secuencia.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2903</td><td>1033</td><td>Le fichier [2] est manquant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2903</td><td>1034</td><td>Falta el archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2904</td><td>1033</td><td>BindImage pour le fichier [2] impossible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2904</td><td>1034</td><td>No se pudo aplicar Vincular imagen al archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2905</td><td>1033</td><td>Impossible de lire l'enregistrement du fichier script [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2905</td><td>1034</td><td>No se pudo leer el registro desde el archivo de comandos [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2906</td><td>1033</td><td>En-tête manquant dans le fichier script [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2906</td><td>1034</td><td>Falta encabezado en el archivo de comandos [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2907</td><td>1033</td><td>Impossible de créer un descripteur de sécurité sûr. Erreur : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2907</td><td>1034</td><td>No se pudo crear un descriptor seguro de seguridad. Error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2908</td><td>1033</td><td>Impossible d'enregistrer le composant [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2908</td><td>1034</td><td>No se pudo registrar el componente [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2909</td><td>1033</td><td>Impossible de désenregistrer le composant [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2909</td><td>1034</td><td>No se pudo anular el registro del componente [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2910</td><td>1033</td><td>Impossible de déterminer l'ID de sécurité de l'utilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2910</td><td>1034</td><td>No se pudo determinar la ID de seguridad del usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2911</td><td>1033</td><td>Impossible de supprimer le dossier [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2911</td><td>1034</td><td>No se pudo eliminar la carpeta [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2912</td><td>1033</td><td>Impossible de planifier la suppression du fichier [2] au redémarrage.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2912</td><td>1034</td><td>No se pudo programar el archivo [2] para su eliminación al reiniciar.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2919</td><td>1033</td><td>Aucun fichier .cab spécifié pour le fichier comprimé : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2919</td><td>1034</td><td>No se ha especificado un archivo .cab para el archivo comprimido: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2920</td><td>1033</td><td>Le répertoire source n'est pas défini pour le fichier [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2920</td><td>1034</td><td>No se ha especificado el directorio de origen para el archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2924</td><td>1033</td><td>La version du script [2] n'est pas prise en charge. Version du script : [3], Version minimum : [4], Version maximum : [5].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2924</td><td>1034</td><td>Versión del archivo de comandos [2] no admitida. Versión del archivo de comandos: [3], versión mínima: [4], versión máxima: [5].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2927</td><td>1033</td><td>ID ShellFolder [2] est incorrect.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2927</td><td>1034</td><td>La identificación de Carpeta de shell [2] no es válida.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2928</td><td>1033</td><td>Nombre de sources maximum dépassé. Ignorer la source '[2]'.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2928</td><td>1034</td><td>Se ha superado el número máximo de orígenes. Omitiendo origen '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2929</td><td>1033</td><td>Impossible de déterminer une racine de publication. Erreur : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2929</td><td>1034</td><td>No se pudo determinar la raíz de publicación. Error: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2932</td><td>1033</td><td>Impossible de créer le fichier [2] à partir des données de script. Erreur : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2932</td><td>1034</td><td>No se pudo crear el archivo [2] a partir de los datos del archivo de comandos. Error: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2933</td><td>1033</td><td>Impossible d'initialiser un script rollback [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2933</td><td>1034</td><td>No se pudo inicializar el archivo de comandos de la acción de deshacer [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2934</td><td>1033</td><td>Impossible de sécuriser la transformation [2]. Erreur [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2934</td><td>1034</td><td>No se pudo proteger la transformación [2]. Error [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2935</td><td>1033</td><td>Impossible d'enlever la sécurité de la transformation [2]. Erreur [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2935</td><td>1034</td><td>No se pudo desproteger la transformación [2]. Error [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2936</td><td>1033</td><td>Transformation [2] introuvable.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2936</td><td>1034</td><td>No se pudo encontrar la transformación [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2937</td><td>1033</td><td>Windows Installer ne peut pas installer un catalogue de protection des fichiers système. Catalogue : [2], Erreur : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2937</td><td>1034</td><td>El Instalador de Windows no puede instalar un catálogo de protección de archivos del sistema. Catálogo: [2], Error: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2938</td><td>1033</td><td>Windows Installer n'a pas pu récupérer un catalogue de protection des fichiers système dans le cache. Catalogue : [2], Erreur : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2938</td><td>1034</td><td>El Instalador de Windows no puede recuperar un catálogo de protección de archivos del sistema de la caché local. Catálogo: [2], Error: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2939</td><td>1033</td><td>Windows Installer n'a pas pu supprimer un catalogue de protection de fichiers système du cache. Catalogue : [2], Erreur : [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2939</td><td>1034</td><td>El Instalador de Windows no puede suprimir un catálogo de protección de archivos del sistema de la caché local. Catálogo: [2], Error: [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2940</td><td>1033</td><td>Gestionnaire de répertoires non fourni pour la résolution de la source.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2940</td><td>1034</td><td>Administrador de directorio no proporcionó una resolución de origen.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2941</td><td>1033</td><td>Impossible de calculer le CRC du fichier [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2941</td><td>1034</td><td>No es posible calcular la comprobación por redundancia cíclica (CRC) del archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2942</td><td>1033</td><td>L'action BindImage n'a pas été exécutée sur le fichier [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2942</td><td>1034</td><td>No se ha ejecutado la acción Vincular imagen en el archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2943</td><td>1033</td><td>Cette version de Windows ne permet pas de déployer les logiciels 64 bits. Le script [2] est conçu pour un logiciel 64 bits.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2943</td><td>1034</td><td>Esta versión de Windows no admite la distribución de paquetes de 64 bits. El archivo de comandos [2] corresponde a un paquete de 64 bits.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2944</td><td>1033</td><td>Echec de GetProductAssignmentType.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2944</td><td>1034</td><td>Error de Obtener tipo de asignación de producto.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_2945</td><td>1033</td><td>Echec de l'installation de l'application ComPlus [2] en raison de l'erreur [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_2945</td><td>1034</td><td>La instalación de ComPlus App [2] no se ha realizado correctamente a causa del error [3].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_3</td><td>1033</td><td>Informations [1]. </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_3</td><td>1034</td><td>Información [1]. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_30</td><td>1033</td><td>Fichier source [2] introuvable. Vérifiez que ce fichier existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_30</td><td>1034</td><td>No se encuentra el archivo de origen [2]. Compruebe que el archivo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_3001</td><td>1033</td><td>Les correctifs mentionnés dans cette liste contiennent des informations de séquencement incorrectes : [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_3001</td><td>1034</td><td>Las revisiones de esta lista contienen información de secuencia incorrecta: [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_3002</td><td>1033</td><td>Le correctif [2] contient des informations de séquencement incorrecte. </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_3002</td><td>1034</td><td>La revisión [2] contiene información de secuencia no válida. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_31</td><td>1033</td><td>Erreur lors de la lecture du fichier [3].{{ Erreur système [2].}} Vérifiez que ce fichier existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_31</td><td>1034</td><td>Error al leer el archivo [3]. {{ Error del sistema [2].}} Compruebe que el archivo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_32</td><td>1033</td><td>Erreur lors de l'écriture dans le fichier [3]. {{ Erreur système [2].}} Vérifiez que vous êtes autorisé à accéder à ce répertoire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_32</td><td>1034</td><td>Error al escribir en el archivo [3]. {{ Error del sistema [2].}} Compruebe que dispone de acceso a ese directorio.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_33</td><td>1033</td><td>Fichier source introuvable{{(cabinet)}} : [2]. Vérifiez que ce fichier existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_33</td><td>1034</td><td>No se ha encontrado el archivo de origen {{(.CAB)}} [2]. Compruebe que el archivo existe y que puede obtener acceso a él.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_34</td><td>1033</td><td>Impossible de créer le répertoire [2]. Un répertoire du même nom existe déjà. Renommez ce répertoire ou supprimez-le et cliquez sur Réessayer, ou cliquez sur Annuler pour quitter le programme d'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_34</td><td>1034</td><td>No se puede crear el directorio '[2]'. Ya existe un archivo con este nombre. Cambie el nombre al archivo o quítelo y haga clic en Reintentar, o bien haga clic en Cancelar para salir.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_35</td><td>1033</td><td>Volume [2] non disponible actuellement. Sélectionnez-en un autre.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_35</td><td>1034</td><td>El volumen [2] no está disponible en este momento. Seleccione otro volumen.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_36</td><td>1033</td><td>Chemin d'accès spécifié, [2], non disponible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_36</td><td>1034</td><td>La ruta de acceso especificada, '[2]', no está disponible.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_37</td><td>1033</td><td>Impossible d'écrire dans le dossier spécifié : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_37</td><td>1034</td><td>No se puede escribir en la carpeta especificada, '[2]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_38</td><td>1033</td><td>Erreur au niveau du réseau lors de la tentative de lecture du fichier [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_38</td><td>1034</td><td>Se produjo un error de red al intentar leer el archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_39</td><td>1033</td><td>Erreur lors de la tentative de création du répertoire [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_39</td><td>1034</td><td>Se produjo un error al intentar crear el directorio [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_4</td><td>1033</td><td>Erreur interne [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_4</td><td>1034</td><td>Error interno [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_40</td><td>1033</td><td>Erreur au niveau du réseau lors de la tentative de création du répertoire [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_40</td><td>1034</td><td>Se produjo un error de red al intentar crear el directorio [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_41</td><td>1033</td><td>Erreur au niveau du réseau lors de la tentative d'ouverture du fichier CAB source [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_41</td><td>1034</td><td>Se produjo un error de red al intentar abrir el archivo .CAB de origen [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_42</td><td>1033</td><td>Chemin d'accès spécifié, [2], trop long.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_42</td><td>1034</td><td>La ruta de acceso especificada es demasiado larga: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_43</td><td>1033</td><td>Le programme d'installation ne dispose pas des privilèges suffisants pour modifier le fichier [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_43</td><td>1034</td><td>El instalador no tiene suficientes privilegios para modificar el archivo [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_44</td><td>1033</td><td>Une partie du chemin d'accès au dossier [2] n'est pas valide. Soit il est vide, soit il dépasse la longueur maximale autorisée par le système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_44</td><td>1034</td><td>Una parte de la ruta de acceso a la carpeta '[2]'no es válida porque está vacía o supera la longitud permitida por el sistema.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_45</td><td>1033</td><td>Le chemin d'accès au dossier [2] contient des mots non valides.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_45</td><td>1034</td><td>La ruta de acceso a la carpeta '[2]' contiene palabras no válidas para rutas de acceso a carpetas.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_46</td><td>1033</td><td>Le chemin d'accès au dossier [2] contient un caractère non valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_46</td><td>1034</td><td>La ruta de acceso a la carpeta '[2]' contiene un carácter no válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_47</td><td>1033</td><td>Le nom de fichier court [2] n'est pas valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_47</td><td>1034</td><td>'[2]' no es un nombre corto de archivo válido.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_48</td><td>1033</td><td>Erreur lors de l'obtention des informations sur la sécurité du fichier [3] GetLastError : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_48</td><td>1034</td><td>Error al obtener la seguridad del archivo: [3]. GetLastError: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_49</td><td>1033</td><td>Lecteur [2] non valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_49</td><td>1034</td><td>Unidad no válida: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_5</td><td>1033</td><td>{{Disque saturé : }}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_5</td><td>1034</td><td>{{Disco lleno: }}</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_50</td><td>1033</td><td>Impossible de créer la clé [2].{{ Erreur système [3].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique. </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_50</td><td>1034</td><td>No se puede crear la clave [2]. {{ Error del sistema [3].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_51</td><td>1033</td><td>Impossible d'ouvrir la clé [2].{{ Erreur système [3].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_51</td><td>1034</td><td>No se puede abrir la clave [2]. {{ Error del sistema [3].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_52</td><td>1033</td><td>Impossible de supprimer la valeur [2] de la clé [3].{{ Erreur système [4].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_52</td><td>1034</td><td>No se puede eliminar el valor [2] de la clave [3]. {{Error del sistema [4].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_53</td><td>1033</td><td>Impossible de supprimer la clé [2].{{ Erreur système [3].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique. </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_53</td><td>1034</td><td>No se puede eliminar la clave [2]. {{Error del sistema [3].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_54</td><td>1033</td><td>Impossible de lire la valeur [2] de la clé [3].{{ Erreur système [4].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique. </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_54</td><td>1034</td><td>No se puede leer el valor [2] de la clave [3]. {{Error del sistema [4].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico. </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_55</td><td>1033</td><td>Impossible d'écrire la valeur [2] dans la clé [3].{{ Erreur système [4].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_55</td><td>1034</td><td>No se puede escribir el valor [2] en la clave [3]. {{Error del sistema [4].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_56</td><td>1033</td><td>Impossible d'obtenir le nom des valeurs de la clé [2].{{ Erreur système [3].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_56</td><td>1034</td><td>No se pueden obtener los nombres de los valores para la clave [2]. {{Error del sistema [3].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_57</td><td>1033</td><td>Impossible d'obtenir le nom des sous-clés de la clé [2].{{ Erreur système [3].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_57</td><td>1034</td><td>No se pueden obtener los nombres de las subclaves de la clave [2]. {{Error del sistema [3].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_58</td><td>1033</td><td>Impossible de lire les informations sur la sécurité de la clé [2].{{ Erreur système [3].}} Vérifiez que vous disposez des droits suffisants pour cette clé ou contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_58</td><td>1034</td><td>No se puede leer la información de seguridad de la clave [2]. {{Error del sistema [3].}} Compruebe que dispone de suficientes derechos de acceso a esa clave o póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_59</td><td>1033</td><td>Impossible d'augmenter l'espace disponible dans le registre. [2] Ko d'espace doivent être libres dans le registre pour permettre l'installation de cette application.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_59</td><td>1034</td><td>No se puede aumentar el espacio disponible en el registro de configuraciones. Para instalar esta aplicación se requieren [2] KB de espacio en el registro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_6</td><td>1033</td><td>Action [Time] : [1]. [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_6</td><td>1034</td><td>Acción [Time]: [1]. [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_60</td><td>1033</td><td>Une autre installation est en cours. Vous devez la terminer avant de poursuivre cette installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_60</td><td>1034</td><td>Ya hay otra instalación en curso. Termine esa instalación antes de continuar con ésta.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_61</td><td>1033</td><td>Erreur lors de l'accès aux données protégées. Vérifiez que Windows Installer est correctement configuré, puis recommencez l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_61</td><td>1034</td><td>Error al obtener acceso a los datos protegidos. Asegúrese de que Windows Installer está configurado correctamente y vuelva a intentar realizar la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_62</td><td>1033</td><td>L'utilisateur [2] a déjà lancé l'installation du produit [3]. Il devra réexécuter cette installation avant de pouvoir utiliser le produit. L'installation en cours va se poursuivre.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_62</td><td>1034</td><td>El usuario '[2]' ya inició previamente una instalación del producto '[3]', pero deberá ejecutar la instalación de nuevo para poder utilizar el producto. La instalación actual de este producto continuará.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_63</td><td>1033</td><td>L'utilisateur [2] a déjà lancé l'installation du produit [3]. Il devra réexécuter cette installation avant de pouvoir utiliser le produit.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_63</td><td>1034</td><td>El usuario '[2]' ya inició previamente una instalación del producto '[3]', pero deberá ejecutar la instalación de nuevo para poder utilizarlo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_64</td><td>1033</td><td>Espace disque insuffisant : volume : [2] ; espace requis : [3] Ko ; espace disponible : [4] Ko. Libérez de l'espace sur le disque, puis réessayez.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_64</td><td>1034</td><td>Espacio en disco insuficiente -- Volumen: '[2]'; espacio requerido: [3] KB; espacio disponible: [4] KB. Libere espacio en disco e inténtelo de nuevo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_65</td><td>1033</td><td>Êtes-vous sûr de vouloir annuler l'installation ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_65</td><td>1034</td><td>¿Está seguro de que desea cancelar la operación?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_66</td><td>1033</td><td>Le fichier [2][3] est actuellement utilisé{ par le processus suivant : Nom : [4] ; identificateur : [5] ; titre de la fenêtre : [6]}. Fermez cette application, puis réessayez.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_66</td><td>1034</td><td>El archivo [2][3] está en uso{ por el proceso siguiente: Nombre: [4], Id.: [5], Título de ventana: '[6]'}. Cierre esa aplicación e inténtelo de nuevo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_67</td><td>1033</td><td>Le produit [2] est déjà installé. Impossible d'installer ce produit car il est incompatible avec celui déjà installé.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_67</td><td>1034</td><td>El producto '[2]' ya está instalado, lo que impide que se instale este producto porque ambos productos son incompatibles entre sí.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_68</td><td>1033</td><td>Espace disque insuffisant : volume : [2] ; espace requis : [3] Ko ; espace disponible : [4] Ko. Si la fonction de restauration est désactivée, l'espace est suffisant. Cliquez sur Annuler pour quitter, sur Réessayer pour revérifier la quantité d'espace disponible ou sur Ignorer pour continuer sans la fonction de restauration.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_68</td><td>1034</td><td>Espacio en disco insuficiente -- Volumen: '[2]'; espacio requerido: [3] KB; espacio disponible: [4] KB. Si la función de restauración está deshabilitada, el espacio disponible es suficiente. Haga clic en 'Cancelar' para salir, en 'Reintentar' para volver a comprobar el espacio en disco disponible, o bien, en 'Omitir' para continuar sin habilitar la función de restauración.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_69</td><td>1033</td><td>Impossible d'accéder à l'emplacement réseau [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_69</td><td>1034</td><td>No se puede obtener acceso a la ubicación de red [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_7</td><td>1033</td><td>[ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_7</td><td>1034</td><td>[ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_70</td><td>1033</td><td>Fermez les applications suivantes avant de poursuivre l'installation :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_70</td><td>1034</td><td>Deben cerrarse las aplicaciones siguientes antes de continuar con la instalación:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_71</td><td>1033</td><td>Impossible de trouver sur cet ordinateur un produit compatible pour permettre l'installation de ce produit.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_71</td><td>1034</td><td>No se encuentra ningún producto compatible instalado en el equipo para instalar este producto.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_72</td><td>1033</td><td>Clé [2] non valide. Vérifiez que vous avez entré la clé appropriée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_72</td><td>1034</td><td>La clave [2] no es válida. Compruebe que escribió la clave correcta.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_73</td><td>1033</td><td>Le programme d'installation doit redémarrer votre système avant que la configuration de [2] puisse continuer. Cliquez sur Oui pour redémarrer maintenant, ou sur Non si vous voulez redémarrer manuellement ultérieurement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_73</td><td>1034</td><td>El instalador debe reiniciar el sistema para que pueda continuar la configuración de [2]. Haga clic en Sí para reiniciar el sistema ahora o elija No si tiene previsto reiniciarlo manualmente más tarde.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_74</td><td>1033</td><td>Vous devez redémarrer votre système pour que les modifications apportées à la configuration de [2] prennent effet. Cliquez sur Oui pour redémarrer maintenant, ou sur Non si vous voulez redémarrer manuellement ultérieurement.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_74</td><td>1034</td><td>Debe reiniciar el sistema para que los cambios de configuración efectuados en [2] tengan efecto. Haga clic en Sí para reiniciar el sistema ahora o elija No si tiene previsto reiniciarlo manualmente más tarde.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_75</td><td>1033</td><td>L'installation de [2] est suspendue. Vous devez annuler les modifications apportée par cette installation pour continuer. Voulez-vous annuler les modifications ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_75</td><td>1034</td><td>Actualmente hay una instalación de [2] en suspenso. Debe deshacer los cambios realizados por dicha instalación para poder continuar. ¿Desea deshacer esos cambios?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_76</td><td>1033</td><td>Une installation de ce produit est déjà en cours. Vous devez annuler les modifications apportées par cette installation pour continuer. Voulez-vous annuler les modifications ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_76</td><td>1034</td><td>Ya hay en curso una instalación anterior de este producto. Debe deshacer los cambios realizados por dicha instalación para poder continuar. ¿Desea deshacer esos cambios?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_77</td><td>1033</td><td>Package d'installation pour le produit [2] introuvable. Réessayez d'exécuter Windows Installer avec un package d'installation valide [3].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_77</td><td>1034</td><td>No se encuentra ningún paquete de instalación para el producto [2]. Vuelva a intentar la instalación utilizando una copia válida del paquete de instalación '[3]'.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_78</td><td>1033</td><td>Installation terminée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_78</td><td>1034</td><td>La operación de instalación finalizó satisfactoriamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_79</td><td>1033</td><td>L'installation a échoué.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_79</td><td>1034</td><td>Fallo en la operación de instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_8</td><td>1033</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_8</td><td>1034</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_80</td><td>1033</td><td>Produit : [2] -- [3]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_80</td><td>1034</td><td>Producto: [2] -- [3]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_81</td><td>1033</td><td>Vous pouvez restaurer l'état antérieur de votre ordinateur ou poursuivre l'installation ultérieurement. Voulez-vous restaurer votre ordinateur ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_81</td><td>1034</td><td>Puede restaurar el equipo a su estado anterior o continuar con la instalación más tarde. ¿Desea restaurar el equipo?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_82</td><td>1033</td><td>Une erreur est survenue lors de l'écriture sur le disque des informations concernant l'installation. Vérifiez que l'espace disponible sur le disque est suffisant et cliquez sur Réessayer, ou cliquez sur Annuler pour mettre fin à l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_82</td><td>1034</td><td>Se produjo un error mientras se escribía la información de instalación en el disco. Compruebe que hay suficiente espacio en disco disponible y haga clic en Reintentar, o bien haga clic en Cancelar para terminar la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_83</td><td>1033</td><td>Impossible de trouver un ou plusieurs des fichiers requis pour restaurer l'état antérieur de votre ordinateur. Impossible de procéder à la restauration.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_83</td><td>1034</td><td>No se encuentran uno o varios archivos necesarios para restaurar el equipo a su estado anterior. La restauración no podrá realizarse.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_84</td><td>1033</td><td>Chemin d'accès [2] non valide. Entrez un chemin d'accès valide.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_84</td><td>1034</td><td>La ruta de acceso [2] no es válida. Especifique una ruta de acceso válida.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_85</td><td>1033</td><td>Mémoire insuffisante. Fermez les autres applications avant de réessayer.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_85</td><td>1034</td><td>Memoria insuficiente. Cierre otras aplicaciones antes de intentarlo de nuevo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_86</td><td>1033</td><td>Le lecteur [2] est vide. Insérez un disque et cliquez sur Réessayer, ou cliquez sur Annuler pour revenir au volume sélectionné précédemment.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_86</td><td>1034</td><td>No hay ningún disco en la unidad [2]. Inserte uno y haga clic en Reintentar, o bien haga clic en Cancelar para volver al volumen previamente seleccionado.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_87</td><td>1033</td><td>Le lecteur [2] est vide. Insérez un disque et cliquez sur Réessayer, ou cliquez sur Annuler pour revenir dans la boîte de dialogue Sélection de l'emplacement et sélectionner un autre volume.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_87</td><td>1034</td><td>No hay ningún disco en la unidad [2]. Inserte uno y haga clic en Reintentar, o bien haga clic en Cancelar para volver al cuadro de diálogo de examinar y seleccionar un volumen distinto.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_88</td><td>1033</td><td>Dossier [2] inexistant. Entrez le chemin d'accès d'un dossier existant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_88</td><td>1034</td><td>La carpeta [2] no existe. Escriba una ruta de acceso a una carpeta existente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_89</td><td>1033</td><td>Vous ne disposez pas des privilèges suffisants pour lire le contenu de ce dossier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_89</td><td>1034</td><td>No dispone de privilegios para leer esta carpeta.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_9</td><td>1033</td><td>Type de message : [1] ; argument : [2]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_9</td><td>1034</td><td>Tipo de mensaje: [1], argumento: [2]</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_90</td><td>1033</td><td>Impossible de trouver un dossier de destination valide pour l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_90</td><td>1034</td><td>No se puede determinar una carpeta de destino válida para la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_91</td><td>1033</td><td>Erreur pendant la tentative de lecture de la base de données d'installation source : [2].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_91</td><td>1034</td><td>Error al intentar leer la base de datos de instalación de origen: [2].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_92</td><td>1033</td><td>Planification du redémarrage : Le fichier [2] est renommé [3]. Pour achever l'opération, votre système doit être redémarré.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_92</td><td>1034</td><td>Programando la operación de reinicio: cambiando el nombre del archivo [2] a [3]. Para completar la operación se debe reiniciar el equipo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_93</td><td>1033</td><td>Planification du redémarrage : Suppression du fichier [2]. Pour achever l'opération, votre système doit être redémarré.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_93</td><td>1034</td><td>Programando la operación de reinicio: eliminando el archivo [2]. Para completar la operación se debe reiniciar el equipo.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_94</td><td>1033</td><td>Impossible d'inscrire le module [2]. HRESULT [3]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_94</td><td>1034</td><td>Error al registrar el módulo [2]. HRESULT [3].  Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_95</td><td>1033</td><td>Impossible d'annuler l'inscription du module [2]. HRESULT [3]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_95</td><td>1034</td><td>Error al eliminar el módulo [2] del registro. HRESULT [3]. Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_96</td><td>1033</td><td>Impossible de placer le package [2] dans le cache. Erreur : [3]. Contactez votre service de support technique.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_96</td><td>1034</td><td>Fallo al almacenar el paquete [2] en la memoria caché. Error: [3]. Póngase en contacto con el personal de soporte técnico.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_97</td><td>1033</td><td>Impossible d'inscrire la police [2]. Vérifiez que les autorisations dont vous disposez sont suffisantes pour installer des polices et que le système prend en charge cette police en particulier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_97</td><td>1034</td><td>No se puede registrar la fuente [2]. Compruebe que dispone de suficientes permisos para instalar fuentes y que el sistema admite esta fuente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_98</td><td>1033</td><td>Impossible d'annuler l'inscription de la police [2]. Vérifiez que les autorisations dont vous disposez sont suffisantes pour supprimer des polices.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_98</td><td>1034</td><td>No se puede eliminar del registro la fuente [2]. Compruebe que dispone de suficientes permisos para quitar fuentes.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ERROR_99</td><td>1033</td><td>Impossible de créer le raccourci [2]. Vérifiez que le dossier de destination existe et que vous êtes autorisé à y accéder.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ERROR_99</td><td>1034</td><td>No se puede crear el acceso directo [2]. Compruebe que la carpeta de destino existe y que puede obtener acceso a ella.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_INSTALLDIR</td><td>1033</td><td>{&amp;Tahoma8}[INSTALLDIR]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_INSTALLDIR</td><td>1034</td><td>{&amp;Tahoma8}[INSTALLDIR]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>1033</td><td>InstallShield</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>1034</td><td>InstallShield</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>1033</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>1034</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>1033</td><td>Le moteur InstallScript ne se trouve pas sur cet ordinateur. S'il est disponible, veuillez exécuter ISScript.msi ou veuillez contacter le personnel de support.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>1034</td><td>El procesador de InstallScript no se encuentra en el equipo.  Si se encuentra disponible, ejecute ISScript.msi o póngase en contacto con el personal de asistencia para que le ayude.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>1033</td><td>Le moteur InstallScript de cet ordinateur est antérieur à la version requise pour cette installation. Si possible, veuillez installer la dernière version de ISScript.msi ou veuillez contacter le personnel de support.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>1034</td><td>Para ejecutar esta instalación es necesaria una versión del procesador InstallScript más reciente que la que se encuentra en el equipo.  Si se encuentra disponible, instale la versión más reciente de ISScript.msi o póngase en contacto con el personal de asistencia para que le ayude.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_NEXT</td><td>1033</td><td>&amp;Suivant &gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_NEXT</td><td>1034</td><td>&amp;Siguiente &gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_OK</td><td>1033</td><td>{&amp;Tahoma8}OK</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_OK</td><td>1034</td><td>{&amp;Tahoma8}&amp;Aceptar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>1033</td><td>Ouvrir le fichier [SETUPEXENAME] original de : [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>1034</td><td>Abrir [SETUPEXENAME] original de [ProductName] </td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>1033</td><td>Cet exe n’est pas l’original exigé par [ProductName]. Si vous n’utilisez pas le [SETUPEXENAME] original pour installer les dépendances complémentaires, [ProductName] ne fonctionnera pas correctement. Voulez-vous rechercher le [SETUPEXENAME] original ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>1034</td><td>Este archivo ejecutable no parece ser el archivo ejecutable original de [ProductName]. Si no se utiliza el [SETUPEXENAME] original para instalar las dependencias adicionales, es posible que [ProductName] no funcione correctamente. ¿Desea buscar el [SETUPEXENAME] original?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>1033</td><td>Cette installation exigera peut-être des dépendances complémentaires. Si certaines dépendances sont absentes, [ProductName] risque de ne pas fonctionner correctement. Voulez-vous rechercher manuellement le fichier [SETUPEXENAME] original ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>1034</td><td>Esta instalación puede requerir dependencias adicionales. Sin ellas, es posible que [ProductName] no funcione correctamente. ¿Desea buscar el [SETUPEXENAME] original?</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>1033</td><td>Une version plus récente de l’application est déjà installée sur cet ordinateur. Avant d’installer l’ancienne version, vous devez désinstaller la version plus récente. Cliquez sur OK pour quitter cet Assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>1034</td><td>Ya tienes una versión más reciente de esta aplicación instalada en tu ordenador. Si deseas instalar esta versión, primero deberás desinstalar la versión más reciente. Haz clic en Aceptar para salir del asistente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>1033</td><td>&amp;Imprimer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>1034</td><td>&amp;Imprimir</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>1033</td><td>[ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>1034</td><td>[ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>1033</td><td>Création du pool d'application %s</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>1034</td><td>Creando grupo de aplicación %s</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>1033</td><td>Création des pools d'application...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>1034</td><td>Creando grupos de aplicación...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>1033</td><td>Création du répertoire virtuel IIS %s</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>1034</td><td>Creando directorio virtual de IIS %s</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>1033</td><td>Création des répertoires virtuels IIS...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>1034</td><td>Creando directorios virtuales de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>1033</td><td>Création de l'extension de service Web</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>1034</td><td>Creando extensión de servicio Web</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>1033</td><td>Création des extensions de service Web...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>1034</td><td>Creando extensiones de servicio Web...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>1033</td><td>Création du site Web IIS : %s</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>1034</td><td>Creando sitio web de IIS %s</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>1033</td><td>Création des sites Web IIS...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>1034</td><td>Creando sitios web de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>1033</td><td>Extraction des informations à partir des répertoires virtuels IIS...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>1034</td><td>Extrayendo información para los directorios virtuales de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>1033</td><td>Informations extraites à partir des répertoires virtuels IIS...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>1034</td><td>Información extraída para los directorios virtuales de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>1033</td><td>Suppression du pool d'application</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>1034</td><td>Eliminando grupo de aplicación</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>1033</td><td>Suppression des pools d'application...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>1034</td><td>Eliminando grupos de aplicación...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>1033</td><td>Suppression du site Web sur le port %d</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>1034</td><td>Eliminando el sitio Web del puerto %d</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>1033</td><td>Suppression du répertoire virtuel IIS %s</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>1034</td><td>Eliminando directorio virtual de IIS %s</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>1033</td><td>Suppression des répertoires virtuels IIS...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>1034</td><td>Eliminando directorios virtuales de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>1033</td><td>Suppression de l'extension de service Web</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>1034</td><td>Eliminando extensión de servicio Web</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>1033</td><td>Suppression des extensions de service Web...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>1034</td><td>Eliminando extensiones de servicio Web...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>1033</td><td>Suppression des sites Web IIS...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>1034</td><td>Eliminando sitios web de IIS...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>1033</td><td>Répétition des pools d'application...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>1034</td><td>Deshaciendo grupos de aplicación...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>1033</td><td>Répétition du répertoire virtuel et des modifications du site Web...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>1034</td><td>Deshaciendo cambios del sitio Web y directorio virtual...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>1033</td><td>Répétition des extensions de service Web...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>1034</td><td>Deshaciendo extensiones de servicio Web...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>1033</td><td>Remplacement de : %s par : %s dans : %s...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>1034</td><td>Reemplazando %s por %s en %s...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>1033</td><td>Calcul des coûts des fichiers XML...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>1034</td><td>Calculando espacio en disco para instalar archivos XML...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>1033</td><td>Création du fichier XML %s...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>1034</td><td>Creando archivo XML %s...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>1033</td><td>Exécution des changements de fichier XML...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>1034</td><td>Realizando cambios en el archivo XML...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>1033</td><td>Suppression du fichier XML %s...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>1034</td><td>Eliminado archivo XML %s...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>1033</td><td>Répétition des changements de fichier XML...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>1034</td><td>Deshaciendo cambios del archivo XML...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>1033</td><td>Mise à jour du fichier XML %s...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>1034</td><td>Actualizando archivo XML %s...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>1033</td><td>Cette installation pourra fonctionner jusqu’au : %s. L’installation va être abandonnée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>1034</td><td>Esta configuración funcionará hasta %s. Se cerrará la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>1033</td><td>Cette installation a été réalisée avec une version d’évaluation d’InstallShield : elle doit être lancée à l’aide de la commande setup.exe.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>1034</td><td>Esta configuración se creó con una versión de evaluación de InstallShield y solo se puede iniciar desde el archivo setup.exe.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1033</td><td/><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1034</td><td>POSSTD</td><td>0</td><td/><td>1310866602</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1036</td><td/><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1033</td><td/><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1034</td><td>LAUNCH~1.EXE|Launch POSSTD.vshost.exe</td><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1036</td><td/><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1033</td><td/><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1034</td><td>LAUNCH~1.EXE|Launch WindowsApplication1.vshost.exe</td><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1036</td><td/><td>0</td><td/><td>1310911626</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1033</td><td/><td>0</td><td/><td>581157485</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1034</td><td>LAUNCH~1.EXE|Launch POSSTD.exe</td><td>0</td><td/><td>581157485</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1036</td><td/><td>0</td><td/><td>581157485</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>1033</td><td/><td>0</td><td/><td>581157485</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>1034</td><td>LAUNCH~1.EXE|Launch POSSTD.vshost.exe</td><td>0</td><td/><td>581157485</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>1036</td><td/><td>0</td><td/><td>581157485</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>1033</td><td/><td>0</td><td/><td>1705203826</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>1034</td><td>POSSTD.exe</td><td>0</td><td/><td>1705226354</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>1036</td><td/><td>0</td><td/><td>1705203826</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>1033</td><td/><td>0</td><td/><td>1705203826</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>1034</td><td>LAUNCH~1.EXE|Launch POSSTD.vshost.exe</td><td>0</td><td/><td>1705203826</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>1036</td><td/><td>0</td><td/><td>1705203826</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>1033</td><td/><td>0</td><td/><td>-1239082324</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>1034</td><td>POSSTD</td><td>0</td><td/><td>-1239055700</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>1036</td><td/><td>0</td><td/><td>-1239082324</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>1033</td><td/><td>0</td><td/><td>-1239082324</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>1034</td><td>LAUNCH~1.EXE|Launch POSSTD.vshost.exe</td><td>0</td><td/><td>-1239082324</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>1036</td><td/><td>0</td><td/><td>-1239082324</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>1033</td><td>Sélectionnez le serveur de bases de données cible dans la liste des serveurs ci-dessous.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>1034</td><td>Seleccione el servidor de base de datos de destino en la lista de servidores que aparece a continuación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>1033</td><td>Sélectionnez le catalogue de base de données cible dans la liste des catalogues ci-dessous.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>1034</td><td>En la lista de nombres de catálogo siguiente, seleccione el catálogo de base de datos de destino.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>1033</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>1034</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>1033</td><td>P&amp;arcourir...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>1034</td><td>E&amp;xaminar...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>1033</td><td>Parc&amp;ourir...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>1034</td><td>Exa&amp;minar...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>1033</td><td>&amp;Nom du catalogue de bases de données :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>1034</td><td>&amp;Nombre del catálogo de base de datos:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>1033</td><td>Connexion via :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>1034</td><td>Conectarse a través de:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>1033</td><td>Sélectionnez le serveur de base de données et la méthode d'authentification.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>1034</td><td>Seleccione el servidor de base de datos y el método de autenticación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>1033</td><td>&amp;ID de connexion :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>1034</td><td>ID &amp;inicio de sesión:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>1033</td><td>Sélectionnez le serveur de bases de données à installer dans la liste ci-dessous ou cliquez sur Parcourir pour afficher une liste de tous les serveurs de bases de données. Vous pouvez également déterminer la façon d'authentifier votre connexion en utilisant vos informations actuelles ou un ID de connexion SQL et un mot de passe.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>1034</td><td>En la lista que aparece a continuación, seleccione el servidor de base de datos que va a instalar o bien haga clic en Examinar para ver una lista de todos los servidores de bases de datos. También puede especificar la forma de autenticar su inicio de sesión utilizando sus credenciales actuales o una contraseña e ID de inicio de sesión de SQL.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>1033</td><td>Mot de &amp;passe :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>1034</td><td>C&amp;ontraseña:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>1033</td><td>&amp;Serveur de base de données:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>1034</td><td>&amp;Servidor de base de datos:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>1033</td><td>Serveur de base de &amp;données que vous installez sur :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>1034</td><td>&amp;Servidor de base de datos en el que se realiza la instalación:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>1033</td><td>Authentification s&amp;erveur avec ID de connexion et mot de passe ci-dessous</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>1034</td><td>Autenticación de S&amp;QL servidor con la contraseña e ID de inicio de sesión indicados a continuación</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>1033</td><td>{&amp;MSSansBold8}Serveur de base de données</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>1034</td><td>{&amp;MSSansBold8}Servidor de base de datos</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>1033</td><td>Informations d'authentification &amp;Windows de l'utilisateur en cours</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>1034</td><td>&amp;Las credenciales de autenticación de Windows del usuario actual</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>1033</td><td>Exécution du script d'installation SQL...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>1034</td><td>Ejecutando archivo de comandos de instalación de SQL...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>1033</td><td>Exécution du script de désinstallation SQL...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>1034</td><td>Ejecutando archivo de comandos de desinstalación de SQL...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>1033</td><td>Cette installation ne peut être effectuée en lançant directement le logiciel MSI ; vous devez exécuter setup.exe.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>1034</td><td>La instalación no se puede ejecutar iniciando directamente el paquete MSI; debe ejecutar setup.exe.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>1033</td><td>{&amp;Tahoma8}La fonction sera installée lors de la première utilisation. (Disponible uniquement si la fonction prend en charge cette option.)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>1034</td><td>{&amp;Tahoma8}Se instalará la primera vez que se use. (Disponible sólo si el componente admite esta opción).</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>1033</td><td>{&amp;Tahoma8}La fonction sera installée dans son intégralité sur le disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>1034</td><td>{&amp;Tahoma8}Se instalará completamente en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>1033</td><td>{&amp;MSSansBold8}Conseils pour l'installation personnalisée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>1034</td><td>{&amp;MSSansBold8}Sugerencias de instalación personalizada</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>1033</td><td>{&amp;Tahoma8}L'installation personnalisée vous permet d'installer les fonctions de votre choix.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>1034</td><td>{&amp;Tahoma8}La instalación personalizada permite instalar componentes del programa selectivamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>1033</td><td>{&amp;Tahoma8}L'icône située en regard d'une fonction en détermine le mode d'installation. Cliquez sur cette icône pour afficher les options d'installation disponibles.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>1034</td><td>{&amp;Tahoma8}El icono al lado del nombre del componente indica el estado de instalación del componente. Haga clic en el icono para desplegar el menú de estado de instalación de cada componente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>1033</td><td>{&amp;Tahoma8}Cette icône indique que...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>1034</td><td>{&amp;Tahoma8}Este estado de instalación indica que el componente...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_Network</td><td>1033</td><td>{&amp;Tahoma8}La fonction sera installée pour être exécutée à partir du réseau. (Disponible uniquement si la fonction prend en charge cette option.)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_Network</td><td>1034</td><td>{&amp;Tahoma8}Se instalará para su ejecución desde red. (Disponible sólo si el componente admite esta opción).</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_OK</td><td>1033</td><td>{&amp;Tahoma8}OK</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_OK</td><td>1034</td><td>{&amp;Tahoma8}Aceptar</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>1033</td><td>{&amp;Tahoma8}Certaines sous-fonctions seront installées sur le disque dur local. (Disponible uniquement si la fonction comporte des sous-fonctions.)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>1034</td><td>{&amp;Tahoma8}Algunos subcomponentes se instalarán en el disco duro local. (Disponible sólo si el componente tiene subcomponentes).</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>1033</td><td>{&amp;Tahoma8}La fonction ne sera pas installée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>1034</td><td>{&amp;Tahoma8}No se instalarán.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_Available</td><td>1033</td><td>Disponibilité</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_Available</td><td>1034</td><td>Disponible</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>1033</td><td>octets</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>1034</td><td>bytes</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>1033</td><td>La compilation pour cette fonction exige...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>1034</td><td>Compilando el coste de este componente...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>1033</td><td>Différences</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>1034</td><td>Diferencias</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>1033</td><td>Taille du disque</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>1034</td><td>Tamaño del disco</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>1033</td><td>Cette fonction sera entièrement supprimée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>1034</td><td>Este componente se eliminará completamente.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>1033</td><td>Cette fonction sera toujours exécutée depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>1034</td><td>Este componente se continuará ejecutando desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>1033</td><td>Cette fonction libère [1] de votre disque dur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>1034</td><td>Este componente liberará [1] en el disco duro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>1033</td><td>Cette fonction et toutes ses sous-fonctions seront installées pour être exécutées depuis le CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>1034</td><td>Este componente y todos sus subcomponentes se instalarán para ejecución desde el CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>1033</td><td>Cette fonction sera installée pour être exécutée depuis le CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>1034</td><td>Este componente se instalará para ejecutar desde CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>1033</td><td>Cette fonction et toutes ses sous-fonctions seront installées pour être exécutées depuis le disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>1034</td><td>Este componente y todos sus subcomponentes se instalarán en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>1033</td><td>Cette fonction sera installée sur le disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>1034</td><td>Este componente se instalará en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>1033</td><td>Cette fonction et toutes ses sous-fonctions seront installées pour être exécutées depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>1034</td><td>Este componente y todos sus subcomponentes se instalarán para su ejecución desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>1033</td><td>Cette fonction sera installée pour être exécutée depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>1034</td><td>Este componente se instalará para ejecutar desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>1033</td><td>Sera installée lorsque ce sera requis.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>1034</td><td>Se podrá instalar cuando sea necesario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>1033</td><td>Cette fonction sera installée lorsque ce sera requis.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>1034</td><td>Este componente se podrá instalar cuando sea necesario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>1033</td><td>Cette fonction sera installée au moment nécessaire.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>1034</td><td>Este componente se podrá instalar cuando sea necesario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>1033</td><td>Cette fonction sera installée sur le disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>1034</td><td>Este componente se instalará en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>1033</td><td>Cette fonction sera installée sur votre disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>1034</td><td>Este componente se instalará en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>1033</td><td>Cette fonction sera installée pour être exécutée depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>1034</td><td>Este componente se instalará para ejecutar desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>1033</td><td>Cette fonction sera disponible pour être exécutée depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>1034</td><td>Este componente se instalará para su ejecución desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>1033</td><td>Cette fonction ne sera pas installée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>1034</td><td>Este componente no estará disponible.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>1033</td><td>Cette fonction sera installée pour être exécutée depuis le CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>1034</td><td>Este componente se instalará para ejecutar desde CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>1033</td><td>Cette fonction sera disponible pour être exécutée depuis le CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>1034</td><td>Este componente estará disponible para su ejecución desde CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>1033</td><td>Cette fonction restera sur votre disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>1034</td><td>Este componente permanecerá en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>1033</td><td>Cette fonction sera supprimée de votre disque dur local mais pourra toujours être exécutée depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>1034</td><td>Este componente se eliminará del disco duro local pero estará disponible para su ejecución desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>1033</td><td>Cette fonction sera supprimée de votre disque dur local mais pourra toujours être exécutée depuis votre CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>1034</td><td>Este componente se eliminará del disco duro local pero estará disponible para su ejecución desde el CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>1033</td><td>Cette fonction sera supprimée de votre disque dur local mais sera installée lorsque ce sera requis.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>1034</td><td>Este componente se eliminará del disco duro local pero se podrá instalar cuando se requiera.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>1033</td><td>Cette fonction nécessite [1] d'espace disque.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>1034</td><td>Este componente requiere [1] en el disco duro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>1033</td><td>Cette fonction sera toujours exécutée depuis le CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>1034</td><td>Este componente se continuará ejecutando desde el CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>1033</td><td>Cette fonction libère [1] de votre disque dur. Vous avez sélectionné [2] de [3] sous-fonctions. Les sous-fonctions libèrent [4] de votre disque dur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>1034</td><td>Este componente liberará [1] en el disco duro. Tiene seleccionados[2] de[3] subcomponentes. Estos subcomponentes liberarán [4] en el disco duro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>1033</td><td>Cette fonction libère [1] de votre disque dur. Vous avez sélectionné [2] de [3] sous-fonctions. Les sous-fonctions requièrent [4] de votre disque dur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>1034</td><td>Este componente liberará [1] en el disco duro. Tiene seleccionados[2] de[3] subcomponentes. Estos subcomponentes requieren[4] en el disco duro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>1033</td><td>Cette fonction requiert [1] de votre disque dur. Vous avez sélectionné [2] de [3] sous-fonctions. Les sous-fonctions libèrent [4] de votre disque dur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>1034</td><td>Este componente requiere [1] en el disco duro. Tiene seleccionados[2] de[3] subcomponentes. Estos subcomponentes liberarán [4] en el disco duro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>1033</td><td>Cette fonction requiert [1] de votre disque dur. Vous avez sélectionné [2] de [3] sous-fonctions. Les sous-fonctions requièrent [4] de votre disque dur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>1034</td><td>Este componente requiere [1] en el disco duro. Tiene seleccionados [2] de[3] subcomponentes. Estos subcomponentes requieren [4] en el disco duro.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>1033</td><td>Cette fonction ne sera plus disponible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>1034</td><td>Este componente no estará disponible.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>1033</td><td>Cette fonction sera entièrement désinstallée et vous ne pourrez pas l'exécuter depuis le réseau.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>1034</td><td>Este componente se desinstalará completamente y no se podrá ejecutar desde red.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>1033</td><td>Cette fonction était exécutée depuis le CD mais sera installée lorsque ce sera requis.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>1034</td><td>Este componente se ejecutó desde CD pero se podrá instalar cuando se requiera.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>1033</td><td>Cette fonction était exécutée depuis le CD mais sera installée sur le disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>1034</td><td>Este componente se ejecutó desde el CD pero se instalará en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>1033</td><td>Cette fonction était exécutée depuis le réseau mais sera installée lorsque ce sera requis.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>1034</td><td>Este componente se ejecutó desde red pero se podrá instalar cuando se requiera.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>1033</td><td>Cette fonction était exécutée depuis le réseau mais sera installée sur le disque dur local.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>1034</td><td>Este componente se ejecutó desde el red pero se instalará en el disco duro local.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>1033</td><td>Cette fonction sera entièrement désinstallée et vous ne pourrez pas l'exécuter depuis le CD.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>1034</td><td>Este componente se desinstalará completamente y no se podrá ejecutar desde CD.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>1033</td><td>Fldr|Nouveau dossier</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>1034</td><td>Carp|Carpeta nueva</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_GB</td><td>1033</td><td>Go</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_GB</td><td>1034</td><td>GB</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_KB</td><td>1033</td><td>ko</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_KB</td><td>1034</td><td>KB</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_MB</td><td>1033</td><td>Mo</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_MB</td><td>1034</td><td>MB</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_Required</td><td>1033</td><td>Requis</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_Required</td><td>1034</td><td>Requerido</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>1033</td><td>Temps restant: {[1] min }{[2] sec}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>1034</td><td>Tiempo restante:{[1] min. }{[2] seg}.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>1033</td><td>Volume</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>1034</td><td>Volumen</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>1033</td><td>{&amp;Tahoma8}Je n'accepte pas les termes &amp;de ce contrat de licence</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>1034</td><td>{&amp;Tahoma8}&amp;No acepto los términos del contrato de licencia</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>1033</td><td>{&amp;Tahoma8}&amp;J'accepte les termes de ce contrat de licence</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>1034</td><td>{&amp;Tahoma8}Ac&amp;epto los términos del contrato de licencia</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>1033</td><td>Cliquez sur Suivant pour installer les fichiers dans ce dossier ou sur Modifier pour les installer dans un autre dossier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>1034</td><td>Haga clic en Siguiente para instalar en esta carpeta o en Cambiar para instalar en una carpeta diferente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>1033</td><td>[DATABASEDIR]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>1034</td><td>[DATABASEDIR]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>1033</td><td>{&amp;MSSansBold8}Dossier de base de données</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>1034</td><td>{&amp;MSSansBold8}Carpeta Base de datos</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>1033</td><td>{&amp;Tahoma8}&amp;Modifier...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>1034</td><td>{&amp;Tahoma8}Ca&amp;mbiar...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Suivant pour installer les fichiers dans ce dossier ou sur Modifier pour les installer dans un autre dossier.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Siguiente para instalar en esta carpeta o en Cambiar para instalar en una carpeta diferente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>1033</td><td>{&amp;MSSansBold8}Dossier cible</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>1034</td><td>{&amp;MSSansBold8}Carpeta de destino</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>1033</td><td>{&amp;Tahoma8}Installer [ProductName] vers:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>1034</td><td>{&amp;Tahoma8}Instalar[ProductName] en:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>1033</td><td>Personnalisé</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>1034</td><td>Personalizada</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>1033</td><td>Minimal</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>1034</td><td>Mínima</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>1033</td><td>Par défaut</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>1034</td><td>Típica</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>1033</td><td>{&amp;Tahoma8}Indiquez le dossier cible à utiliser.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>1034</td><td>{&amp;Tahoma8}Buscar la carpeta de destino.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>1033</td><td>{&amp;MSSansBold8}Modification du dossier cible</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>1034</td><td>{&amp;MSSansBold8}Cambiar la carpeta de destino actual</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>1033</td><td>Créer nouveau dossier|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>1034</td><td>Crear nueva carpeta|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>1033</td><td>{&amp;Tahoma8}&amp;Nom de dossier:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>1034</td><td>{&amp;Tahoma8}&amp;Nombre de la carpeta:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>1033</td><td>{&amp;Tahoma8}&amp;Rechercher dans:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>1034</td><td>{&amp;Tahoma8}&amp;Buscar en:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>1033</td><td>Dossier parent|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>1034</td><td>Subir un nivel|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield(R) Wizard va créer une image serveur de [ProductName] à l'emplacement réseau spécifié. Pour continuer, cliquez sur Suivant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>1034</td><td>{&amp;Tahoma8}InstallShield(R) Wizard creará una imagen de servidor [ProductName] en la ubicación de red especificada. Para continuar, haga clic en Siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>1033</td><td>{&amp;VerdanaBold14}Bienvenue dans l'InstallShield Wizard pour [ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>1034</td><td>{&amp;VerdanaBold14}Bienvenido a [ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>1033</td><td>{&amp;Tahoma8}&amp;Modifier...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>1034</td><td>{&amp;Tahoma8}Ca&amp;mbiar...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>1033</td><td>{&amp;Tahoma8}Veuillez saisir un emplacement réseau ou cliquer sur Modifier pour rechercher un emplacement. Cliquez sur Installer pour créer une image serveur de [ProductName] à l'emplacement réseau spécifié ou cliquez sur Annuler pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>1034</td><td>{&amp;Tahoma8}Introduzca la ubicación de red o haga clic en Cambiar para buscar otra ubicación. Haga clic en Instalar para crear una imagen de servidor de [ProductName] en la ubicación de red especificada o haga clic en Cancelar para salir del asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>1033</td><td>{&amp;Tahoma8}&amp;Installer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>1034</td><td>{&amp;Tahoma8}&amp;Instalar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>1033</td><td>{&amp;Tahoma8}&amp;Emplacement réseau:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>1034</td><td>{&amp;Tahoma8}&amp;Ubicación de red:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>1033</td><td>{&amp;MSSansBold8}Emplacement réseau</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>1034</td><td>{&amp;MSSansBold8}Ubicación de red</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>1033</td><td>{&amp;Tahoma8}Veuillez spécifier un emplacement réseau pour l'image serveur du produit.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>1034</td><td>{&amp;Tahoma8}Especificar una unidad de red para la imagen de servidor del producto.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseButton</td><td>1033</td><td>P&amp;arcourir...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseButton</td><td>1034</td><td>E&amp;xaminar...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>1033</td><td>{&amp;Tahoma8}Indiquez le dossier cible à utiliser.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>1034</td><td>{&amp;Tahoma8}Buscar la carpeta de destino.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>1033</td><td>{&amp;MSSansBold8}Modification du dossier cible</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>1034</td><td>{&amp;MSSansBold8}Cambiar la carpeta de destino actual</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>1033</td><td>Créer nouveau dossier|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>1034</td><td>Crear nueva carpeta|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>1033</td><td>{&amp;Tahoma8}&amp;Nom de dossier:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>1034</td><td>{&amp;Tahoma8}&amp;Nombre de la carpeta:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>1033</td><td>{&amp;Tahoma8}&amp;Rechercher dans:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>1034</td><td>{&amp;Tahoma8}&amp;Buscar en:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>1033</td><td>{&amp;Tahoma8}OK</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>1034</td><td>{&amp;Tahoma8}&amp;Aceptar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>1033</td><td>Dossier parent|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>1034</td><td>Subir un nivel|</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>1033</td><td>Rechercher un compte utilisateur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>1034</td><td>Buscar una cuenta de usuario</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>1033</td><td>Sélectionner un groupe de listes d'utilisateurs</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>1034</td><td>Seleccionar un grupo de listas de usuarios</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>1033</td><td>Sélectionnez un nom d'utilisateur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>1034</td><td>Seleccionar un nombre de usuario</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>1033</td><td>{&amp;Tahoma8}Souhaitez-vous vraiment annuler l'installation de [ProductName] ?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>1034</td><td>{&amp;Tahoma8}¿Está seguro de que desea cancelar la instalación de [ProductName]?</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>1033</td><td>{&amp;Tahoma8}&amp;Non</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>1034</td><td>{&amp;Tahoma8}&amp;No</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>1033</td><td>{&amp;Tahoma8}&amp;Oui</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>1034</td><td>{&amp;Tahoma8}&amp;Sí</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>1033</td><td>Con&amp;firmer le mot de passe :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>1034</td><td>Con&amp;firmar contraseña:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>1033</td><td>Informations concernant le nouvel utilisateur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>1034</td><td>Información de nuevo usuario</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>1033</td><td>Informations conc&amp;ernant le nouvel utilisateur...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>1034</td><td>Información de nu&amp;evo usuario...</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>1033</td><td>{&amp;Tahoma8}&amp;Modifier...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>1034</td><td>{&amp;Tahoma8}Ca&amp;mbiar...</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>1033</td><td>{&amp;Tahoma8}Pour modifier les paramètres d'installation d'une fonction, cliquez sur l'icône correspondante dans la liste ci-dessous.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>1034</td><td>{&amp;Tahoma8}Para cambiar la forma de instalación de un componente, haga clic en un icono de la lista siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>1033</td><td>{&amp;MSSansBold8}Installation personnalisée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>1034</td><td>{&amp;MSSansBold8}Instalación personalizada</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>1033</td><td>{&amp;Tahoma8}Description de la fonction</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>1034</td><td>{&amp;Tahoma8}Descripción del componente</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>1033</td><td>{&amp;Tahoma8}&lt;chemin sélectionné de la fonction&gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>1034</td><td>{&amp;Tahoma8}&lt;selected feature path&gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>1033</td><td>{&amp;Tahoma8}Taille de la fonction</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>1034</td><td>{&amp;Tahoma8}Tamaño del componente</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>1033</td><td>{&amp;Tahoma8}&amp;Aide</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>1034</td><td>{&amp;Tahoma8}A&amp;yuda</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>1033</td><td>{&amp;Tahoma8}Installer sur:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>1034</td><td>{&amp;Tahoma8}Instalar en:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>1033</td><td>{&amp;Tahoma8}Description multiligne de l'élément actuellement installé</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>1034</td><td>{&amp;Tahoma8}Descripción multilínea del elemento seleccionado actualmente</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>1033</td><td>{&amp;Tahoma8}Sélectionnez les fonctions du programme que vous souhaitez installer.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>1034</td><td>{&amp;Tahoma8}Seleccione los componentes del programa que desee instalar.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>1033</td><td>{&amp;Tahoma8}&amp;Espace</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>1034</td><td>{&amp;Tahoma8}&amp;Espacio</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>1033</td><td>{&amp;Tahoma8}L'espace disque requis pour l'installation dépasse l'espace disque disponible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>1034</td><td>{&amp;Tahoma8}El espacio en disco necesario para la instalación excede el espacio disponible en el disco.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>1033</td><td>{&amp;Tahoma8}L'espace disponible sur les volumes mis en évidence est insuffisant pour permettre l'installation des fonctions sélectionnées. Libérez de l'espace sur ces volumes, désélectionnez certaines fonctions ou choisissez un autre emplacement cible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>1034</td><td>{&amp;Tahoma8}El espacio en disco disponible de los volúmenes resaltados no es suficiente para los componentes seleccionados actualmente. Puede eliminar archivos de los volúmenes resaltados, instalar menos componentes en unidades locales o seleccionar otras unidades de instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>1033</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>1034</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>1033</td><td>{&amp;Tahoma8}&amp;OK</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>1034</td><td>{&amp;Tahoma8}&amp;Aceptar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>1033</td><td>{&amp;MSSansBold8}Espace disque insuffisant</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>1034</td><td>{&amp;MSSansBold8}No hay espacio suficiente en disco</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>1033</td><td>&amp;Domaine ou serveur :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>1034</td><td>&amp;Dominio o servidor:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>1033</td><td>{&amp;Tahoma8}A&amp;bandonner</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>1034</td><td>{&amp;Tahoma8}&amp;Anular</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>1033</td><td>{&amp;Tahoma8}&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>1034</td><td>{&amp;Tahoma8}&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>1033</td><td>{&amp;Tahoma8}&amp;Ignorer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>1034</td><td>{&amp;Tahoma8}&amp;Ignorar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>1033</td><td>Informations sur l'installation de [ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>1034</td><td> Información del instalador de [ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>1033</td><td>{&amp;Tahoma8}&amp;Non</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>1034</td><td>{&amp;Tahoma8}&amp;No</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>1033</td><td>{&amp;Tahoma8}&amp;OK</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>1034</td><td>{&amp;Tahoma8}&amp;Aceptar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>1033</td><td>{&amp;Tahoma8}&amp;Réessayer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>1034</td><td>{&amp;Tahoma8}&amp;Reintentar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>1033</td><td>{&amp;Tahoma8}&amp;Oui</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>1034</td><td>{&amp;Tahoma8}&amp;Sí</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>1033</td><td>{&amp;Tahoma8}&amp;Terminer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>1034</td><td>{&amp;Tahoma8}&amp;Finalizar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield Wizard a installé [ProductName] avec succès. Cliquez sur Terminer pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>1034</td><td>{&amp;Tahoma8}InstallShield Wizard ha instalado [ProductName] correctamente. Haga clic en Finalizar para salir del asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>1033</td><td>Lancer le programme</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>1034</td><td>Ejecutar programa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>1033</td><td>Afficher le fichier Lisez-moi</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>1034</td><td>Mostrar archivo Léame</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield a désinstallé [ProductName] avec succès. Cliquez sur Terminer pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>1034</td><td>{&amp;Tahoma8}InstallShield Wizard ha desinstalado [ProductName] correctamente. Haga clic en Finalizar para salir del asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>1033</td><td>Votre connexion Internet vous permet de vérifier si vous disposez des mises à jour les plus récentes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>1034</td><td>Puede utilizar la conexión a Internet para asegurarse de que tiene las últimas actualizaciones.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>1033</td><td>Il se peut que certains fichiers aient été mis à jour depuis l'achat de votre copie de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>1034</td><td>Es posible que algunos archivos de programa se hayan actualizado desde que adquirió la copia de [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>1033</td><td>L'assistant a terminé l'installation de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>1034</td><td>El programa de instalación ha terminado de instalar [ProductName].</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>1033</td><td>&amp;Oui, vérifier les mises à jour du programme(Recommandé) une fois l'installation terminée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>1034</td><td>&amp;Sí, buscar actualizaciones de programas (Recomendado) una vez finalizada la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard de [ProductName] terminé</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>1034</td><td>{&amp;TahomaBold10}[ProductName] Finalizado - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Terminer pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Finalizar para salir del asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>1033</td><td>{&amp;Tahoma8}&amp;Terminer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>1034</td><td>{&amp;Tahoma8}&amp;Finalizar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>1033</td><td>{&amp;Tahoma8}Vous pouvez conserver les éléments installés existant sur votre système pour poursuivre l'installation ultérieurement ou restaurer l'état de votre système avant l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>1034</td><td>{&amp;Tahoma8}Puede guardar todos los elementos instalados en el sistema para continuar la instalación en otra ocasión o restaurar el sistema a su estado original anterior a la instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>1033</td><td>{&amp;Tahoma8}Aucune modification n'a été apportée sur le système. Pour terminer l'installation ultérieurement, veuillez relancer l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>1034</td><td>{&amp;Tahoma8}Su sistema no ha sido modificado. Para completar la instalación en otra ocasión, vuelva a ejecutarla.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Restaurer ou sur Poursuivre ultérieurement pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Restaurar o Continuar posteriormente para salir del Asistente de instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard de [ProductName]terminé</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>1034</td><td>{&amp;TahomaBold10}[ProductName] Finalizado - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>1033</td><td>{&amp;Tahoma8}L'assistant a été interrompu avant la fin de l'installation de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>1034</td><td>{&amp;Tahoma8}El asistente se ha interrumpido antes de completar la instalación de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>1033</td><td>{&amp;MSSansBold8}Besoins en espace disque</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>1034</td><td>{&amp;MSSansBold8}Requisitos de espacio en disco</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>1033</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>1034</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>1033</td><td>{&amp;Tahoma8}OK</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>1034</td><td>{&amp;Tahoma8}&amp;Aceptar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>1033</td><td>{&amp;Tahoma8}Espace disque requis pour l'installation des fonctions sélectionnées.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>1034</td><td>{&amp;Tahoma8}Espacio en disco necesario para instalar los componentes seleccionados.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>1033</td><td>{&amp;Tahoma8}Les volumes surlignés n'ont pas assez d'espace disque disponible pour les fonctions actuellement sélectionnées. Vous pouvez supprimer les fichiers des volumes surlignés, choisir d'installer moins de fonctions sur les lecteurs locaux ou sélectionner d'autres lecteurs cible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>1034</td><td>{&amp;Tahoma8}El espacio en disco disponible de los volúmenes resaltados no es suficiente para los componentes seleccionados actualmente. Puede eliminar archivos de los volúmenes resaltados, instalar menos componentes en unidades locales o seleccionar otras unidades de instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>1033</td><td>{&amp;Tahoma8}Les programmes suivants utilisent des fichiers devant être mis à jour par cette installation. Veuillez fermer ces programmes et cliquer sur Réessayer pour poursuivre.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>1034</td><td>{&amp;Tahoma8}Las aplicaciones siguientes están utilizando archivos que se deben actualizar en esta instalación. Cierre estas aplicaciones y haga clic en Reintentar para continuar.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>1033</td><td>{&amp;Tahoma8}&amp;Quitter</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>1034</td><td>{&amp;Tahoma8}&amp;Salir</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>1033</td><td>{&amp;MSSansBold8}Fichiers en cours d'utilisation</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>1034</td><td>{&amp;MSSansBold8}Archivos en uso</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>1033</td><td>{&amp;Tahoma8}Certains fichiers devant être mis à jour sont en cours d'utilisation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>1034</td><td>{&amp;Tahoma8}Se están utilizando actualmente algunos archivos que es necesario actualizar.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>1033</td><td>{&amp;Tahoma8}&amp;Ignorer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>1034</td><td>{&amp;Tahoma8}&amp;Ignorar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>1033</td><td>{&amp;Tahoma8}&amp;Réessayer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>1034</td><td>{&amp;Tahoma8}&amp;Reintentar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsGroup</td><td>1033</td><td>Groupe de listes d'&amp;utilisateurs :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsGroup</td><td>1034</td><td>&amp;Grupo de listas de usuarios:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsGroupLabel</td><td>1033</td><td>Groupe de listes d'&amp;utilisateurs :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsGroupLabel</td><td>1034</td><td>&amp;Grupo de listas de usuarios:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>1033</td><td>{&amp;Tahoma8}Veuillez attendre que l'InstallShield(R) soit prêt pour vous guider à travers le processus d'installation</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>1034</td><td>{&amp;Tahoma8}Por favor, espere mientras el programa de instalación prepara InstallShield Wizard para guiarle durante el proceso.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>1033</td><td>{&amp;VerdanaBold14}Bienvenue dans l'InstallShield Wizard de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>1034</td><td>{&amp;VerdanaBold14}Bienvenido a [ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>1033</td><td>{&amp;MSSansBold8}Contrat de licence</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>1034</td><td>{&amp;MSSansBold8}Contrato de licencia</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>1033</td><td>{&amp;Tahoma8}Lisez attentivement le contrat de licence suivant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>1034</td><td>{&amp;Tahoma8}Lea cuidadosamente el acuerdo de licencia siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>1033</td><td>Spécifiez le compte utilisateur devant être utilisé par cette application. Les comptes utilisateurs doivent avoir le format DOMAINE\Nomutilisateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>1034</td><td>Especifique la cuenta de usuario que esta aplicación va a utilizar. Las cuentas de usuario deben tener el formato DOMINIO\Nombre de usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>1033</td><td>{&amp;MSSansBold8}Informations de connexion</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>1034</td><td>{&amp;MSSansBold8}Información de inicio de sesión</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>1033</td><td>Spécifiez un nom d'utilisateur et un mot de passe</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>1034</td><td>Especifique un nombre de usuario y una contraseña.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>1033</td><td>Sélectionnez le bouton ci-dessous pour spécifier des informations concernant un nouvel utilisateur qui sera créé au cours de l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>1034</td><td>Seleccione el botón que aparece a continuación para especificar información acerca del nuevo usuario que se va a crear durante la instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>1033</td><td>{&amp;Tahoma8}Modifier les fonctions du programme à installer. L'option affiche la boîte de dialogue Installation personnalisée dans laquelle vous pouvez modifier l'installation des fonctions.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>1034</td><td>{&amp;Tahoma8}Cambiar los componentes del programa que se instalarán. Esta opción muestra el cuadro de diálogo Selección personalizada, en el que podrá cambiar la manera en que se instalan los componentes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>1033</td><td>{&amp;Tahoma8}Modifier, réparer ou supprimer le programme.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>1034</td><td>{&amp;Tahoma8}Modificar, reparar o eliminar el programa.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Modifier</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>1034</td><td>{&amp;MSSansBold8}&amp;Modificar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>1033</td><td>{&amp;MSSansBold8}Maintenance du programme</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>1034</td><td>{&amp;MSSansBold8}Mantenimiento del programa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>1033</td><td>{&amp;MSSansBold8}S&amp;upprimer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>1034</td><td>{&amp;MSSansBold8}&amp;Eliminar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>1033</td><td>{&amp;Tahoma8}Supprimer [ProductName] de votre ordinateur.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>1034</td><td>{&amp;Tahoma8}Eliminar [ProductName] del equipo.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Réparer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>1034</td><td>{&amp;MSSansBold8}&amp;Reparar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>1033</td><td>{&amp;Tahoma8}Réparer les erreurs dans le programme. Cette option répare les fichiers, les raccourcis et les entrées de registre manquants ou altérés.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>1034</td><td>{&amp;Tahoma8}Reparar errores en el programa. Esta opción repara archivos dañados o que falten, accesos directos y entradas del registro.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield(R) Wizard vous permettra de modifier, de réparer ou de supprimer [ProductName]. Pour continuer, cliquez sur Suivant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>1034</td><td>{&amp;Tahoma8}InstallShield(R) Wizard le permitirá modificar, reparar o eliminar [ProductName]. Para continuar, haga clic en Siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>1033</td><td>{&amp;TahomaBold10}Bienvenue dans l'InstallShield Wizard de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>1034</td><td>{&amp;TahomaBold10}Bienvenido a [ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>1033</td><td>Les applications suivantes utilisent des fichiers devant être mis à jour par cette installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>1034</td><td>Las aplicaciones siguientes están utilizando archivos que se deben actualizar en esta instalación.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>1033</td><td>Fermeture automatique et tentative de redémarrage des applications.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>1034</td><td>Cerrar e intentar reiniciar automáticamente las aplicaciones.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>1033</td><td>Ne fermez pas les applications. (Vous devrez réinitialiser.)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>1034</td><td>No cerrar las aplicaciones. (Será necesario reiniciar.)</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>1033</td><td>L'InstallShield(R) Wizard va installer le patch pour [ProductName] sur votre ordinateur. Pour continuer, cliquez sur Mise à jour.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>1034</td><td>InstallShield(R) Wizard instalará la revisión de [ProductName] en el ordenador.  Para continuar, haga clic en Actualizar.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>1033</td><td>Patch [ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>1034</td><td>[ProductName] Revisión - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>1033</td><td>Mise à jo&amp;ur &gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>1034</td><td>A&amp;ctualizar &gt;</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>1033</td><td>{&amp;TahomaBold10}Bienvenue dans le patch pour [ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>1034</td><td>{&amp;TahomaBold10}Bienvenido a la revisión de [ProductName] </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>1033</td><td>{&amp;Tahoma8}(masqué)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>1034</td><td>{&amp;Tahoma8}(Hidden for now)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>1033</td><td>{&amp;Tahoma8}(masqué)Temps restant estimé:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>1034</td><td>{&amp;Tahoma8}(Hidden for now)Tiempo restante estimado:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>1033</td><td>{&amp;MSSansBold8}Installation de [ProductName] </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>1034</td><td>{&amp;MSSansBold8}Instalando [ProductName] </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>1033</td><td>Opération terminée</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>1034</td><td>Finalizado</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>1033</td><td>{&amp;Tahoma8}(masqué)sec.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>1034</td><td>{&amp;Tahoma8}(Hidden for now) Seg.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>1033</td><td>{&amp;Tahoma8}Etat:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>1034</td><td>{&amp;Tahoma8}Estado:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>1033</td><td>{&amp;MSSansBold8}Désinstallation de [ProductName] </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>1034</td><td>{&amp;MSSansBold8}Desinstalando [ProductName] </td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>1033</td><td>{&amp;Tahoma8}Les fonctions sont en cours de désinstallation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>1034</td><td>{&amp;Tahoma8}Los componentes del programa seleccionados se están desinstalando.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>1033</td><td>{&amp;Tahoma8}Les fonctions sont en cours d'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>1034</td><td>{&amp;Tahoma8}Los componentes del programa seleccionados se están instalando.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>1033</td><td>{&amp;Tahoma8}[ProductName] est en cours de désinstallation. L'opération peut prendre quelques minutes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>1034</td><td>{&amp;Tahoma8}Por favor, espere mientras InstallShield Wizard desinstala [ProductName]. Este proceso puede durar varios minutos.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>1033</td><td>{&amp;Tahoma8}[ProductName] est en cours d'installation. L'opération peut prendre quelques minutes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>1034</td><td>{&amp;Tahoma8}Por favor, espere mientras InstallShield Wizard instala [ProductName]. Este proceso puede durar varios minutos.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>1033</td><td>&amp;Annuler</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>1034</td><td>&amp;Cancelar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>1033</td><td>Veuillez lire attentivement les informations lisez-moi suivantes.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>1034</td><td>Lea detenidamente la siguiente información de última hora.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>1033</td><td>{&amp;MSSansBold8}Informations Lisez-moi</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>1034</td><td>{&amp;MSSansBold8}Información de última hora</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>1033</td><td>{&amp;Tahoma8}&amp;Tous les utilisateur du système</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>1034</td><td>{&amp;Tahoma8}Cua&amp;lquiera que utilice este equipo (todos los usuarios)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>1033</td><td>{&amp;MSSansBold8}Informations client</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>1034</td><td>{&amp;MSSansBold8}Información del cliente</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>1033</td><td>{&amp;Tahoma8}Installer ce programme pour:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>1034</td><td>{&amp;Tahoma8}Instalar esta aplicación para:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>1033</td><td>{&amp;Tahoma8}L'utilisateur en cours unique&amp;ment ([USERNAME])</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>1034</td><td>{&amp;Tahoma8}Sólo para &amp;mí ([USERNAME])</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>1033</td><td>{&amp;Tahoma8}&amp;Organisation:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>1034</td><td>{&amp;Tahoma8}&amp;Organización:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>1033</td><td>{&amp;Tahoma8}Indiquez les informations demandées.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>1034</td><td>{&amp;Tahoma8}Por favor, introduzca la información.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>1033</td><td>&amp;Numéro de série :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>1034</td><td>&amp;Número de serie:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>1033</td><td>{50}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>1034</td><td>{50}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>1033</td><td>{80}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>1034</td><td>{80}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>1033</td><td>{&amp;Tahoma8}Nom &amp;utilisateur:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>1034</td><td>{&amp;Tahoma8}Nombre de &amp;usuario:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield(R) Wizard terminera l'installation interrompue de [ProductName] sur votre ordinateur. Pour continuer, cliquez sur Suivant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>1034</td><td>{&amp;Tahoma8}InstallShield(R) Wizard acabará de realizar la instalación suspendida de [ProductName] en su equipo. Para continuar, haga clic en Siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>1033</td><td>{&amp;TahomaBold10}Reprendre l'InstallShield Wizard de [ProductName]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>1034</td><td>{&amp;TahomaBold10}Continuando con [ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield(R) Wizard terminera l'installation de [ProductName] sur votre ordinateur. Pour continuer, cliquez sur Suivant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>1034</td><td>{&amp;Tahoma8}InstallShield(R) Wizard acabará de realizar la instalación de [ProductName] en su equipo. Para continuar, haga clic en Siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>1033</td><td>Sélectionner un domaine ou un serveur</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>1034</td><td>Seleccionar un servidor de dominio</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>1033</td><td>Sélectionnez le bouton ci-dessous pour spécifier des informations concernant un nouvel utilisateur qui sera créé au cours de l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>1034</td><td>Utilice los botones Examinar para seleccionar un dominio\servidor y un nombre de usuario.</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>1033</td><td>Afficher le journal de Windows Installer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>1034</td><td>Mostrar el registro del instalador de Windows</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>1033</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>1034</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>1033</td><td>{&amp;Tahoma8}Permet d'installer toutes les fonctions du programme. (Besoins maximum en espace disque.)</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>1034</td><td>{&amp;Tahoma8}Se instalarán todos los componentes del programa. (Necesita más espacio en disco).</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>1033</td><td>{&amp;Tahoma8}Permet d'effectuer une installation sélective et de définir l'emplacement cible des fonctions choisies. S'adresse aux utilisateurs plus expérimentés.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>1034</td><td>{&amp;Tahoma8}Elija los componentes del programa que desee instalar y la ubicación en que se instalarán. Recomendada para usuarios avanzados.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>1033</td><td>{&amp;Tahoma8}Sélectionnez le type d'installation voulu.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>1034</td><td>{&amp;Tahoma8}Elija el tipo de instalación que se adapte mejor a sus necesidades.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>1033</td><td>{&amp;MSSansBold8}Installatio&amp;n standard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>1034</td><td>{&amp;MSSansBold8}Com&amp;pleta</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>1033</td><td>{&amp;MSSansBold8}Installation personnalisé&amp;e</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>1034</td><td>{&amp;MSSansBold8}Personali&amp;zada</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Minimal</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>1034</td><td>{&amp;MSSansBold8}&amp;Mínima</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>1033</td><td>{&amp;Tahoma8}Les fonctionnalités minimales requises seront installées</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>1034</td><td>{&amp;Tahoma8}Se instalarán los componentes mínimos requeridos</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>1033</td><td>{&amp;Tahoma8}Veuillez sélectionner un type d'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>1034</td><td>{&amp;Tahoma8}Seleccione un tipo de instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>1033</td><td>{&amp;MSSansBold8}Type d'installation</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>1034</td><td>{&amp;MSSansBold8}Tipo de instalación</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>1033</td><td>{&amp;MSSansBold8}Par &amp;défaut</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>1034</td><td>{&amp;MSSansBold8}&amp;Típica</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Terminer pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Finalizar para salir del asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>1033</td><td>{&amp;Tahoma8}&amp;Terminer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>1034</td><td>{&amp;Tahoma8}&amp;Finalizar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>1033</td><td>{&amp;Tahoma8}Vous pouvez conserver les éléments installés existant sur votre système pour poursuivre l'installation ultérieurement ou restaurer l'état de votre système avant l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>1034</td><td>{&amp;Tahoma8}Puede guardar todos los elementos instalados en el sistema para continuar la instalación en otra ocasión o restaurar el sistema a su estado original anterior a la instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>1033</td><td>{&amp;Tahoma8}Aucune modification n'a été apportée sur le système. Pour installer ce programme ultérieurement, veuillez relancer l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>1034</td><td>{&amp;Tahoma8}Su sistema no ha sido modificado. Para instalar este programa en otra ocasión, vuelva a ejecutar el programa de instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Restaurer ou sur Poursuivre ultérieurement pour quitter l'assistant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Restaurar o Continuar posteriormente para salir del Asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard terminé</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>1034</td><td>{&amp;TahomaBold10}[ProductName] Finalizado - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>1033</td><td>{&amp;Tahoma8}L'assistant a été interrompu avant la fin de l'installation de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>1034</td><td>{&amp;Tahoma8}El asistente se ha interrumpido antes de completar la instalación de [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>1033</td><td>Nom &amp;utilisateur :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>1034</td><td>Nombre de &amp;usuario:</td><td>0</td><td/><td>1310880842</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>1033</td><td>{&amp;Tahoma8}Pour vérifier les paramètres d'installation ou les modifier, cliquez sur Précédent. Pour quitter l'assistant sans installer le programme, cliquez sur Annuler.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>1034</td><td>{&amp;Tahoma8}Si desea revisar la configuración de la instalación o realizar algún cambio, haga clic en Atrás. Haga clic en Cancelar para salir del Asistente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Installer pour commencer l'installation.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Instalar para comenzar la instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>1033</td><td>Société: [COMPANYNAME]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>1034</td><td>Organización: [COMPANYNAME]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>1033</td><td>Configuration actuelle:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>1034</td><td>Configuración actual:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>1033</td><td>Dossier cible :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>1034</td><td>Carpeta de destino:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>1033</td><td>{&amp;Tahoma8}&amp;Installer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>1034</td><td>{&amp;Tahoma8}&amp;Instalar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>1033</td><td>[INSTALLDIR]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>1034</td><td>[INSTALLDIR]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>1033</td><td>{&amp;MSSansBold8}La modification du programme peut commencer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>1034</td><td>{&amp;MSSansBold8}Preparado para modificar el programa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>1033</td><td>{&amp;MSSansBold8}L'installation du programme peut commencer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>1034</td><td>{&amp;MSSansBold8}Preparado para instalar el programa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>1033</td><td>{&amp;MSSansBold8}La réparation du programme peut commencer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>1034</td><td>{&amp;MSSansBold8}Preparado para reparar el programa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>1033</td><td>[SelectedSetupType]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>1034</td><td>[SelectedSetupType]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>1033</td><td>Numéro de série : [ISX_SERIALNUM]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>1034</td><td>Número de serie: [ISX_SERIALNUM]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>1033</td><td>Type d'installation :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>1034</td><td>Tipo de instalación:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>1033</td><td>Informations utilisateur :</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>1034</td><td>Información del usuario:</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>1033</td><td>Nom: [USERNAME]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>1034</td><td>Nombre: [USERNAME]</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>1033</td><td>{&amp;Tahoma8}Toutes les informations nécessaires à l'installation sont réunies.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>1034</td><td>{&amp;Tahoma8}El Asistente está preparado para comenzar la instalación.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>1033</td><td>{&amp;Tahoma8}Vous avez choisi de supprimer le programme de votre système.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>1034</td><td>{&amp;Tahoma8}Ha elegido eliminar el programa del sistema.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>1033</td><td>{&amp;Tahoma8}Pour vérifier les paramètres ou les modifier, cliquez sur Précédent.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>1034</td><td>{&amp;Tahoma8}Si desea revisar la configuración o realizar algún cambio, haga clic en Atrás.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>1033</td><td>{&amp;Tahoma8}Cliquez sur Supprimer pour supprimer [ProductName] de votre ordinateur. Après la suppression, ce programme ne sera plus disponible.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>1034</td><td>{&amp;Tahoma8}Haga clic en Eliminar para eliminar [ProductName] de su equipo. Una vez que se haya eliminado, este programa no estará disponible para su uso.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>1033</td><td>{&amp;Tahoma8}&amp;Supprimer</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>1034</td><td>{&amp;Tahoma8}&amp;Eliminar</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>1033</td><td>{&amp;MSSansBold8}Suppression du programme</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>1034</td><td>{&amp;MSSansBold8}Eliminar el programa</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>1033</td><td>{&amp;Tahoma8}L'InstallShield(R) Wizard va installer [ProductName] sur votre système. Pour continuer, cliquez sur Suivant.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>1034</td><td>{&amp;Tahoma8}InstallShield(R) Wizard instalará [ProductName] en su equipo. Para continuar, haga clic en Siguiente.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>1033</td><td>ATTENTION : Ce programme est protégé par la loi du copyright et les conventions internationales.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>1034</td><td>ADVERTENCIA: Este programa está protegido por las leyes de derechos de autor y otros tratados internacionales.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>1033</td><td>{&amp;TahomaBold10}Bienvenue dans l'InstallShield Wizard pour [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>1034</td><td>{&amp;TahomaBold10}Bienvenido a [ProductName] - InstallShield Wizard</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>1033</td><td>Les paramètres couleur de votre système ne sont pas corrects pour exécuter [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>1034</td><td>La configuración de colores del sistema no es la adecuada para ejecutar [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>1033</td><td>Le système d'exploitation n'est pas correct pour exécuter [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>1034</td><td>El sistema operativo no es el adecuado para ejecutar [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>1033</td><td>Le processeur n'est pas correct pour exécuter [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>1034</td><td>El procesador no es el adecuado para ejecutar [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>1033</td><td>Le taux RAM n'est pas correct pour exécuter [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>1034</td><td>La cantidad de RAM no es la adecuada para ejecutar [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>1033</td><td>La résolution de l'écran n'est pas correcte pour exécuter [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>1034</td><td>La resolución de pantalla no es la adecuada para ejecutar [ProductName].</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>ID_STRING1</td><td>1033</td><td>http://www.strindberg.cl</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>ID_STRING1</td><td>1034</td><td>http://www.PasteleriaStrindberg.com</td><td>0</td><td/><td>-1239084564</td></row>
		<row><td>ID_STRING2</td><td>1033</td><td>Pasteleria Strindberg</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>ID_STRING2</td><td>1034</td><td>Pasteleria Strindberg</td><td>0</td><td/><td>-1239084564</td></row>
		<row><td>ID_STRING3</td><td>1033</td><td>Roberto Rojas Mena</td><td>0</td><td/><td>1310895210</td></row>
		<row><td>ID_STRING3</td><td>1034</td><td>Roberto Rojas Mena</td><td>0</td><td/><td>1310895210</td></row>
		<row><td>ID_STRING3</td><td>1036</td><td>Roberto Rojas Mena</td><td>0</td><td/><td>1310895210</td></row>
		<row><td>ID_STRING4</td><td>1033</td><td>http://www.strindberg.cl</td><td>0</td><td/><td>1310909546</td></row>
		<row><td>ID_STRING4</td><td>1034</td><td>http://www.PasteleriaStrindberg.com</td><td>0</td><td/><td>-1239084564</td></row>
		<row><td>ID_STRING4</td><td>1036</td><td>http://www.strindberg.cl</td><td>0</td><td/><td>1310909546</td></row>
		<row><td>ID_STRING5</td><td>1033</td><td>POSSTD</td><td>0</td><td/><td>1310876842</td></row>
		<row><td>ID_STRING5</td><td>1034</td><td>POSSTD</td><td>0</td><td/><td>1310876842</td></row>
		<row><td>ID_STRING5</td><td>1036</td><td>POSSTD</td><td>0</td><td/><td>1310876842</td></row>
		<row><td>ID_STRING6</td><td>1033</td><td>POSSTD.exe</td><td>0</td><td/><td>1973797453</td></row>
		<row><td>ID_STRING6</td><td>1034</td><td>POSSTD.exe</td><td>0</td><td/><td>1973797453</td></row>
		<row><td>ID_STRING6</td><td>1036</td><td>POSSTD.exe</td><td>0</td><td/><td>1973797453</td></row>
		<row><td>ID_STRING7</td><td>1033</td><td>POSSTD</td><td>0</td><td/><td>-1239053652</td></row>
		<row><td>ID_STRING7</td><td>1034</td><td>POSSTD</td><td>0</td><td/><td>-1239053652</td></row>
		<row><td>ID_STRING7</td><td>1036</td><td>POSSTD</td><td>0</td><td/><td>-1239053652</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>1033</td><td>La fonction ne sera pas installée.</td><td>0</td><td/><td>1310878794</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>1034</td><td>Este componente no se instalará.</td><td>0</td><td/><td>1310880842</td></row>
	</table>

	<table name="ISSwidtagProperty">
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
		<row><td>UniqueId</td><td>3D0AE1A2-660F-427D-ADA6-EB954BB8B5CB</td></row>
	</table>

	<table name="ISTargetImage">
		<col key="yes" def="s13">UpgradedImage_</col>
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="i2">Order</col>
		<col def="I4">Flags</col>
		<col def="i2">IgnoreMissingFiles</col>
	</table>

	<table name="ISUpgradeMsiItem">
		<col key="yes" def="s72">UpgradeItem</col>
		<col def="s0">ObjectSetupPath</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="i2">ISAttributes</col>
	</table>

	<table name="ISUpgradedImage">
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="s8">Family</col>
	</table>

	<table name="ISVirtualDirectory">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualPackage">
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRegistry">
		<col key="yes" def="s72">Registry_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRelease">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualShortcut">
		<col key="yes" def="s72">Shortcut_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISXmlElement">
		<col key="yes" def="s72">ISXmlElement</col>
		<col def="s72">ISXmlFile_</col>
		<col def="S72">ISXmlElement_Parent</col>
		<col def="L0">XPath</col>
		<col def="L0">Content</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlElementAttrib">
		<col key="yes" def="s72">ISXmlElementAttrib</col>
		<col key="yes" def="s72">ISXmlElement_</col>
		<col def="L255">Name</col>
		<col def="L0">Value</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlFile">
		<col key="yes" def="s72">ISXmlFile</col>
		<col def="l255">FileName</col>
		<col def="s72">Component_</col>
		<col def="s72">Directory</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">SelectionNamespaces</col>
		<col def="S255">Encoding</col>
	</table>

	<table name="ISXmlLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col def="S255">Element</col>
		<col def="S255">Attribute</col>
		<col def="I2">ISAttributes</col>
	</table>

	<table name="Icon">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">ISIconIndex</col>
		<row><td>ARPPRODUCTICON.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\setupicon.ico</td><td>0</td></row>
		<row><td>POSSTD.exe1_5029CF1D97DC493DB4CD2ECD83B26948.exe</td><td/><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe</td><td>0</td></row>
		<row><td>POSSTD.exe1_734AB6A56232491E86D86C7316C0DC6E.exe</td><td/><td>C:\Users\robertostd\Documents\Visual Studio 2010\Projects\POSSTD\POSSTD\POSSTD\bin\Debug\POSSTD.exe</td><td>0</td></row>
		<row><td>POSSTD.exe1_DE973A0045E74ACBA4CE797BF9D8EAAC.exe</td><td/><td>C:\Users\robertostd\Documents\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe</td><td>0</td></row>
		<row><td>POSSTD.exe_80FDAD0CEC3749FD8F73FCD00A4B20A0.exe</td><td/><td>C:\Users\robertostd\Documents\POSPROD\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe</td><td>0</td></row>
		<row><td>POSSTD.exe_CC55060FD0984E53B6038BDB0C60A58A.exe</td><td/><td>C:\Users\robertostd\Documents\Visual Studio 2010\Projects\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe</td><td>0</td></row>
		<row><td>POSSTD.exe_D0FF4CB6DB7B4C609F6A1E4B263DC17F.exe</td><td/><td>C:\Users\robertostd\Documents\Visual Studio 2010\Projects\POSSTD\POSSTD\POSSTD\bin\Debug\POSSTD.exe</td><td>0</td></row>
		<row><td>POSSTD.exe_EB7D819F424A4A268369D366664125DB.exe</td><td/><td>C:\Users\robertostd\Documents\POSSTD\POSSTD\POSSTD\POSSTD\bin\Release\POSSTD.exe</td><td>0</td></row>
	</table>

	<table name="IniFile">
		<col key="yes" def="s72">IniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l255">Section</col>
		<col def="l128">Key</col>
		<col def="s255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="IniLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s255">FileName</col>
		<col def="s96">Section</col>
		<col def="s128">Key</col>
		<col def="I2">Field</col>
		<col def="I2">Type</col>
	</table>

	<table name="InstallExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AllocateRegistrySpace</td><td>NOT Installed</td><td>1550</td><td>AllocateRegistrySpace</td><td/></row>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>BindImage</td><td/><td>4300</td><td>BindImage</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateFolders</td><td/><td>3700</td><td>CreateFolders</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>DeleteServices</td><td>VersionNT</td><td>2000</td><td>DeleteServices</td><td/></row>
		<row><td>DuplicateFiles</td><td/><td>4210</td><td>DuplicateFiles</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td>NOT ISSETUPDRIVEN</td><td>420</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>Not Installed And Not ISRUNSETUPTYPEADDLOCALEVENT</td><td>1050</td><td>ISRunSetupTypeAddLocalEvent</td><td/></row>
		<row><td>ISSelfRegisterCosting</td><td/><td>2201</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td/><td>5601</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td/><td>6601</td><td/><td/></row>
		<row><td>ISSetAllUsers</td><td>Not Installed</td><td>10</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td/><td>2202</td><td/><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1501</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallODBC</td><td/><td>5400</td><td>InstallODBC</td><td/></row>
		<row><td>InstallServices</td><td>VersionNT</td><td>5800</td><td>InstallServices</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1010</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>MoveFiles</td><td/><td>3800</td><td>MoveFiles</td><td/></row>
		<row><td>MsiConfigureServices</td><td>VersionMsi &gt;= "5.00"</td><td>5850</td><td>MSI5 MsiConfigureServices</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>MsiUnpublishAssemblies</td><td/><td>1750</td><td>MsiUnpublishAssemblies</td><td/></row>
		<row><td>PatchFiles</td><td/><td>4090</td><td>PatchFiles</td><td/></row>
		<row><td>ProcessComponents</td><td/><td>1600</td><td>ProcessComponents</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterComPlus</td><td/><td>5700</td><td>RegisterComPlus</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterFonts</td><td/><td>5300</td><td>RegisterFonts</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProduct</td><td/><td>6100</td><td>RegisterProduct</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>5500</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>RegisterUser</td><td/><td>6000</td><td>RegisterUser</td><td/></row>
		<row><td>RemoveDuplicateFiles</td><td/><td>3400</td><td>RemoveDuplicateFiles</td><td/></row>
		<row><td>RemoveEnvironmentStrings</td><td/><td>3300</td><td>RemoveEnvironmentStrings</td><td/></row>
		<row><td>RemoveExistingProducts</td><td/><td>6601</td><td>RemoveExistingProducts</td><td/></row>
		<row><td>RemoveFiles</td><td/><td>3500</td><td>RemoveFiles</td><td/></row>
		<row><td>RemoveFolders</td><td/><td>3600</td><td>RemoveFolders</td><td/></row>
		<row><td>RemoveIniValues</td><td/><td>3100</td><td>RemoveIniValues</td><td/></row>
		<row><td>RemoveODBC</td><td/><td>2400</td><td>RemoveODBC</td><td/></row>
		<row><td>RemoveRegistryValues</td><td/><td>2600</td><td>RemoveRegistryValues</td><td/></row>
		<row><td>RemoveShortcuts</td><td/><td>3200</td><td>RemoveShortcuts</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>850</td><td>ResolveSource</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
		<row><td>SelfRegModules</td><td/><td>5600</td><td>SelfRegModules</td><td/></row>
		<row><td>SelfUnregModules</td><td/><td>2200</td><td>SelfUnregModules</td><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td/><td>1100</td><td>SetARPINSTALLLOCATION</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetODBCFolders</td><td/><td>1200</td><td>SetODBCFolders</td><td/></row>
		<row><td>StartServices</td><td>VersionNT</td><td>5900</td><td>StartServices</td><td/></row>
		<row><td>StopServices</td><td>VersionNT</td><td>1900</td><td>StopServices</td><td/></row>
		<row><td>UnpublishComponents</td><td/><td>1700</td><td>UnpublishComponents</td><td/></row>
		<row><td>UnpublishFeatures</td><td/><td>1800</td><td>UnpublishFeatures</td><td/></row>
		<row><td>UnregisterClassInfo</td><td/><td>2700</td><td>UnregisterClassInfo</td><td/></row>
		<row><td>UnregisterComPlus</td><td/><td>2100</td><td>UnregisterComPlus</td><td/></row>
		<row><td>UnregisterExtensionInfo</td><td/><td>2800</td><td>UnregisterExtensionInfo</td><td/></row>
		<row><td>UnregisterFonts</td><td/><td>2500</td><td>UnregisterFonts</td><td/></row>
		<row><td>UnregisterMIMEInfo</td><td/><td>3000</td><td>UnregisterMIMEInfo</td><td/></row>
		<row><td>UnregisterProgIdInfo</td><td/><td>2900</td><td>UnregisterProgIdInfo</td><td/></row>
		<row><td>UnregisterTypeLibraries</td><td/><td>2300</td><td>UnregisterTypeLibraries</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>WriteEnvironmentStrings</td><td/><td>5200</td><td>WriteEnvironmentStrings</td><td/></row>
		<row><td>WriteIniValues</td><td/><td>5100</td><td>WriteIniValues</td><td/></row>
		<row><td>WriteRegistryValues</td><td/><td>5000</td><td>WriteRegistryValues</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="InstallShield">
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
		<row><td>ActiveLanguage</td><td>1034</td></row>
		<row><td>Comments</td><td/></row>
		<row><td>CurrentMedia</td><td dt:dt="bin.base64" md5="de9f554a3bc05c12be9c31b998217995">
UwBpAG4AZwBsAGUASQBtAGEAZwBlAAEARQB4AHAAcgBlAHMAcwA=
			</td></row>
		<row><td>DefaultProductConfiguration</td><td>Express</td></row>
		<row><td>EnableSwidtag</td><td>1</td></row>
		<row><td>ISCompilerOption_CompileBeforeBuild</td><td>1</td></row>
		<row><td>ISCompilerOption_Debug</td><td>0</td></row>
		<row><td>ISCompilerOption_IncludePath</td><td/></row>
		<row><td>ISCompilerOption_LibraryPath</td><td/></row>
		<row><td>ISCompilerOption_MaxErrors</td><td>50</td></row>
		<row><td>ISCompilerOption_MaxWarnings</td><td>50</td></row>
		<row><td>ISCompilerOption_OutputPath</td><td>&lt;ISProjectDataFolder&gt;\Script Files</td></row>
		<row><td>ISCompilerOption_PreProcessor</td><td>_ISSCRIPT_NEW_STYLE_DLG_DEFS</td></row>
		<row><td>ISCompilerOption_WarningLevel</td><td>3</td></row>
		<row><td>ISCompilerOption_WarningsAsErrors</td><td>1</td></row>
		<row><td>ISTheme</td><td>InstallShield Blue.theme</td></row>
		<row><td>ISUSLock</td><td>{7D45FEEB-6829-4769-8D2F-CC3D2A368DB9}</td></row>
		<row><td>ISUSSignature</td><td>{B0953E68-A39E-41E1-9A59-EC85ECDB8D8B}</td></row>
		<row><td>ISVisitedViews</td><td>viewAssistant,viewProject,viewAppV,viewISToday,viewRealSetupDesign,viewSetupDesign,viewAppFiles,viewFeatureFiles,viewSetupTypes,viewUpgradePaths,viewUpdateService,viewObjects,viewDesignPatches,viewUI,viewTextMessages,viewInstallScriptStd,viewCustomActions,viewRelease</td></row>
		<row><td>Limited</td><td>1</td></row>
		<row><td>LockPermissionMode</td><td>1</td></row>
		<row><td>MsiExecCmdLineOptions</td><td/></row>
		<row><td>MsiLogFile</td><td/></row>
		<row><td>OnUpgrade</td><td>0</td></row>
		<row><td>Owner</td><td/></row>
		<row><td>PatchFamily</td><td>MyPatchFamily1</td></row>
		<row><td>PatchSequence</td><td>1.0.0</td></row>
		<row><td>SaveAsSchema</td><td/></row>
		<row><td>SccEnabled</td><td>0</td></row>
		<row><td>SccPath</td><td/></row>
		<row><td>SchemaVersion</td><td>774</td></row>
		<row><td>Type</td><td>MSIE</td></row>
	</table>

	<table name="InstallUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td/><td>430</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>ISSetAllUsers</td><td>Not Installed</td><td>10</td><td/><td/></row>
		<row><td>InstallWelcome</td><td>Not Installed</td><td>1210</td><td>InstallWelcome</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>Installed And Not RESUME And Not Preselected And Not PATCH</td><td>1230</td><td>MaintenanceWelcome</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1200</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>PatchWelcome</td><td>Installed And PATCH And Not IS_MAJOR_UPGRADE</td><td>1205</td><td>Patch Panel</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>990</td><td>ResolveSource</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>420</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1240</td><td>SetupProgress</td><td/></row>
		<row><td>SetupResume</td><td>Installed And (RESUME Or Preselected) And Not PATCH</td><td>1220</td><td>SetupResume</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="IsolatedComponent">
		<col key="yes" def="s72">Component_Shared</col>
		<col key="yes" def="s72">Component_Application</col>
	</table>

	<table name="LaunchCondition">
		<col key="yes" def="s255">Condition</col>
		<col def="l255">Description</col>
		<row><td>DOTNETVERSION35&lt;&gt;""</td><td>##IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION35##</td></row>
	</table>

	<table name="ListBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="ListView">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
		<col def="S72">Binary_</col>
	</table>

	<table name="LockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
	</table>

	<table name="MIME">
		<col key="yes" def="s64">ContentType</col>
		<col def="s255">Extension_</col>
		<col def="S38">CLSID</col>
	</table>

	<table name="Media">
		<col key="yes" def="i2">DiskId</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="MoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">SourceName</col>
		<col def="L255">DestName</col>
		<col def="S72">SourceFolder</col>
		<col def="s72">DestFolder</col>
		<col def="i2">Options</col>
	</table>

	<table name="MsiAssembly">
		<col key="yes" def="s72">Component_</col>
		<col def="s38">Feature_</col>
		<col def="S72">File_Manifest</col>
		<col def="S72">File_Application</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="MsiAssemblyName">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="MsiDigitalCertificate">
		<col key="yes" def="s72">DigitalCertificate</col>
		<col def="v0">CertData</col>
	</table>

	<table name="MsiDigitalSignature">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s72">SignObject</col>
		<col def="s72">DigitalCertificate_</col>
		<col def="V0">Hash</col>
	</table>

	<table name="MsiDriverPackages">
		<col key="yes" def="s72">Component</col>
		<col def="i4">Flags</col>
		<col def="I4">Sequence</col>
		<col def="S0">ReferenceComponents</col>
	</table>

	<table name="MsiEmbeddedChainer">
		<col key="yes" def="s72">MsiEmbeddedChainer</col>
		<col def="S255">Condition</col>
		<col def="S255">CommandLine</col>
		<col def="s72">Source</col>
		<col def="I4">Type</col>
	</table>

	<table name="MsiEmbeddedUI">
		<col key="yes" def="s72">MsiEmbeddedUI</col>
		<col def="s255">FileName</col>
		<col def="i2">Attributes</col>
		<col def="I4">MessageFilter</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="MsiFileHash">
		<col key="yes" def="s72">File_</col>
		<col def="i2">Options</col>
		<col def="i4">HashPart1</col>
		<col def="i4">HashPart2</col>
		<col def="i4">HashPart3</col>
		<col def="i4">HashPart4</col>
	</table>

	<table name="MsiLockPermissionsEx">
		<col key="yes" def="s72">MsiLockPermissionsEx</col>
		<col def="s72">LockObject</col>
		<col def="s32">Table</col>
		<col def="s0">SDDLText</col>
		<col def="S255">Condition</col>
	</table>

	<table name="MsiPackageCertificate">
		<col key="yes" def="s72">PackageCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchCertificate">
		<col key="yes" def="s72">PatchCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchMetadata">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="S72">Company</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="MsiPatchOldAssemblyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="S72">Assembly_</col>
	</table>

	<table name="MsiPatchOldAssemblyName">
		<col key="yes" def="s72">Assembly</col>
		<col key="yes" def="s255">Name</col>
		<col def="S255">Value</col>
	</table>

	<table name="MsiPatchSequence">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="s0">PatchFamily</col>
		<col key="yes" def="S0">Target</col>
		<col def="s0">Sequence</col>
		<col def="i2">Supersede</col>
	</table>

	<table name="MsiServiceConfig">
		<col key="yes" def="s72">MsiServiceConfig</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="i4">ConfigType</col>
		<col def="S0">Argument</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiServiceConfigFailureActions">
		<col key="yes" def="s72">MsiServiceConfigFailureActions</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="I4">ResetPeriod</col>
		<col def="L255">RebootMessage</col>
		<col def="L255">Command</col>
		<col def="S0">Actions</col>
		<col def="S0">DelayActions</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiShortcutProperty">
		<col key="yes" def="s72">MsiShortcutProperty</col>
		<col def="s72">Shortcut_</col>
		<col def="s0">PropertyKey</col>
		<col def="s0">PropVariantValue</col>
	</table>

	<table name="ODBCAttribute">
		<col key="yes" def="s72">Driver_</col>
		<col key="yes" def="s40">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCDataSource">
		<col key="yes" def="s72">DataSource</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s255">DriverDescription</col>
		<col def="i2">Registration</col>
	</table>

	<table name="ODBCDriver">
		<col key="yes" def="s72">Driver</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="ODBCSourceAttribute">
		<col key="yes" def="s72">DataSource_</col>
		<col key="yes" def="s32">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCTranslator">
		<col key="yes" def="s72">Translator</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="Patch">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="i2">Sequence</col>
		<col def="i4">PatchSize</col>
		<col def="i2">Attributes</col>
		<col def="V0">Header</col>
		<col def="S38">StreamRef_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="PatchPackage">
		<col key="yes" def="s38">PatchId</col>
		<col def="i2">Media_</col>
	</table>

	<table name="ProgId">
		<col key="yes" def="s255">ProgId</col>
		<col def="S255">ProgId_Parent</col>
		<col def="S38">Class_</col>
		<col def="L255">Description</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="Property">
		<col key="yes" def="s72">Property</col>
		<col def="L0">Value</col>
		<col def="S255">ISComments</col>
		<row><td>ALLUSERS</td><td>1</td><td/></row>
		<row><td>ARPCONTACT</td><td>##ID_STRING3##</td><td/></row>
		<row><td>ARPHELPLINK</td><td>##ID_STRING4##</td><td/></row>
		<row><td>ARPINSTALLLOCATION</td><td/><td/></row>
		<row><td>ARPPRODUCTICON</td><td>ARPPRODUCTICON.exe</td><td/></row>
		<row><td>ARPSIZE</td><td/><td/></row>
		<row><td>ARPURLINFOABOUT</td><td>##ID_STRING1##</td><td/></row>
		<row><td>AgreeToLicense</td><td>No</td><td/></row>
		<row><td>ApplicationUsers</td><td>AllUsers</td><td/></row>
		<row><td>DWUSINTERVAL</td><td>30</td><td/></row>
		<row><td>DWUSLINK</td><td>CEFBD05FCEFB97B869ACE03F7E6B978FAE9B178FDEFCE778CECC973FD9DBB7F889AC972879AC</td><td/></row>
		<row><td>DefaultUIFont</td><td>ExpressDefault</td><td/></row>
		<row><td>DialogCaption</td><td>InstallShield for Windows Installer</td><td/></row>
		<row><td>DiskPrompt</td><td>[1]</td><td/></row>
		<row><td>DiskSerial</td><td>1234-5678</td><td/></row>
		<row><td>DisplayNameCustom</td><td>##IDS__DisplayName_Custom##</td><td/></row>
		<row><td>DisplayNameMinimal</td><td>##IDS__DisplayName_Minimal##</td><td/></row>
		<row><td>DisplayNameTypical</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>Display_IsBitmapDlg</td><td>1</td><td/></row>
		<row><td>ErrorDialog</td><td>SetupError</td><td/></row>
		<row><td>INSTALLLEVEL</td><td>200</td><td/></row>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td><td/></row>
		<row><td>ISENABLEDWUSFINISHDIALOG</td><td/><td/></row>
		<row><td>ISSHOWMSILOG</td><td/><td/></row>
		<row><td>ISVROOT_PORT_NO</td><td>0</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_COST</td><td>##IDS_COMPLUS_PROGRESSTEXT_COST##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_INSTALL##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_UNINSTALL##</td><td/></row>
		<row><td>IS_PREVENT_DOWNGRADE_EXIT</td><td>##IDS_PREVENT_DOWNGRADE_EXIT##</td><td/></row>
		<row><td>IS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>##IDS_PROGMSG_TEXTFILECHANGS_REPLACE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_COSTING</td><td>##IDS_PROGMSG_XML_COSTING##</td><td/></row>
		<row><td>IS_PROGMSG_XML_CREATE_FILE</td><td>##IDS_PROGMSG_XML_CREATE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_FILES</td><td>##IDS_PROGMSG_XML_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_REMOVE_FILE</td><td>##IDS_PROGMSG_XML_REMOVE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_ROLLBACK_FILES</td><td>##IDS_PROGMSG_XML_ROLLBACK_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_UPDATE_FILE</td><td>##IDS_PROGMSG_XML_UPDATE_FILE##</td><td/></row>
		<row><td>IS_SQLSERVER_AUTHENTICATION</td><td>0</td><td/></row>
		<row><td>IS_SQLSERVER_DATABASE</td><td/><td/></row>
		<row><td>IS_SQLSERVER_PASSWORD</td><td/><td/></row>
		<row><td>IS_SQLSERVER_SERVER</td><td/><td/></row>
		<row><td>IS_SQLSERVER_USERNAME</td><td>sa</td><td/></row>
		<row><td>InstallChoice</td><td>AR</td><td/></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td><td/></row>
		<row><td>LAUNCHREADME</td><td>1</td><td/></row>
		<row><td>Manufacturer</td><td>##COMPANY_NAME##</td><td/></row>
		<row><td>PIDKEY</td><td/><td/></row>
		<row><td>PIDTemplate</td><td>12345&lt;###-%%%%%%%&gt;@@@@@</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOL</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOT</td><td>##IDS_PROGMSG_IIS_CREATEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOTS</td><td>##IDS_PROGMSG_IIS_CREATEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITE</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITE##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITES</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACT</td><td>##IDS_PROGMSG_IIS_EXTRACT##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONEz</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTzDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOL</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVESITE</td><td>##IDS_PROGMSG_IIS_REMOVESITE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOT</td><td>##IDS_PROGMSG_IIS_REMOVEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOTS</td><td>##IDS_PROGMSG_IIS_REMOVEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSITES</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>##IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKVROOTS</td><td>##IDS_PROGMSG_IIS_ROLLBACKVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>ProductCode</td><td>{29B2A4D2-279B-442A-A515-4A1C30C2DEE4}</td><td/></row>
		<row><td>ProductName</td><td>InstaladorPOS</td><td/></row>
		<row><td>ProductVersion</td><td>1.00.0000</td><td/></row>
		<row><td>ProgressType0</td><td>install</td><td/></row>
		<row><td>ProgressType1</td><td>Installing</td><td/></row>
		<row><td>ProgressType2</td><td>installed</td><td/></row>
		<row><td>ProgressType3</td><td>installs</td><td/></row>
		<row><td>RebootYesNo</td><td>Yes</td><td/></row>
		<row><td>ReinstallFileVersion</td><td>o</td><td/></row>
		<row><td>ReinstallModeText</td><td>omus</td><td/></row>
		<row><td>ReinstallRepair</td><td>r</td><td/></row>
		<row><td>RestartManagerOption</td><td>CloseRestart</td><td/></row>
		<row><td>SERIALNUMBER</td><td/><td/></row>
		<row><td>SERIALNUMVALSUCCESSRETVAL</td><td>1</td><td/></row>
		<row><td>SecureCustomProperties</td><td>ISFOUNDNEWERPRODUCTVERSION;USERNAME;COMPANYNAME;ISX_SERIALNUM;SUPPORTDIR;DOTNETVERSION35</td><td/></row>
		<row><td>SelectedSetupType</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>SetupType</td><td>Typical</td><td/></row>
		<row><td>UpgradeCode</td><td>{C97CFD94-6F23-449D-AADC-C77A777326C3}</td><td/></row>
		<row><td>_IsMaintenance</td><td>Change</td><td/></row>
		<row><td>_IsSetupTypeMin</td><td>Typical</td><td/></row>
	</table>

	<table name="PublishComponent">
		<col key="yes" def="s38">ComponentId</col>
		<col key="yes" def="s255">Qualifier</col>
		<col key="yes" def="s72">Component_</col>
		<col def="L0">AppData</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="RadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="L64">Text</col>
		<col def="L50">Help</col>
		<col def="I4">ISControlId</col>
		<row><td>AgreeToLicense</td><td>1</td><td>No</td><td>0</td><td>15</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_0##</td><td/><td/></row>
		<row><td>AgreeToLicense</td><td>2</td><td>Yes</td><td>0</td><td>0</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_1##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>1</td><td>AllUsers</td><td>1</td><td>7</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_Anyone##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>2</td><td>OnlyCurrentUser</td><td>1</td><td>23</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>1</td><td>CloseRestart</td><td>6</td><td>9</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_CloseRestart##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>2</td><td>Reboot</td><td>6</td><td>21</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_RebootAfter##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>1</td><td>Change</td><td>0</td><td>0</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Modify##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>2</td><td>Reinstall</td><td>0</td><td>60</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Repair##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>3</td><td>Remove</td><td>0</td><td>120</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Remove##</td><td/><td/></row>
		<row><td>_IsSetupTypeMin</td><td>1</td><td>Typical</td><td>1</td><td>6</td><td>264</td><td>14</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td/><td/></row>
	</table>

	<table name="RegLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="I2">Type</col>
		<row><td>DotNet35</td><td>2</td><td>SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5</td><td>Version</td><td>2</td></row>
	</table>

	<table name="Registry">
		<col key="yes" def="s72">Registry</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="S0">Value</col>
		<col def="s72">Component_</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="RemoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">FileName</col>
		<col def="s72">DirProperty</col>
		<col def="i2">InstallMode</col>
		<row><td>POSSTD.exe</td><td>POSSTD.exe</td><td/><td>instal_1_instaladorpos</td><td>2</td></row>
	</table>

	<table name="RemoveIniFile">
		<col key="yes" def="s72">RemoveIniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l96">Section</col>
		<col def="l128">Key</col>
		<col def="L255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="RemoveRegistry">
		<col key="yes" def="s72">RemoveRegistry</col>
		<col def="i2">Root</col>
		<col def="l255">Key</col>
		<col def="L255">Name</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ReserveCost">
		<col key="yes" def="s72">ReserveKey</col>
		<col def="s72">Component_</col>
		<col def="S72">ReserveFolder</col>
		<col def="i4">ReserveLocal</col>
		<col def="i4">ReserveSource</col>
	</table>

	<table name="SFPCatalog">
		<col key="yes" def="s255">SFPCatalog</col>
		<col def="V0">Catalog</col>
		<col def="S0">Dependency</col>
	</table>

	<table name="SelfReg">
		<col key="yes" def="s72">File_</col>
		<col def="I2">Cost</col>
	</table>

	<table name="ServiceControl">
		<col key="yes" def="s72">ServiceControl</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="S255">Arguments</col>
		<col def="I2">Wait</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ServiceInstall">
		<col key="yes" def="s72">ServiceInstall</col>
		<col def="s255">Name</col>
		<col def="L255">DisplayName</col>
		<col def="i4">ServiceType</col>
		<col def="i4">StartType</col>
		<col def="i4">ErrorControl</col>
		<col def="S255">LoadOrderGroup</col>
		<col def="S255">Dependencies</col>
		<col def="S255">StartName</col>
		<col def="S255">Password</col>
		<col def="S255">Arguments</col>
		<col def="s72">Component_</col>
		<col def="L255">Description</col>
	</table>

	<table name="Shortcut">
		<col key="yes" def="s72">Shortcut</col>
		<col def="s72">Directory_</col>
		<col def="l128">Name</col>
		<col def="s72">Component_</col>
		<col def="s255">Target</col>
		<col def="S255">Arguments</col>
		<col def="L255">Description</col>
		<col def="I2">Hotkey</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I2">ShowCmd</col>
		<col def="S72">WkDir</col>
		<col def="S255">DisplayResourceDLL</col>
		<col def="I2">DisplayResourceId</col>
		<col def="S255">DescriptionResourceDLL</col>
		<col def="I2">DescriptionResourceId</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISShortcutName</col>
		<col def="I4">ISAttributes</col>
		<row><td>POSSTD.exe</td><td>instal_1_instaladorpos</td><td>##IDS_SHORTCUT_DISPLAY_NAME8##</td><td>POSSTD.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>POSSTD.exe_80FDAD0CEC3749FD8F73FCD00A4B20A0.exe</td><td>1</td><td>1</td><td>INSTALLDIR</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>POSSTD.exe1</td><td>DesktopFolder</td><td>##IDS_SHORTCUT_DISPLAY_NAME8##</td><td>POSSTD.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>POSSTD.exe1_5029CF1D97DC493DB4CD2ECD83B26948.exe</td><td>1</td><td>1</td><td>INSTALLDIR</td><td/><td/><td/><td/><td/><td/><td/></row>
	</table>

	<table name="Signature">
		<col key="yes" def="s72">Signature</col>
		<col def="s255">FileName</col>
		<col def="S20">MinVersion</col>
		<col def="S20">MaxVersion</col>
		<col def="I4">MinSize</col>
		<col def="I4">MaxSize</col>
		<col def="I4">MinDate</col>
		<col def="I4">MaxDate</col>
		<col def="S255">Languages</col>
	</table>

	<table name="TextStyle">
		<col key="yes" def="s72">TextStyle</col>
		<col def="s32">FaceName</col>
		<col def="i2">Size</col>
		<col def="I4">Color</col>
		<col def="I2">StyleBits</col>
		<row><td>Arial8</td><td>Arial</td><td>8</td><td/><td/></row>
		<row><td>Arial9</td><td>Arial</td><td>9</td><td/><td/></row>
		<row><td>ArialBlue10</td><td>Arial</td><td>10</td><td>16711680</td><td/></row>
		<row><td>ArialBlueStrike10</td><td>Arial</td><td>10</td><td>16711680</td><td>8</td></row>
		<row><td>CourierNew8</td><td>Courier New</td><td>8</td><td/><td/></row>
		<row><td>CourierNew9</td><td>Courier New</td><td>9</td><td/><td/></row>
		<row><td>ExpressDefault</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>MSGothic9</td><td>MS Gothic</td><td>9</td><td/><td/></row>
		<row><td>MSSGreySerif8</td><td>MS Sans Serif</td><td>8</td><td>8421504</td><td/></row>
		<row><td>MSSWhiteSerif8</td><td>Tahoma</td><td>8</td><td>16777215</td><td/></row>
		<row><td>MSSansBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>MSSansSerif8</td><td>MS Sans Serif</td><td>8</td><td/><td/></row>
		<row><td>MSSansSerif9</td><td>MS Sans Serif</td><td>9</td><td/><td/></row>
		<row><td>Tahoma10</td><td>Tahoma</td><td>10</td><td/><td/></row>
		<row><td>Tahoma8</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>Tahoma9</td><td>Tahoma</td><td>9</td><td/><td/></row>
		<row><td>TahomaBold10</td><td>Tahoma</td><td>10</td><td/><td>1</td></row>
		<row><td>TahomaBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>Times8</td><td>Times New Roman</td><td>8</td><td/><td/></row>
		<row><td>Times9</td><td>Times New Roman</td><td>9</td><td/><td/></row>
		<row><td>TimesItalic12</td><td>Times New Roman</td><td>12</td><td/><td>2</td></row>
		<row><td>TimesItalicBlue10</td><td>Times New Roman</td><td>10</td><td>16711680</td><td>2</td></row>
		<row><td>TimesRed16</td><td>Times New Roman</td><td>16</td><td>255</td><td/></row>
		<row><td>VerdanaBold14</td><td>Verdana</td><td>13</td><td/><td>1</td></row>
	</table>

	<table name="TypeLib">
		<col key="yes" def="s38">LibID</col>
		<col key="yes" def="i2">Language</col>
		<col key="yes" def="s72">Component_</col>
		<col def="I4">Version</col>
		<col def="L128">Description</col>
		<col def="S72">Directory_</col>
		<col def="s38">Feature_</col>
		<col def="I4">Cost</col>
	</table>

	<table name="UIText">
		<col key="yes" def="s72">Key</col>
		<col def="L255">Text</col>
		<row><td>AbsentPath</td><td/></row>
		<row><td>GB</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>KB</td><td>##IDS_UITEXT_KB##</td></row>
		<row><td>MB</td><td>##IDS_UITEXT_MB##</td></row>
		<row><td>MenuAbsent</td><td>##IDS_UITEXT_FeatureNotAvailable##</td></row>
		<row><td>MenuAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired2##</td></row>
		<row><td>MenuAllCD</td><td>##IDS_UITEXT_FeatureInstalledCD##</td></row>
		<row><td>MenuAllLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal##</td></row>
		<row><td>MenuAllNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork##</td></row>
		<row><td>MenuCD</td><td>##IDS_UITEXT_FeatureInstalledCD2##</td></row>
		<row><td>MenuLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal2##</td></row>
		<row><td>MenuNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork2##</td></row>
		<row><td>NewFolder</td><td>##IDS_UITEXT_Folder##</td></row>
		<row><td>SelAbsentAbsent</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>SelAbsentAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired##</td></row>
		<row><td>SelAbsentCD</td><td>##IDS_UITEXT_FeatureOnCD##</td></row>
		<row><td>SelAbsentLocal</td><td>##IDS_UITEXT_FeatureLocal##</td></row>
		<row><td>SelAbsentNetwork</td><td>##IDS_UITEXT_FeatureNetwork##</td></row>
		<row><td>SelAdvertiseAbsent</td><td>##IDS_UITEXT_FeatureUnavailable##</td></row>
		<row><td>SelAdvertiseAdvertise</td><td>##IDS_UITEXT_FeatureInstalledRequired##</td></row>
		<row><td>SelAdvertiseCD</td><td>##IDS_UITEXT_FeatureOnCD2##</td></row>
		<row><td>SelAdvertiseLocal</td><td>##IDS_UITEXT_FeatureLocal2##</td></row>
		<row><td>SelAdvertiseNetwork</td><td>##IDS_UITEXT_FeatureNetwork2##</td></row>
		<row><td>SelCDAbsent</td><td>##IDS_UITEXT_FeatureWillBeUninstalled##</td></row>
		<row><td>SelCDAdvertise</td><td>##IDS_UITEXT_FeatureWasCD##</td></row>
		<row><td>SelCDCD</td><td>##IDS_UITEXT_FeatureRunFromCD##</td></row>
		<row><td>SelCDLocal</td><td>##IDS_UITEXT_FeatureWasCDLocal##</td></row>
		<row><td>SelChildCostNeg</td><td>##IDS_UITEXT_FeatureFreeSpace##</td></row>
		<row><td>SelChildCostPos</td><td>##IDS_UITEXT_FeatureRequiredSpace##</td></row>
		<row><td>SelCostPending</td><td>##IDS_UITEXT_CompilingFeaturesCost##</td></row>
		<row><td>SelLocalAbsent</td><td>##IDS_UITEXT_FeatureCompletelyRemoved##</td></row>
		<row><td>SelLocalAdvertise</td><td>##IDS_UITEXT_FeatureRemovedUnlessRequired##</td></row>
		<row><td>SelLocalCD</td><td>##IDS_UITEXT_FeatureRemovedCD##</td></row>
		<row><td>SelLocalLocal</td><td>##IDS_UITEXT_FeatureRemainLocal##</td></row>
		<row><td>SelLocalNetwork</td><td>##IDS_UITEXT_FeatureRemoveNetwork##</td></row>
		<row><td>SelNetworkAbsent</td><td>##IDS_UITEXT_FeatureUninstallNoNetwork##</td></row>
		<row><td>SelNetworkAdvertise</td><td>##IDS_UITEXT_FeatureWasOnNetworkInstalled##</td></row>
		<row><td>SelNetworkLocal</td><td>##IDS_UITEXT_FeatureWasOnNetworkLocal##</td></row>
		<row><td>SelNetworkNetwork</td><td>##IDS_UITEXT_FeatureContinueNetwork##</td></row>
		<row><td>SelParentCostNegNeg</td><td>##IDS_UITEXT_FeatureSpaceFree##</td></row>
		<row><td>SelParentCostNegPos</td><td>##IDS_UITEXT_FeatureSpaceFree2##</td></row>
		<row><td>SelParentCostPosNeg</td><td>##IDS_UITEXT_FeatureSpaceFree3##</td></row>
		<row><td>SelParentCostPosPos</td><td>##IDS_UITEXT_FeatureSpaceFree4##</td></row>
		<row><td>TimeRemaining</td><td>##IDS_UITEXT_TimeRemaining##</td></row>
		<row><td>VolumeCostAvailable</td><td>##IDS_UITEXT_Available##</td></row>
		<row><td>VolumeCostDifference</td><td>##IDS_UITEXT_Differences##</td></row>
		<row><td>VolumeCostRequired</td><td>##IDS_UITEXT_Required##</td></row>
		<row><td>VolumeCostSize</td><td>##IDS_UITEXT_DiskSize##</td></row>
		<row><td>VolumeCostVolume</td><td>##IDS_UITEXT_Volume##</td></row>
		<row><td>bytes</td><td>##IDS_UITEXT_Bytes##</td></row>
	</table>

	<table name="Upgrade">
		<col key="yes" def="s38">UpgradeCode</col>
		<col key="yes" def="S20">VersionMin</col>
		<col key="yes" def="S20">VersionMax</col>
		<col key="yes" def="S255">Language</col>
		<col key="yes" def="i4">Attributes</col>
		<col def="S255">Remove</col>
		<col def="s72">ActionProperty</col>
		<col def="S72">ISDisplayName</col>
		<row><td>{00000000-0000-0000-0000-000000000000}</td><td>***ALL_VERSIONS***</td><td></td><td></td><td>2</td><td/><td>ISFOUNDNEWERPRODUCTVERSION</td><td>ISPreventDowngrade</td></row>
	</table>

	<table name="Verb">
		<col key="yes" def="s255">Extension_</col>
		<col key="yes" def="s32">Verb</col>
		<col def="I2">Sequence</col>
		<col def="L255">Command</col>
		<col def="L255">Argument</col>
	</table>

	<table name="_Validation">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s32">Column</col>
		<col def="s4">Nullable</col>
		<col def="I4">MinValue</col>
		<col def="I4">MaxValue</col>
		<col def="S255">KeyTable</col>
		<col def="I2">KeyColumn</col>
		<col def="S32">Category</col>
		<col def="S255">Set</col>
		<col def="S255">Description</col>
		<row><td>ActionText</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to be described.</td></row>
		<row><td>ActionText</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description displayed in progress dialog and log when action is executing.</td></row>
		<row><td>ActionText</td><td>Template</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Optional localized format template used to format action data records for display during action execution.</td></row>
		<row><td>AdminExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdminUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AppId</td><td>ActivateAtStorage</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>AppId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td/></row>
		<row><td>AppId</td><td>DllSurrogate</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>LocalService</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>RemoteServerName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>AppId</td><td>RunAsInteractiveUser</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>ServiceParameters</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppSearch</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The property associated with a Signature</td></row>
		<row><td>AppSearch</td><td>Signature_</td><td>N</td><td/><td/><td>ISXmlLocator;Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>BBControl</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>BBControl</td><td>BBControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a billboard, but can repeat on different billboard.</td></row>
		<row><td>BBControl</td><td>Billboard_</td><td>N</td><td/><td/><td>Billboard</td><td>1</td><td>Identifier</td><td/><td>External key to the Billboard table, name of the billboard.</td></row>
		<row><td>BBControl</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>BBControl</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>BBControl</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Billboard</td><td>Action</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of an action. The billboard is displayed during the progress messages received from this action.</td></row>
		<row><td>Billboard</td><td>Billboard</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the billboard.</td></row>
		<row><td>Billboard</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>An external key to the Feature Table. The billboard is shown only if this feature is being installed.</td></row>
		<row><td>Billboard</td><td>Ordering</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>A positive integer. If there is more than one billboard corresponding to an action they will be shown in the order defined by this column.</td></row>
		<row><td>Binary</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Binary</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Binary</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the binary data.</td></row>
		<row><td>BindImage</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>The index into the File table. This must be an executable file.</td></row>
		<row><td>BindImage</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Paths</td><td/><td>A list of ;  delimited paths that represent the paths to be searched for the import DLLS. The list is usually a list of properties each enclosed within square brackets [] .</td></row>
		<row><td>CCPSearch</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>CheckBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to the item.</td></row>
		<row><td>CheckBox</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with the item.</td></row>
		<row><td>Class</td><td>AppId_</td><td>Y</td><td/><td/><td>AppId</td><td>1</td><td>Guid</td><td/><td>Optional AppID containing DCOM information for associated application (string GUID).</td></row>
		<row><td>Class</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>optional argument for LocalServers.</td></row>
		<row><td>Class</td><td>Attributes</td><td>Y</td><td/><td>32767</td><td/><td/><td/><td/><td>Class registration attributes.</td></row>
		<row><td>Class</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The CLSID of an OLE factory.</td></row>
		<row><td>Class</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Class</td><td>Context</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The numeric server context for this server. CLSCTX_xxxx</td></row>
		<row><td>Class</td><td>DefInprocHandler</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td>1;2;3</td><td>Optional default inproc handler.  Only optionally provided if Context=CLSCTX_LOCAL_SERVER.  Typically "ole32.dll" or "mapi32.dll"</td></row>
		<row><td>Class</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Class.</td></row>
		<row><td>Class</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Class</td><td>FileTypeMask</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional string containing information for the HKCRthis CLSID) key. If multiple patterns exist, they must be delimited by a semicolon, and numeric subkeys will be generated: 0,1,2...</td></row>
		<row><td>Class</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>Class</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this CLSID. Will be written under the DefaultIcon key.</td></row>
		<row><td>Class</td><td>ProgId_Default</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this CLSID.</td></row>
		<row><td>ComboBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list.	The integers do not have to be consecutive.</td></row>
		<row><td>ComboBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same combobox.</td></row>
		<row><td>ComboBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ComboBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>CompLocator</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>CompLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>CompLocator</td><td>Type</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>A boolean value that determines if the registry value is a filename or a directory location.</td></row>
		<row><td>Complus</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the ComPlus component.</td></row>
		<row><td>Complus</td><td>ExpType</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>ComPlus component attributes.</td></row>
		<row><td>Component</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Remote execution option, one of irsEnum</td></row>
		<row><td>Component</td><td>Component</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>Component</td><td>ComponentId</td><td>Y</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>Component</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this component if the specified condition evaluates to the 'True' state. If a component is disabled, it will not be installed, regardless of the 'Action' state associated with the component.</td></row>
		<row><td>Component</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Required key of a Directory table record. This is actually a property name whose value contains the actual path, set either by the AppSearch action or with the default setting obtained from the Directory table.</td></row>
		<row><td>Component</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component.</td></row>
		<row><td>Component</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsCommit</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsInstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsRollback</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsUninstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISRegFileToMergeAtBuild</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path and File name of a .REG file to merge into the component at build time.</td></row>
		<row><td>Component</td><td>ISScanAtBuildFile</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File used by the Dot Net scanner to populate dependant assemblies' File_Application field.</td></row>
		<row><td>Component</td><td>KeyPath</td><td>Y</td><td/><td/><td>File;ODBCDataSource;Registry</td><td>1</td><td>Identifier</td><td/><td>Either the primary key into the File table, Registry table, or ODBCDataSource table. This extract path is stored when the component is installed, and is used to detect the presence of the component and to return the path to it.</td></row>
		<row><td>Condition</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression evaluated to determine if Level in the Feature table is to change.</td></row>
		<row><td>Condition</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Reference to a Feature entry in Feature table.</td></row>
		<row><td>Condition</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>New selection Level to set in Feature table if Condition evaluates to TRUE.</td></row>
		<row><td>Control</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>Control</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>Control</td><td>Control</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>Control</td><td>Control_Next</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>The name of an other control on the same dialog. This link defines the tab order of the controls. The links have to form one or more cycles!</td></row>
		<row><td>Control</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>Control</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>Control</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>Control</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>Control</td><td>ISWindowStyle</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control.</td></row>
		<row><td>Control</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of a defined property to be linked to this control.</td></row>
		<row><td>Control</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>Control</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>Control</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ControlCondition</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>Default;Disable;Enable;Hide;Show</td><td>The desired action to be taken on the specified control.</td></row>
		<row><td>ControlCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions the action should be triggered.</td></row>
		<row><td>ControlCondition</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>ControlCondition</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Argument</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A value to be used as a modifier when triggering a particular event.</td></row>
		<row><td>ControlEvent</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions an event should be triggered.</td></row>
		<row><td>ControlEvent</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control</td></row>
		<row><td>ControlEvent</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>An identifier that specifies the type of the event that should take place when the user interacts with control specified by the first two entries.</td></row>
		<row><td>ControlEvent</td><td>Ordering</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>An integer used to order several events tied to the same control. Can be left blank.</td></row>
		<row><td>CreateFolder</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>CreateFolder</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Primary key, could be foreign key into the Directory table.</td></row>
		<row><td>CustomAction</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, name of action, normally appears in sequence table unless private use.</td></row>
		<row><td>CustomAction</td><td>ExtendedType</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The numeric custom action type info flags.</td></row>
		<row><td>CustomAction</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this custom action.</td></row>
		<row><td>CustomAction</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>CustomSource</td><td/><td>The table reference of the source of the code.</td></row>
		<row><td>CustomAction</td><td>Target</td><td>Y</td><td/><td/><td>ISDLLWrapper;ISInstallScriptAction</td><td>1</td><td>Formatted</td><td/><td>Excecution parameter, depends on the type of custom action</td></row>
		<row><td>CustomAction</td><td>Type</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>The numeric custom action type, consisting of source location, code type, entry, option flags.</td></row>
		<row><td>Dialog</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>Dialog</td><td>Control_Cancel</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the cancel control. Hitting escape or clicking on the close icon on the dialog is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_Default</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the default control. Hitting return is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_First</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the control that has the focus when the dialog is created.</td></row>
		<row><td>Dialog</td><td>Dialog</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>Dialog</td><td>HCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Horizontal position of the dialog on a 0-100 scale. 0 means left end, 100 means right end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>Dialog</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this dialog.</td></row>
		<row><td>Dialog</td><td>ISResourceId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A Number the Specifies the Dialog ID to be used in Dialog Export</td></row>
		<row><td>Dialog</td><td>ISWindowStyle</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control. This is only used in Script Based Setups.</td></row>
		<row><td>Dialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>Dialog</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A text string specifying the title to be displayed in the title bar of the dialog's window.</td></row>
		<row><td>Dialog</td><td>VCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Vertical position of the dialog on a 0-100 scale. 0 means top end, 100 means bottom end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>Directory</td><td>DefaultDir</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The default sub-path under parent's path.</td></row>
		<row><td>Directory</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for directory entry, primary key. If a property by this name is defined, it contains the full path to the directory.</td></row>
		<row><td>Directory</td><td>Directory_Parent</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Reference to the entry in this table specifying the default parent directory. A record parented to itself or with a Null parent represents a root of the install tree.</td></row>
		<row><td>Directory</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7</td><td>This is used to store Installshield custom properties of a directory.  Currently the only one is Shortcut.</td></row>
		<row><td>Directory</td><td>ISDescription</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of folder</td></row>
		<row><td>Directory</td><td>ISFolderName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is used in Pro projects because the pro identifier used in the tree wasn't necessarily unique.</td></row>
		<row><td>DrLocator</td><td>Depth</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The depth below the path to which the Signature_ is recursively searched. If absent, the depth is assumed to be 0.</td></row>
		<row><td>DrLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table. If null and the Path column does not expand to a full path, then all the fixed drives of the user system are searched using the Path.</td></row>
		<row><td>DrLocator</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>AnyPath</td><td/><td>The path on the user system. This is a either a subpath below the value of the Parent or a full path. The path may contain properties enclosed within [ ] that will be expanded.</td></row>
		<row><td>DrLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>DuplicateFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>DestFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to a destination folder.</td></row>
		<row><td>DuplicateFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename to be given to the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>DuplicateFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing the source file to be duplicated.</td></row>
		<row><td>Environment</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the environmental value.</td></row>
		<row><td>Environment</td><td>Environment</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the environmental variable setting</td></row>
		<row><td>Environment</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the environmental value.</td></row>
		<row><td>Environment</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to set in the environmental settings.</td></row>
		<row><td>Error</td><td>Error</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer error number, obtained from header file IError(...) macros.</td></row>
		<row><td>Error</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Error formatting template, obtained from user ed. or localizers.</td></row>
		<row><td>EventMapping</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of the control attribute, that is set when this event is received.</td></row>
		<row><td>EventMapping</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>EventMapping</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the Dialog.</td></row>
		<row><td>EventMapping</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>An identifier that specifies the type of the event that the control subscribes to.</td></row>
		<row><td>Extension</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Extension</td><td>Extension</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Extension</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Extension</td><td>MIME_</td><td>Y</td><td/><td/><td>MIME</td><td>1</td><td>Text</td><td/><td>Optional Context identifier, typically "type/format" associated with the extension</td></row>
		<row><td>Extension</td><td>ProgId_</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this extension.</td></row>
		<row><td>Feature</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2;4;5;6;8;9;10;16;17;18;20;21;22;24;25;26;32;33;34;36;37;38;48;49;50;52;53;54</td><td>Feature attributes</td></row>
		<row><td>Feature</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>Feature</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>UpperCase</td><td/><td>The name of the Directory that can be configured by the UI. A non-null value will enable the browse button.</td></row>
		<row><td>Feature</td><td>Display</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>Feature</td><td>Feature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>Feature</td><td>Feature_Parent</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Optional key of a parent record in the same table. If the parent is not selected, then the record will not be installed. Null indicates a root item.</td></row>
		<row><td>Feature</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Comments</td></row>
		<row><td>Feature</td><td>ISFeatureCabName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Name of CAB used when compressing CABs by Feature. Used to override build generated name for CAB file.</td></row>
		<row><td>Feature</td><td>ISProFeatureName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the feature used by pro projects.  This doesn't have to be unique.</td></row>
		<row><td>Feature</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this  feature will be built in a particular release.</td></row>
		<row><td>Feature</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The install level at which record will be initially selected. An install level of 0 will disable an item and prevent its display.</td></row>
		<row><td>Feature</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Short text identifying a visible feature item.</td></row>
		<row><td>FeatureComponents</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>FeatureComponents</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>File</td><td>Attributes</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing file attributes (with the decimal value of each bit position in parentheses)</td></row>
		<row><td>File</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>File</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token, must match identifier in cabinet.  For uncompressed files, this field is ignored.</td></row>
		<row><td>File</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>File name used for installation.  This may contain a "short name|long name" pair.  It may be just a long name, hence it cannot be of the Filename data type.</td></row>
		<row><td>File</td><td>FileSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>File</td><td>ISAttributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>This field contains the following attributes: UseSystemSettings(0x1)</td></row>
		<row><td>File</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>File</td><td>ISComponentSubFolder_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key referencing component subfolder containing this file.  Only for Pro.</td></row>
		<row><td>File</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>List of decimal language Ids, comma-separated if more than one.</td></row>
		<row><td>File</td><td>Sequence</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>File</td><td>Version</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Version</td><td/><td>Version string for versioned files;  Blank for unversioned files.</td></row>
		<row><td>FileSFPCatalog</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>File associated with the catalog</td></row>
		<row><td>FileSFPCatalog</td><td>SFPCatalog_</td><td>N</td><td/><td/><td>SFPCatalog</td><td>1</td><td>Text</td><td/><td>Catalog associated with the file</td></row>
		<row><td>Font</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing font file.</td></row>
		<row><td>Font</td><td>FontTitle</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Font name.</td></row>
		<row><td>ISAssistantTag</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISAssistantTag</td><td>Tag</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Color</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Duration</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Effect</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Font</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>ISBillboard</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Origin</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Sequence</td><td>N</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Style</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Target</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the chained package. Used only in the IDE.</td></row>
		<row><td>ISChainPackage</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Options</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Package</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>ProductCode</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>SourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>ISChainPackageData</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>ISChainPackageData</td><td>Options</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Package_</td><td>N</td><td/><td/><td>ISChainPackage</td><td>1</td><td>Identifier</td><td/><td/></row>
		<row><td>ISClrWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISClrWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISClrWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISComCatalogAttribute</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The named attribute for a catalog object.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A value associated with the attribute defined in the ItemName column.</td></row>
		<row><td>ISComCatalogCollection</td><td>CollectionName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A catalog collection name.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogCollection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogCollection_</td><td>N</td><td/><td/><td>ISComCatalogCollection</td><td>1</td><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogObject</td><td>DisplayName</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The display name of a catalog object.</td></row>
		<row><td>ISComCatalogObject</td><td>ISComCatalogObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplication</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>ComputerName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Computer name that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusApplication</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application.</td></row>
		<row><td>ISComPlusApplication</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>AlterDLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Alternate filename of the COM+ application component. Will be used for a .NET serviced component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>CLSID of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>DLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplicationDLL</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ProgId</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ProgId of the COM+ application component.</td></row>
		<row><td>ISComPlusProxy</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusProxy</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application proxy.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusProxy</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusProxy table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusProxyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusServerFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComponentExtended</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>ISComponentExtended</td><td>FTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>FTP Location</td></row>
		<row><td>ISComponentExtended</td><td>FilterProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property to set if you want to filter a component</td></row>
		<row><td>ISComponentExtended</td><td>HTTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HTTP Location</td></row>
		<row><td>ISComponentExtended</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Language</td></row>
		<row><td>ISComponentExtended</td><td>Miscellaneous</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Miscellaneous</td></row>
		<row><td>ISComponentExtended</td><td>OS</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of OSs</td></row>
		<row><td>ISComponentExtended</td><td>Platforms</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of Platforms.</td></row>
		<row><td>ISCustomActionReference</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into theICustomAction table.</td></row>
		<row><td>ISCustomActionReference</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Contents of the file speciifed in ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>FileType</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>file type of the file specified  ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>ISCAReferenceFilePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.  This column only exists in ISM.</td></row>
		<row><td>ISDIMDependency</td><td>ISDIMReference_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMDependency table</td></row>
		<row><td>ISDIMDependency</td><td>RequiredBuildVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the build version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMajorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the major version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMinorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the minor version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredRevisionVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the revision version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredUUID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>the UUID identifying the required DIM</td></row>
		<row><td>ISDIMReference</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISDIMReference</td><td>ISDIMReference</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>This is the primary key to the ISDIMReference table</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMDependency_</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMDependency table.</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMReference_Parent</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMVariable</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMVariable table</td></row>
		<row><td>ISDIMVariable</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of a variable defined in the .dim file</td></row>
		<row><td>ISDIMVariable</td><td>NewValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>New value that you want to override with</td></row>
		<row><td>ISDIMVariable</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type of the variable. 0: Build Variable, 1: Runtime Variable</td></row>
		<row><td>ISDLLWrapper</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISDLLWrapper</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISDLLWrapper</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISDLLWrapper</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISDRMFile</td><td>File_</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table.  A null value will cause a build warning.</td></row>
		<row><td>ISDRMFile</td><td>ISDRMFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for this item.</td></row>
		<row><td>ISDRMFile</td><td>ISDRMLicense_</td><td>Y</td><td/><td/><td>ISDRMLicense</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing License that packages this file.</td></row>
		<row><td>ISDRMFile</td><td>Shell</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text indicating the activation shell used at runtime.</td></row>
		<row><td>ISDRMFileAttribute</td><td>ISDRMFile_</td><td>N</td><td/><td/><td>ISDRMFile</td><td>1</td><td>Identifier</td><td/><td>Primary foreign key into ISDRMFile table.</td></row>
		<row><td>ISDRMFileAttribute</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the attribute</td></row>
		<row><td>ISDRMFileAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the attribute</td></row>
		<row><td>ISDRMLicense</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Bitwise field used to specify binary attributes of this license.</td></row>
		<row><td>ISDRMLicense</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>An internal description of this license.</td></row>
		<row><td>ISDRMLicense</td><td>ISDRMLicense</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the license record.</td></row>
		<row><td>ISDRMLicense</td><td>LicenseNumber</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The license number.</td></row>
		<row><td>ISDRMLicense</td><td>ProjectVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The version of the project that this license is tied to.</td></row>
		<row><td>ISDRMLicense</td><td>RequestCode</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The request code.</td></row>
		<row><td>ISDRMLicense</td><td>ResponseCode</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The response code.</td></row>
		<row><td>ISDependency</td><td>Exclude</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDependency</td><td>ISDependency</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDisk1File</td><td>Disk</td><td>Y</td><td/><td/><td/><td/><td/><td>-1;0;1</td><td>Used to differentiate between disk1(1), last disk(-1), and other(0).</td></row>
		<row><td>ISDisk1File</td><td>ISBuildSourcePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of file to be copied to Disk1 folder</td></row>
		<row><td>ISDisk1File</td><td>ISDisk1File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for ISDisk1File table</td></row>
		<row><td>ISDynamicFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>ISDynamicFile</td><td>ExcludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for excluded files.</td></row>
		<row><td>ISDynamicFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15</td><td>This is used to store Installshield custom properties of a dynamic filet.  Currently the only one is SelfRegister.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for included files.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Include flags.</td></row>
		<row><td>ISDynamicFile</td><td>SourceFolder</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Feature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>ModuleID</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>ISSetupPrerequisites_</td><td>N</td><td/><td/><td>ISSetupPrerequisites</td><td>1</td><td/><td/><td/></row>
		<row><td>ISFileManifests</td><td>File_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISFileManifests</td><td>Manifest_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISIISItem</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key to Component table.</td></row>
		<row><td>ISIISItem</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable Item Name.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for each item.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem_Parent</td><td>Y</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>This record's parent record.</td></row>
		<row><td>ISIISItem</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td/><td>IIS resource type.</td></row>
		<row><td>ISIISProperty</td><td>FriendlyName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property name.</td></row>
		<row><td>ISIISProperty</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Flags.</td></row>
		<row><td>ISIISProperty</td><td>ISIISItem_</td><td>N</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>Primary key for table, foreign key into ISIISItem.</td></row>
		<row><td>ISIISProperty</td><td>ISIISProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for table.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property attributes.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataProp</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property ID.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataUserType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property user data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property value.</td></row>
		<row><td>ISIISProperty</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Order sequencing.</td></row>
		<row><td>ISIISProperty</td><td>Schema</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS7 schema information.</td></row>
		<row><td>ISInstallScriptAction</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISInstallScriptAction</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISInstallScriptAction</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISInstallScriptAction</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISLanguage</td><td>ISLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the language ID.</td></row>
		<row><td>ISLanguage</td><td>Included</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1</td><td>Specify whether this language should be included.</td></row>
		<row><td>ISLinkerLibrary</td><td>ISLinkerLibrary</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the link library.</td></row>
		<row><td>ISLinkerLibrary</td><td>Library</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the object library (.obl file).</td></row>
		<row><td>ISLinkerLibrary</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Order of the Library</td></row>
		<row><td>ISLocalControl</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>ISLocalControl</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>ISLocalControl</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>ISLocalControl</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>ISLocalControl</td><td>Height</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>ISLocalControl</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalControl</td><td>Width</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>X</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>Y</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalDialog</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Dialog_</td><td>Y</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>ISLanguage_</td><td>Y</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalDialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>ISLocalDialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalRadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalRadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td>RadioButton</td><td>2</td><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ISLocalRadioButton</td><td>Property</td><td>N</td><td/><td/><td>RadioButton</td><td>1</td><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>ISLocalRadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLocalRadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLockPermissions</td><td>Attributes</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permissions attributes mask, 1==Deny access; 2==No inherit, 4==Ignore apply failures, 8==Target object is 64-bit</td></row>
		<row><td>ISLockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set.</td></row>
		<row><td>ISLockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into CreateFolder, Registry, or File table</td></row>
		<row><td>ISLockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.</td></row>
		<row><td>ISLockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>ISLockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set. This can be a property, hardcoded named, or SID string</td></row>
		<row><td>ISLogicalDisk</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>ISLogicalDisk</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDisk</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDisk</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>ISLogicalDisk</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>ISLogicalDisk</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Feature_</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table,</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties, like Compressed, etc.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISLogicalDisk_</td><td>N</td><td>1</td><td>32767</td><td>ISLogicalDisk</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISLogicalDisk table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the file for this media.</td></row>
		<row><td>ISMergeModule</td><td>Destination</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Destination.</td></row>
		<row><td>ISMergeModule</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a merge module.</td></row>
		<row><td>ISMergeModule</td><td>ISMergeModule</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The GUID identifying the merge module.</td></row>
		<row><td>ISMergeModule</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModule</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the merge module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Attributes (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ContextData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ContextData  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DefaultValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DefaultValue  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DisplayName (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Format</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Format (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpKeyword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpKeyword (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpLocation (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>The module signature, a foreign key into the ISMergeModule table</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ModuleConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Identifier, foreign key into ModuleConfiguration table (ModuleConfiguration.Name)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Type (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for this item.</td></row>
		<row><td>ISObject</td><td>Language</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObject</td><td>ObjectName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>IncludeInBuild</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Boolean, 0 for false non 0 for true</td></row>
		<row><td>ISObjectProperty</td><td>ObjectName</td><td>Y</td><td/><td/><td>ISObject</td><td>1</td><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISPatchConfigImage</td><td>PatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfigurationTable</td></row>
		<row><td>ISPatchConfigImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISUpgradedImageTable</td></row>
		<row><td>ISPatchConfiguration</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>PatchConfiguration attributes</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPCDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether Product Codes may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPVDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether the Major Product Version may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>EnablePatchCache</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Enable Patch cacheing</td></row>
		<row><td>ISPatchConfiguration</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Patching API Flags</td></row>
		<row><td>ISPatchConfiguration</td><td>IncludeWholeFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to build a binary level patch</td></row>
		<row><td>ISPatchConfiguration</td><td>LeaveDecompressed</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to leave intermediate files devcompressed when finished</td></row>
		<row><td>ISPatchConfiguration</td><td>MinMsiVersion</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Minimum Required MSI Version</td></row>
		<row><td>ISPatchConfiguration</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfiguration</td><td>OptimizeForSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Optimize for large files</td></row>
		<row><td>ISPatchConfiguration</td><td>OutputPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Location</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchCacheDir</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to recieve the Patch Cache information</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuid</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Unique Patch Identifier</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuidsToReplace</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of Patch Guids to unregister</td></row>
		<row><td>ISPatchConfiguration</td><td>TargetProductCodes</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of target Product Codes</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>ISPatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration Property value</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the Patch Configuration Property</td></row>
		<row><td>ISPatchExternalFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filekey</td></row>
		<row><td>ISPatchExternalFile</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filepath</td></row>
		<row><td>ISPatchExternalFile</td><td>ISUpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the isupgraded image table</td></row>
		<row><td>ISPatchExternalFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Uniqu name to identify this record.</td></row>
		<row><td>ISPatchWholeFile</td><td>Component</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Component containing file key</td></row>
		<row><td>ISPatchWholeFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key of file to be included as whole</td></row>
		<row><td>ISPatchWholeFile</td><td>UpgradedImage</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to ISUpgradedImage Table</td></row>
		<row><td>ISPathVariable</td><td>ISPathVariable</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The name of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>TestValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The test value of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4;8</td><td>The type of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the path variable.</td></row>
		<row><td>ISPowerShellWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISPowerShellWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISPowerShellWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISProductConfiguration</td><td>GeneratePackageCode</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td>0;1</td><td>Indicates whether or not to generate a package code.</td></row>
		<row><td>ISProductConfiguration</td><td>ISProductConfiguration</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the product configuration.</td></row>
		<row><td>ISProductConfiguration</td><td>ProductConfigurationFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Product configuration (release) flags.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>InstanceId</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Identifies the instance number of this instance. This value is stored in the Property InstanceId.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Property</td><td>N</td><td/><td/><td>Property</td><td>1</td><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property. Never null or empty.</td></row>
		<row><td>ISRelease</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISRelease</td><td>BuildLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build location.</td></row>
		<row><td>ISRelease</td><td>CDBrowser</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Demoshield browser location.</td></row>
		<row><td>ISRelease</td><td>DefaultLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Default language for setup.</td></row>
		<row><td>ISRelease</td><td>DigitalPVK</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing private key (.pvk) file.</td></row>
		<row><td>ISRelease</td><td>DigitalSPC</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing Software Publisher Certificate (.spc) file.</td></row>
		<row><td>ISRelease</td><td>DigitalURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing URL.</td></row>
		<row><td>ISRelease</td><td>DiskClusterSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Disk cluster size.</td></row>
		<row><td>ISRelease</td><td>DiskSize</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk size.</td></row>
		<row><td>ISRelease</td><td>DiskSizeUnit</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk size units (KB or MB).</td></row>
		<row><td>ISRelease</td><td>DiskSpanning</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk spanning (automatic, enforce size, etc.).</td></row>
		<row><td>ISRelease</td><td>DotNetBuildConfiguration</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Configuration for .NET solutions.</td></row>
		<row><td>ISRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISRelease</td><td>ISRelease</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISRelease</td><td>ISSetupPrerequisiteLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3</td><td>Location the Setup Prerequisites will be placed in</td></row>
		<row><td>ISRelease</td><td>MediaLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location on disk.</td></row>
		<row><td>ISRelease</td><td>MsiCommandLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command line passed to the msi package from setup.exe</td></row>
		<row><td>ISRelease</td><td>MsiSourceType</td><td>N</td><td>-1</td><td>4</td><td/><td/><td/><td/><td>MSI media source type.</td></row>
		<row><td>ISRelease</td><td>PackageName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Package name.</td></row>
		<row><td>ISRelease</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password.</td></row>
		<row><td>ISRelease</td><td>Platforms</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Platforms supported (Intel, Alpha, etc.).</td></row>
		<row><td>ISRelease</td><td>ReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Release flags.</td></row>
		<row><td>ISRelease</td><td>ReleaseType</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4</td><td>Release type (single, uncompressed, etc.).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Languages supported (for component filtering).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesUI</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>UI languages supported.</td></row>
		<row><td>ISRelease</td><td>SupportedOSs</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Indicate which operating systmes are supported.</td></row>
		<row><td>ISRelease</td><td>SynchMsi</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>MSI file to synchronize file keys and other data with (patch-like functionality).</td></row>
		<row><td>ISRelease</td><td>Type</td><td>N</td><td>0</td><td>6</td><td/><td/><td/><td/><td>Release type (CDROM, Network, etc.).</td></row>
		<row><td>ISRelease</td><td>URLLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location via URL.</td></row>
		<row><td>ISRelease</td><td>VersionCopyright</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Version stamp information.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property name</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property value</td></row>
		<row><td>ISReleaseExtended</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISReleaseExtended</td><td>CertPassword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital certificate password</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateDBaseNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate database for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateIdNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate ID for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificatePasswordNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetBaseLanguage</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Base Languge of .NET Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetFxCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to DotNetFx.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangPackCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to LangPack.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangaugePacks</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>.NET Redist language packs to include</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of .NET framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .NET framework Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetVersion</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Version of .NET framework Redist (1.0, 1.1)</td></row>
		<row><td>ISReleaseExtended</td><td>EngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of msi engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of ISScript  engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to InstallShield scripting engine</td></row>
		<row><td>ISReleaseExtended</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseExtended</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to vjredist.exe</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of J# framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>MsiEngineVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding selected MSI engine versions included in this release</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickCabName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickHtmlName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated html page</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickTargetBrowser</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Target browser (IE, Netscape, both...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebCabSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of the cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>WebLocalCachePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to cache downloaded package</td></row>
		<row><td>ISReleaseExtended</td><td>WebType</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Type of web install (One Executable, Downloader...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .msi package</td></row>
		<row><td>ISReleaseExtended</td><td>Win9xMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Ansi MSI engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinMsi30Url</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to MSI 3.0 engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinNTMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Unicode MSI engine</td></row>
		<row><td>ISReleaseProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISReleaseProperty</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISReleaseProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISReleaseProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISReleasePublishInfo</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item description</td></row>
		<row><td>ISReleasePublishInfo</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item display name</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding various attributes</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleasePublishInfo</td><td>Publisher</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item publisher</td></row>
		<row><td>ISReleasePublishInfo</td><td>Repository</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository which to  publish the built merge module</td></row>
		<row><td>ISSQLConnection</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>BatchSeparator</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>CmdTimeout</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Database</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ISSQLConnection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnection record.</td></row>
		<row><td>ISSQLConnection</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Password</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Server</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>UserName</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnectionDBServer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnectionDBServer record.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLDBMetaData_</td><td>N</td><td/><td/><td>ISSQLDBMetaData</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLDBMetaData table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnAdditional</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDatabase</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDriver</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnNetLibrary</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPassword</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPort</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnServer</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnUserID</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnWindowsSecurity</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoDriverName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DsnODBCName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISSQLDBMetaData</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLDBMetaData record.</td></row>
		<row><td>ISSQLDBMetaData</td><td>InsertRecordCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>LocalInstanceNames</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>QueryDatabasesCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_ColumnType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SelectTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SwitchDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestDatabaseCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd2</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionBeginToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionEndToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionInfoCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>WinAuthentUserId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnectionDBServer_</td><td>Y</td><td/><td/><td>ISSQLConnectionDBServer</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnectionDBServer table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLRequirement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLRequirement record.</td></row>
		<row><td>ISSQLRequirement</td><td>MajorVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ServicePackLevel</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrNumber</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ISSQLScriptFile_</td><td>Y</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptError</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Custom end-user message. Reserved for future use.</td></row>
		<row><td>ISSQLScriptFile</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comments</td></row>
		<row><td>ISSQLScriptFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the SQL script.</td></row>
		<row><td>ISSQLScriptFile</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this script if the specified condition evaluates to the 'False' state. If a script is disabled, it will not be installed regardless of the 'Action' state associated with the component.</td></row>
		<row><td>ISSQLScriptFile</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the SQL script file.</td></row>
		<row><td>ISSQLScriptFile</td><td>ErrorHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISSQLScriptFile</td><td>ISSQLScriptFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptFile</td><td>InstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at install</td></row>
		<row><td>ISSQLScriptFile</td><td>Scheduling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>UninstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at Uninstall</td></row>
		<row><td>ISSQLScriptFile</td><td>Version</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Schema Version (#####.#####.#####.#####)</td></row>
		<row><td>ISSQLScriptImport</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Database</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ExcludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptImport</td><td>IncludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Server</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>UserName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptReplace</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLScriptReplace record.</td></row>
		<row><td>ISSQLScriptReplace</td><td>Replace</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Search</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISScriptFile</td><td>ISScriptFile</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the full path of the script file. The path portion may be expressed in path variable form.</td></row>
		<row><td>ISSelfReg</td><td>CmdLine</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>Cost</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>FileKey</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key to the file table</td></row>
		<row><td>ISSelfReg</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the file name to use when streaming the file to the support files location</td></row>
		<row><td>ISSetupFile</td><td>ISSetupFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSetupFile table</td></row>
		<row><td>ISSetupFile</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Four digit language identifier.  0 for Language Neutral</td></row>
		<row><td>ISSetupFile</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Link to the source file on the build machine</td></row>
		<row><td>ISSetupFile</td><td>Splash</td><td>Y</td><td/><td/><td/><td/><td>Short</td><td/><td>Boolean value indication whether his setup file entry belongs in the Splasc Screen section</td></row>
		<row><td>ISSetupFile</td><td>Stream</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The bits to stream to the support location</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this prereq  will be included in a particular release.</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupPrerequisites</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupType</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>ISSetupType</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>ISSetupType</td><td>Display</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>ISSetupType</td><td>Display_Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>ISSetupType</td><td>ISSetupType</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>ISSetupType_</td><td>N</td><td/><td/><td>ISSetupType</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSetupType table.</td></row>
		<row><td>ISStorages</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Path to the file to stream into sub-storage</td></row>
		<row><td>ISStorages</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Name of the sub-storage key</td></row>
		<row><td>ISString</td><td>Comment</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comment</td></row>
		<row><td>ISString</td><td>Encoded</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Encoding for multi-byte strings.</td></row>
		<row><td>ISString</td><td>ISLanguage_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISString</td><td>ISString</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String id.</td></row>
		<row><td>ISString</td><td>TimeStamp</td><td>Y</td><td/><td/><td/><td/><td>Time/Date</td><td/><td>Time Stamp. MSI's Time/Date column type is just an int, with bits packed in a certain order.</td></row>
		<row><td>ISString</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>real string value.</td></row>
		<row><td>ISSwidtagProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISSwidtagProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property value</td></row>
		<row><td>ISTargetImage</td><td>Flags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>IgnoreMissingFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>If true, ignore missing source files when creating patch</td></row>
		<row><td>ISTargetImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the target image</td></row>
		<row><td>ISTargetImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the TargetImage</td></row>
		<row><td>ISTargetImage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>foreign key to the upgraded Image table</td></row>
		<row><td>ISUpgradeMsiItem</td><td>ISAttributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1</td><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ObjectSetupPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The path to the setup you want to upgrade.</td></row>
		<row><td>ISUpgradeMsiItem</td><td>UpgradeItem</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the Upgrade Item.</td></row>
		<row><td>ISUpgradedImage</td><td>Family</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the image family</td></row>
		<row><td>ISUpgradedImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the upgraded image</td></row>
		<row><td>ISUpgradedImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the UpgradedImage</td></row>
		<row><td>ISVirtualDirectory</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISVirtualDirectory</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualDirectory</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File  table.</td></row>
		<row><td>ISVirtualFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualPackage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualPackage</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRegistry</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualRegistry</td><td>Registry_</td><td>N</td><td/><td/><td>Registry</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Registry table.</td></row>
		<row><td>ISVirtualRegistry</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISVirtualRelease</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISVirtualRelease</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISVirtualRelease</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualShortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualShortcut</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Shortcut table.</td></row>
		<row><td>ISVirtualShortcut</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISXmlElement</td><td>Content</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Element contents</td></row>
		<row><td>ISXmlElement</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML element attributes</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement_Parent</td><td>Y</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElement</td><td>ISXmlFile_</td><td>N</td><td/><td/><td>ISXmlFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into XmlFile table.</td></row>
		<row><td>ISXmlElement</td><td>XPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XPath fragment including any operators</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML elementattib attributes</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElementAttrib</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element attribute</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElement_</td><td>N</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElementAttrib</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute name</td></row>
		<row><td>ISXmlElementAttrib</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute value</td></row>
		<row><td>ISXmlFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>ISXmlFile</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISXmlFile</td><td>Encoding</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XML File Encoding</td></row>
		<row><td>ISXmlFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized XML file name</td></row>
		<row><td>ISXmlFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML file attributes</td></row>
		<row><td>ISXmlFile</td><td>ISXmlFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized,internal token for Xml file</td></row>
		<row><td>ISXmlFile</td><td>SelectionNamespaces</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Selection namespaces</td></row>
		<row><td>ISXmlLocator</td><td>Attribute</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>The name of an attribute within the XML element.</td></row>
		<row><td>ISXmlLocator</td><td>Element</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>XPath query that will locate an element in an XML file.</td></row>
		<row><td>ISXmlLocator</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISXmlLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table.</td></row>
		<row><td>ISXmlLocator</td><td>Signature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, ISXmlLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>Icon</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Icon</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Icon</td><td>ISIconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index to be extracted.</td></row>
		<row><td>Icon</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key. Name of the icon file.</td></row>
		<row><td>IniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;3</td><td>The type of modification to be made, one of iifEnum</td></row>
		<row><td>IniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the .INI value.</td></row>
		<row><td>IniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>IniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to write the information</td></row>
		<row><td>IniFile</td><td>IniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>IniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>IniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>IniFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be written.</td></row>
		<row><td>IniLocator</td><td>Field</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The field in the .INI line. If Field is null or 0 the entire line is read.</td></row>
		<row><td>IniLocator</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name.</td></row>
		<row><td>IniLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key value (followed by an equals sign in INI file).</td></row>
		<row><td>IniLocator</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Section name within in file (within square brackets in INI file).</td></row>
		<row><td>IniLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>IniLocator</td><td>Type</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>An integer value that determines if the .INI value read is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>InstallExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>InstallShield</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>InstallShield</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>InstallUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>IsolatedComponent</td><td>Component_Application</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item for application</td></row>
		<row><td>IsolatedComponent</td><td>Component_Shared</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item to be isolated</td></row>
		<row><td>LaunchCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression which must evaluate to TRUE in order for install to commence.</td></row>
		<row><td>LaunchCondition</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable text to display when condition fails and install must abort.</td></row>
		<row><td>ListBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listbox.</td></row>
		<row><td>ListBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>ListView</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>The name of the icon to be displayed with the icon. The binary information is looked up from the Binary Table.</td></row>
		<row><td>ListView</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListView</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listview.</td></row>
		<row><td>ListView</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListView</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>LockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set. (usually a property)</td></row>
		<row><td>LockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry or File table</td></row>
		<row><td>LockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.  Full Control = 268435456 (GENERIC_ALL = 0x10000000)</td></row>
		<row><td>LockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>Directory;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>LockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set.  (usually a property)</td></row>
		<row><td>MIME</td><td>CLSID</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>Optional associated CLSID.</td></row>
		<row><td>MIME</td><td>ContentType</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Primary key. Context identifier, typically "type/format".</td></row>
		<row><td>MIME</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>Optional associated extension (without dot)</td></row>
		<row><td>Media</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>Media</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>Media</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>Media</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>Media</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>Media</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>MoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>If this component is not "selected" for installation or removal, no action will be taken on the associated MoveFile entry</td></row>
		<row><td>MoveFile</td><td>DestFolder</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>MoveFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name to be given to the original file after it is moved or copied.  If blank, the destination file will be given the same name as the source file</td></row>
		<row><td>MoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular MoveFile record</td></row>
		<row><td>MoveFile</td><td>Options</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Integer value specifying the MoveFile operating mode, one of imfoEnum</td></row>
		<row><td>MoveFile</td><td>SourceFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the source directory</td></row>
		<row><td>MoveFile</td><td>SourceName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the source file(s) to be moved or copied.  Can contain the '*' or '?' wildcards.</td></row>
		<row><td>MsiAssembly</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Assembly attributes</td></row>
		<row><td>MsiAssembly</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssembly</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>MsiAssembly</td><td>File_Application</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table, denoting the application context for private assemblies. Null for global assemblies.</td></row>
		<row><td>MsiAssembly</td><td>File_Manifest</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the manifest file for the assembly.</td></row>
		<row><td>MsiAssemblyName</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiAssemblyName</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiDigitalCertificate</td><td>CertData</td><td>N</td><td/><td/><td/><td/><td>Binary</td><td/><td>A certificate context blob for a signer certificate</td></row>
		<row><td>MsiDigitalCertificate</td><td>DigitalCertificate</td><td>N</td><td/><td/><td>MsiPackageCertificate</td><td>2</td><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiDigitalSignature</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>Foreign key to MsiDigitalCertificate table identifying the signer certificate</td></row>
		<row><td>MsiDigitalSignature</td><td>Hash</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>The encoded hash blob from the digital signature</td></row>
		<row><td>MsiDigitalSignature</td><td>SignObject</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key to Media table</td></row>
		<row><td>MsiDigitalSignature</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Reference to another table name (only Media table is supported)</td></row>
		<row><td>MsiDriverPackages</td><td>Component</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>MsiDriverPackages</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Driver package flags</td></row>
		<row><td>MsiDriverPackages</td><td>ReferenceComponents</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiDriverPackages</td><td>Sequence</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Installation sequence number</td></row>
		<row><td>MsiEmbeddedChainer</td><td>CommandLine</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>MsiEmbeddedChainer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>CustomSource</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Integer</td><td>2;18;50</td><td/></row>
		<row><td>MsiEmbeddedUI</td><td>Attributes</td><td>N</td><td>0</td><td>3</td><td/><td/><td>Integer</td><td/><td>Information about the data in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>This column contains binary information.</td></row>
		<row><td>MsiEmbeddedUI</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>The name of the file that receives the binary information in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>MsiEmbeddedUI</td><td>MessageFilter</td><td>Y</td><td>0</td><td>234913791</td><td/><td/><td>Integer</td><td/><td>Specifies the types of messages that are sent to the user interface DLL. This column is only relevant for rows with the msidbEmbeddedUI attribute.</td></row>
		<row><td>MsiEmbeddedUI</td><td>MsiEmbeddedUI</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The primary key for the table.</td></row>
		<row><td>MsiFileHash</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing file with this hash</td></row>
		<row><td>MsiFileHash</td><td>HashPart1</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart2</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart3</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart4</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>Options</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Various options and attributes for this hash.</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Expression which must evaluate to TRUE in order for this set of permissions to be applied</td></row>
		<row><td>MsiLockPermissionsEx</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry, File, CreateFolder, or ServiceInstall table</td></row>
		<row><td>MsiLockPermissionsEx</td><td>MsiLockPermissionsEx</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiLockPermissionsEx</td><td>SDDLText</td><td>N</td><td/><td/><td/><td/><td>FormattedSDDLText</td><td/><td>String to indicate permissions to be applied to the LockObject</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry;ServiceInstall</td><td>Reference to another table name</td></row>
		<row><td>MsiPackageCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPackageCertificate</td><td>PackageCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPatchCertificate</td><td>PatchCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchMetadata</td><td>Company</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional company name</td></row>
		<row><td>MsiPatchMetadata</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfiguration table</td></row>
		<row><td>MsiPatchMetadata</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the metadata</td></row>
		<row><td>MsiPatchMetadata</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the metadata</td></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>Assembly_</td><td>Y</td><td/><td/><td>MsiPatchOldAssemblyName</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Assembly</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchSequence</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the patch configuration table</td></row>
		<row><td>MsiPatchSequence</td><td>PatchFamily</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the family to which this patch belongs</td></row>
		<row><td>MsiPatchSequence</td><td>Sequence</td><td>N</td><td/><td/><td/><td/><td>Version</td><td/><td>The version of this patch in this family</td></row>
		<row><td>MsiPatchSequence</td><td>Supersede</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td>Supersede</td></row>
		<row><td>MsiPatchSequence</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Target product codes for this patch family</td></row>
		<row><td>MsiServiceConfig</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Argument(s) for service configuration. Value depends on the content of the ConfigType field</td></row>
		<row><td>MsiServiceConfig</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfig</td><td>ConfigType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Service Configuration Option</td></row>
		<row><td>MsiServiceConfig</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfig</td><td>MsiServiceConfig</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>MsiServiceConfig</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Actions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of integer actions separated by [~] delimiters: 0 = SC_ACTION_NONE, 1 = SC_ACTION_RESTART, 2 = SC_ACTION_REBOOT, 3 = SC_ACTION_RUN_COMMAND. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Command line of the process to CreateProcess function to execute</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>DelayActions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of delays (time in milli-seconds), separated by [~] delmiters, to wait before taking the corresponding Action. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>MsiServiceConfigFailureActions</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>RebootMessage</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Message to be broadcast to server users before rebooting</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>ResetPeriod</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Time in seconds after which to reset the failure count to zero. Leave blank if it should never be reset</td></row>
		<row><td>MsiShortcutProperty</td><td>MsiShortcutProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiShortcutProperty</td><td>PropVariantValue</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>String representation of the value in the property</td></row>
		<row><td>MsiShortcutProperty</td><td>PropertyKey</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Canonical string representation of the Property Key being set</td></row>
		<row><td>MsiShortcutProperty</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Shortcut table</td></row>
		<row><td>ODBCAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC driver attribute</td></row>
		<row><td>ODBCAttribute</td><td>Driver_</td><td>N</td><td/><td/><td>ODBCDriver</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC driver in ODBCDriver table</td></row>
		<row><td>ODBCAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC driver attribute</td></row>
		<row><td>ODBCDataSource</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDataSource</td><td>DataSource</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for data source</td></row>
		<row><td>ODBCDataSource</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for data source</td></row>
		<row><td>ODBCDataSource</td><td>DriverDescription</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Reference to driver description, may be existing driver</td></row>
		<row><td>ODBCDataSource</td><td>Registration</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Registration option: 0=machine, 1=user, others t.b.d.</td></row>
		<row><td>ODBCDriver</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDriver</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for driver, non-localized</td></row>
		<row><td>ODBCDriver</td><td>Driver</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for driver</td></row>
		<row><td>ODBCDriver</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key driver file</td></row>
		<row><td>ODBCDriver</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key driver setup DLL</td></row>
		<row><td>ODBCSourceAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC data source attribute</td></row>
		<row><td>ODBCSourceAttribute</td><td>DataSource_</td><td>N</td><td/><td/><td>ODBCDataSource</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC data source in ODBCDataSource table</td></row>
		<row><td>ODBCSourceAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC data source attribute</td></row>
		<row><td>ODBCTranslator</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCTranslator</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for translator</td></row>
		<row><td>ODBCTranslator</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key translator file</td></row>
		<row><td>ODBCTranslator</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key translator setup DLL</td></row>
		<row><td>ODBCTranslator</td><td>Translator</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for translator</td></row>
		<row><td>Patch</td><td>Attributes</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing patch attributes</td></row>
		<row><td>Patch</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, non-localized token, foreign key to File table, must match identifier in cabinet.</td></row>
		<row><td>Patch</td><td>Header</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The patch header, used for patch validation.</td></row>
		<row><td>Patch</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to patch header.</td></row>
		<row><td>Patch</td><td>PatchSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of patch in bytes (long integer).</td></row>
		<row><td>Patch</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Primary key, sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>Patch</td><td>StreamRef_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>External key into the MsiPatchHeaders table specifying the row that contains the patch header stream.</td></row>
		<row><td>PatchPackage</td><td>Media_</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Foreign key to DiskId column of Media table. Indicates the disk containing the patch package.</td></row>
		<row><td>PatchPackage</td><td>PatchId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A unique string GUID representing this patch.</td></row>
		<row><td>ProgId</td><td>Class_</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>The CLSID of an OLE factory corresponding to the ProgId.</td></row>
		<row><td>ProgId</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Program identifier.</td></row>
		<row><td>ProgId</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component, like ExtractIcon, etc.</td></row>
		<row><td>ProgId</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>ProgId</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this ProgId. Will be written under the DefaultIcon key.</td></row>
		<row><td>ProgId</td><td>ProgId</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The Program Identifier. Primary key.</td></row>
		<row><td>ProgId</td><td>ProgId_Parent</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>The Parent Program Identifier. If specified, the ProgId column becomes a version independent prog id.</td></row>
		<row><td>Property</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Property</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>Property</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>PublishComponent</td><td>AppData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is localisable Application specific data that can be associated with a Qualified Component.</td></row>
		<row><td>PublishComponent</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID that represents the component id that will be requested by the alien product.</td></row>
		<row><td>PublishComponent</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>PublishComponent</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Feature table.</td></row>
		<row><td>PublishComponent</td><td>Qualifier</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is defined only when the ComponentId column is an Qualified Component Id. This is the Qualifier for ProvideComponentIndirect.</td></row>
		<row><td>RadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>RadioButton</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>RadioButton</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>RadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>RadioButton</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>RadioButton</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible title to be assigned to the radio button.</td></row>
		<row><td>RadioButton</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this button. Selecting the button will set the associated property to this value.</td></row>
		<row><td>RadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>RadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RegLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RegLocator</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RegLocator</td><td>Root</td><td>N</td><td>0</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>RegLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table. If the type is 0, the registry values refers a directory, and _Signature is not a foreign key.</td></row>
		<row><td>RegLocator</td><td>Type</td><td>Y</td><td>0</td><td>18</td><td/><td/><td/><td/><td>An integer value that determines if the registry value is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>Registry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the registry value.</td></row>
		<row><td>Registry</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a registry item.  Currently the only one is Automatic.</td></row>
		<row><td>Registry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>Registry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>Registry</td><td>Registry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Registry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>Registry</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The registry value.</td></row>
		<row><td>RemoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>DirProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to the folder of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>RemoveFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>InstallMode</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;3</td><td>Installation option, one of iimEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>2;4</td><td>The type of modification to be made, one of iifEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the .INI value.</td></row>
		<row><td>RemoveIniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>RemoveIniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to delete the information</td></row>
		<row><td>RemoveIniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>RemoveIniFile</td><td>RemoveIniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveIniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>RemoveIniFile</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be deleted. The value is required when Action is iifIniRemoveTag</td></row>
		<row><td>RemoveRegistry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RemoveRegistry</td><td>RemoveRegistry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveRegistry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum</td></row>
		<row><td>ReserveCost</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reserve a specified amount of space if this component is to be installed.</td></row>
		<row><td>ReserveCost</td><td>ReserveFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>ReserveCost</td><td>ReserveKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular ReserveCost record</td></row>
		<row><td>ReserveCost</td><td>ReserveLocal</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed locally.</td></row>
		<row><td>ReserveCost</td><td>ReserveSource</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed to run from the source location.</td></row>
		<row><td>SFPCatalog</td><td>Catalog</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>SFP Catalog</td></row>
		<row><td>SFPCatalog</td><td>Dependency</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Parent catalog - only used by SFP</td></row>
		<row><td>SFPCatalog</td><td>SFPCatalog</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>File name for the catalog.</td></row>
		<row><td>SelfReg</td><td>Cost</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The cost of registering the module.</td></row>
		<row><td>SelfReg</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the module that needs to be registered.</td></row>
		<row><td>ServiceControl</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments for the service.  Separate by [~].</td></row>
		<row><td>ServiceControl</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceControl</td><td>Event</td><td>N</td><td>0</td><td>187</td><td/><td/><td/><td/><td>Bit field:  Install:  0x1 = Start, 0x2 = Stop, 0x8 = Delete, Uninstall: 0x10 = Start, 0x20 = Stop, 0x80 = Delete</td></row>
		<row><td>ServiceControl</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>ServiceControl</td><td>ServiceControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceControl</td><td>Wait</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Boolean for whether to wait for the service to fully start</td></row>
		<row><td>ServiceInstall</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments to include in every start of the service, passed to WinMain</td></row>
		<row><td>ServiceInstall</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceInstall</td><td>Dependencies</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Other services this depends on to start.  Separate by [~], and end with [~][~]</td></row>
		<row><td>ServiceInstall</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of service.</td></row>
		<row><td>ServiceInstall</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>External Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>ErrorControl</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Severity of error if service fails to start</td></row>
		<row><td>ServiceInstall</td><td>LoadOrderGroup</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>LoadOrderGroup</td></row>
		<row><td>ServiceInstall</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Internal Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>password to run service with.  (with StartName)</td></row>
		<row><td>ServiceInstall</td><td>ServiceInstall</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceInstall</td><td>ServiceType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>ServiceInstall</td><td>StartName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>User or object name to run service as</td></row>
		<row><td>ServiceInstall</td><td>StartType</td><td>N</td><td>0</td><td>4</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>Shortcut</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command-line arguments for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table denoting the component whose selection gates the the shortcut creation/deletion.</td></row>
		<row><td>Shortcut</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The description for the shortcut.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The description name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the shortcut file is created.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The display name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Hotkey</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The hotkey for the shortcut. It has the virtual-key code for the key in the low-order byte, and the modifier flags in the high-order byte.</td></row>
		<row><td>Shortcut</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a shortcut.  Mainly used in pro project types.</td></row>
		<row><td>Shortcut</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Shortcut.</td></row>
		<row><td>Shortcut</td><td>ISShortcutName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A non-unique name for the shortcut.  Mainly used by pro pro project types.</td></row>
		<row><td>Shortcut</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>The icon index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the external icon file for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the shortcut to be created.</td></row>
		<row><td>Shortcut</td><td>Shortcut</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Shortcut</td><td>ShowCmd</td><td>Y</td><td/><td/><td/><td/><td/><td>1;3;7</td><td>The show command for the application window.The following values may be used.</td></row>
		<row><td>Shortcut</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Shortcut</td><td/><td>The shortcut target. This is usually a property that is expanded to a file or a folder that the shortcut points to.</td></row>
		<row><td>Shortcut</td><td>WkDir</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property defining location of working directory.</td></row>
		<row><td>Signature</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the file. This may contain a "short name|long name" pair.</td></row>
		<row><td>Signature</td><td>Languages</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>The languages supported by the file.</td></row>
		<row><td>Signature</td><td>MaxDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum creation date of the file.</td></row>
		<row><td>Signature</td><td>MaxSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum size of the file.</td></row>
		<row><td>Signature</td><td>MaxVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum version of the file.</td></row>
		<row><td>Signature</td><td>MinDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum creation date of the file.</td></row>
		<row><td>Signature</td><td>MinSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum size of the file.</td></row>
		<row><td>Signature</td><td>MinVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum version of the file.</td></row>
		<row><td>Signature</td><td>Signature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The table key. The Signature represents a unique file signature.</td></row>
		<row><td>TextStyle</td><td>Color</td><td>Y</td><td>0</td><td>16777215</td><td/><td/><td/><td/><td>A long integer indicating the color of the string in the RGB format (Red, Green, Blue each 0-255, RGB = R + 256*G + 256^2*B).</td></row>
		<row><td>TextStyle</td><td>FaceName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A string indicating the name of the font used. Required. The string must be at most 31 characters long.</td></row>
		<row><td>TextStyle</td><td>Size</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The size of the font used. This size is given in our units (1/12 of the system font height). Assuming that the system font is set to 12 point size, this is equivalent to the point size.</td></row>
		<row><td>TextStyle</td><td>StyleBits</td><td>Y</td><td>0</td><td>15</td><td/><td/><td/><td/><td>A combination of style bits.</td></row>
		<row><td>TextStyle</td><td>TextStyle</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the style. The primary key of this table. This name is embedded in the texts to indicate a style change.</td></row>
		<row><td>TypeLib</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>TypeLib</td><td>Cost</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The cost associated with the registration of the typelib. This column is currently optional.</td></row>
		<row><td>TypeLib</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>TypeLib</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Optional. The foreign key into the Directory table denoting the path to the help file for the type library.</td></row>
		<row><td>TypeLib</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the type library to be operational.</td></row>
		<row><td>TypeLib</td><td>Language</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The language of the library.</td></row>
		<row><td>TypeLib</td><td>LibID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The GUID that represents the library.</td></row>
		<row><td>TypeLib</td><td>Version</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The version of the library. The major version is in the upper 8 bits of the short integer. The minor version is in the lower 8 bits.</td></row>
		<row><td>UIText</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key that identifies the particular string.</td></row>
		<row><td>UIText</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The localized version of the string.</td></row>
		<row><td>Upgrade</td><td>ActionProperty</td><td>N</td><td/><td/><td/><td/><td>UpperCase</td><td/><td>The property to set when a product in this set is found.</td></row>
		<row><td>Upgrade</td><td>Attributes</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The attributes of this product set.</td></row>
		<row><td>Upgrade</td><td>ISDisplayName</td><td>Y</td><td/><td/><td>ISUpgradeMsiItem</td><td>1</td><td/><td/><td/></row>
		<row><td>Upgrade</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>A comma-separated list of languages for either products in this set or products not in this set.</td></row>
		<row><td>Upgrade</td><td>Remove</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The list of features to remove when uninstalling a product from this set.  The default is "ALL".</td></row>
		<row><td>Upgrade</td><td>UpgradeCode</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The UpgradeCode GUID belonging to the products in this set.</td></row>
		<row><td>Upgrade</td><td>VersionMax</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Upgrade</td><td>VersionMin</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Verb</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Optional value for the command arguments.</td></row>
		<row><td>Verb</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command text.</td></row>
		<row><td>Verb</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Verb</td><td>Sequence</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Order within the verbs for a particular extension. Also used simply to specify the default verb.</td></row>
		<row><td>Verb</td><td>Verb</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The verb for the command.</td></row>
		<row><td>_Validation</td><td>Category</td><td>Y</td><td/><td/><td/><td/><td/><td>"Text";"Formatted";"Template";"Condition";"Guid";"Path";"Version";"Language";"Identifier";"Binary";"UpperCase";"LowerCase";"Filename";"Paths";"AnyPath";"WildCardFilename";"RegPath";"KeyFormatted";"CustomSource";"Property";"Cabinet";"Shortcut";"URL";"DefaultDir"</td><td>String category</td></row>
		<row><td>_Validation</td><td>Column</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of column</td></row>
		<row><td>_Validation</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of column</td></row>
		<row><td>_Validation</td><td>KeyColumn</td><td>Y</td><td>1</td><td>32</td><td/><td/><td/><td/><td>Column to which foreign key connects</td></row>
		<row><td>_Validation</td><td>KeyTable</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>For foreign key, Name of table to which data must link</td></row>
		<row><td>_Validation</td><td>MaxValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Maximum value allowed</td></row>
		<row><td>_Validation</td><td>MinValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Minimum value allowed</td></row>
		<row><td>_Validation</td><td>Nullable</td><td>N</td><td/><td/><td/><td/><td/><td>Y;N;@</td><td>Whether the column is nullable</td></row>
		<row><td>_Validation</td><td>Set</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Set of values that are permitted</td></row>
		<row><td>_Validation</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of table</td></row>
	</table>
</msi>
