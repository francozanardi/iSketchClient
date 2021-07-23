; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "iSketchClient"
#define MyAppVersion "2.0"
#define MyAppPublisher "Franco Zanardi"
#define MyAppURL "http://www.isketch.net"
#define MyAppExeName "iSketchClient.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A3D0DFE0-31A7-4C62-9C6A-706E57A1EEAD}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=iSketchClient
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Files]
Source: "C:\Users\Franco\Documents\Proyectos\Isketch\iSketch Client\bin\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Franco\Documents\Proyectos\Isketch\iSketch Client\bin\fondo_original.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Franco\Documents\Proyectos\Isketch\iSketch Client\bin\isketch.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Franco\Documents\Proyectos\Isketch\iSketch Client\bin\sw_lic_full_installer.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCR; Subkey: "isketchclient"; ValueType: string; ValueData: "URL:iSketchClient"; Flags: uninsdeletekey
Root: HKCR; Subkey: "isketchclient"; ValueType: string; ValueName: "URL Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "isketchclient\shell"; Flags: uninsdeletekey
Root: HKCR; Subkey: "isketchclient\shell\open"; Flags: uninsdeletekey
Root: HKCR; Subkey: "isketchclient\shell\open\command"; ValueType: string; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey

[Run]
Filename: "{app}\sw_lic_full_installer.exe"

[Code]
procedure CurPageChanged(CurPageID: Integer);
var
  RichViewer: TRichEditViewer;
begin
  RichViewer := TRichEditViewer.Create(WizardForm);
  RichViewer.Left := WizardForm.FinishedLabel.Left;
  RichViewer.Top := WizardForm.FinishedLabel.Top;
  RichViewer.Width := WizardForm.FinishedLabel.Width;
  RichViewer.Height := WizardForm.FinishedLabel.Height;
  RichViewer.Parent := WizardForm.FinishedLabel.Parent;
  RichViewer.BorderStyle := bsNone;
  RichViewer.TabStop := False;
  RichViewer.ReadOnly := True;
  WizardForm.FinishedLabel.Visible := False;
   
  RichViewer.RTFText :=
    '{\rtf1 The installation was successful. Go to ' +
    '{\b {\field{\*\fldinst{HYPERLINK "https://isketchclient.web.app" }}' + 
    '{\fldrslt{https://isketchclient.web.app}}}} ' +
    'and enjoy iSketch.}';
end;