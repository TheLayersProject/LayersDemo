; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Layers Demo"
#define MyAppVersion "0.16.0"
#define MyAppPublisher "The Layers Project"
#define MyAppURL "https://github.com/TheLayersProject/Layers"
#define MyAppExeName "LayersDemo.exe"

; #define Layers GetEnv('Layers')
#define Redistributables GetEnv('Redistributables')

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{f97aae7f-2076-4918-93ce-19321584f675}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=LICENSE
;LicenseFile=ExpandConstant('{%Layers}')\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=x64\Release
OutputBaseFilename=LayersDemo-{#MyAppVersion}-setup
SetupIconFile=LayersDemo\layers_2d.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "x64\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\Layers.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\QLayers.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\Qt6Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\Qt6Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\Qt6Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\Qt6Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\Qt6Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "x64\Release\generic\*"; DestDir: "{app}\generic"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\iconengines\*"; DestDir: "{app}\iconengines"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\networkinformation\*"; DestDir: "{app}\networkinformation"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\styles\*"; DestDir: "{app}\styles"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\themes\*"; DestDir: "{app}\themes"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\tls\*"; DestDir: "{app}\tls"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "x64\Release\translations\*"; DestDir: "{app}\translations"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#Redistributables}\vcredist_x64.exe"; DestDir: {tmp}; Flags: deleteafterinstall
Source: "{#Redistributables}\VC_redist.x64.exe"; DestDir: {tmp}; Flags: deleteafterinstall
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall

Filename: {tmp}\vcredist_x64.exe; \
    Parameters: "/q"; \
    StatusMsg: "Installing Microsoft Visual C++ 2010 Redistributable..."

Filename: {tmp}\VC_redist.x64.exe; \
    Parameters: "/q"; \
    StatusMsg: "Installing Microsoft Visual C++ 2015-2022 Redistributable..."