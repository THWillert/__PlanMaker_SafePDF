# __PlanMaker_SafePDF

Eine [AutoIt](https://www.autoitscript.com/site/autoit/)-Funktion für die Tabellenkalkulation [PlanMaker](https://www.softmaker.de/softmaker-office-planmaker) der Firma [SoftMaker](https://www.softmaker.de/softmaker-office), zum Speichern des aktuellen Dokuments als PDF.

Die API von PlanMaker beinhaltet diese Funktion leider nicht, deshalb arbeitet diese Funktion mit Erkennung von Dialogen und einer Tastatur-Simulation.

:warning: Alle Parameter für den PDF-Export müssen vor dem Export per Hand eigestellt werden.

## Übersicht

Parameter:
```autoit
__PlanMaker_SafePDF($sTitle, $sFile, $sPDFExportTitle = "PDF-Export", $sSaveTitle = "Speichern unter bestätigen")
```

Beispiel:
```autoit
__PlanMaker_SafePDF("test.pmdx", "Test.pdf")
```
Speichert die Datei` text.pmdx` im gleichen Verzeichnis als PDF `Test.pdf`.


Die letzten beiden Parameter sind für die Dialogerkennung in anderen Sprachen als Deutsch.


## Voraussetzungen

Kompatibel mit SoftMaker Office 2018 und FreeOffice 2018.


## Installation

In das Include Verzeichnis von AutoIt kopieren und als UDF einbinden, oder die Funktion in das eigene Programm kopieren.

## Weiterführende Informationen

[Handbuch für BasicMaker 2018](http://www.softmaker.net/down/bm2018manual_de.pdf) (de)

[Manual for BasicMaker 2018](http://www.softmaker.net/down/bm2018manual_en.pdf) (en)

## Diskusion und Vorschläge

[SoftMaker-Forum](https://forum.softmaker.de/viewtopic.php?f=276&t=25608#p123093)
                                            
[AutoIt.de](https://autoit.de/thread/85113-planmaker-udf-tabellenkalkulation-von-softmaker-office-und-freeoffice/)


## ToDo
- [ ] Funktionalität auch für Ribbons


## Author
Thorsten Willert

[Homepage](http://www.thorsten-willert.de/)

## Lizenz
Das ganze steht unter der [Apache 2.0](https://github.com/THWillert//__PlanMaker_SafePDF/blob/master/LICENSE) Lizenz
.
