; V1.0, 21.04.2020, by Thorsten Willert
; https://github.com/THWillert/__PlanMaker_SafePDF

; A simple hack for the PDF-export.

; For other languages then german you have to change the
; parameters $sPDFExportTitle and $sSaveTitle

; Works only with an opened and saved Workbook

; !!! Doesn't work with Ribbons, only with menus !!!

__PlanMaker_SafePDF("test.pmdx", "Test.pdf")

Func __PlanMaker_SafePDF($sTitle, $sFile, $sPDFExportTitle = "PDF-Export", $sSaveTitle = "Speichern unter bestätigen")
    BlockInput(True)

    Local $iOpt = Opt("WinTitleMatchMode")
    Opt("WinTitleMatchMode", -1)

    ; PlanMaker
    Local $hHnd = WinWait( $sTitle & " - PlanMaker","",3)
    WinActivate($hHnd)

    If $hHnd <> 0 Then
        Send("!D") ; Menü aufrufen
        Send("{DOWN 15}") ; Speichern als PDF
        Send("{ENTER}")

        $hHnd = WinWait("[TITLE:" & $sPDFExportTitle & "; CLASS:SMDIALOG]", "", 2) ; PDF-Export dialog
        If $hHnd <> 0 Then
            Send("{ENTER}") ; export bestätigen

            $hHnd = WinWait($sPDFExportTitle, "", 2) ; Datei-Dialog
            If $hHnd <> 0 Then
                Send($sFile) ; Dateinamen senden
                ControlClick($sPDFExportTitle, "", 1) ; bestätigen
            EndIf

            $hHnd = WinWait("[TITLE:PlanMaker]", "", 2) ; überschreiben
            If @error = 0 Then
                Send("{ENTER}") ; und bestätigen
            EndIf
        EndIf
    Else
    	MsgBox(0,"Error", "PlanMaker window not found!")
    EndIf

    Opt("WinTitleMatchMode", $iOpt)
    BlockInput(False)
EndFunc   ;==>__PlanMaker_SafePDF
