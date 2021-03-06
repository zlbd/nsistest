; example.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example.nsi
; there. 

;--------------------------------

; The name of the installer
Name "Example"

; The file to write
OutFile "example.exe"

; The default installation directory
InstallDir $DESKTOP\Example

; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------

; Pages

Page directory
Page instfiles

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

    ; Set output path to the installation directory.
    SetOutPath $INSTDIR

    ; Put file there
    File example.nsi
    File README.md

    ; Do some test
    DetailPrint "hello world"
    MessageBox MB_YESNO "This will install My Program. Do you wish to continue?" IDYES FLAG_YES
        Abort
    FLAG_YES:
        MessageBox MB_OK 'Tomorrow is anther day'
  
SectionEnd ; end the section
