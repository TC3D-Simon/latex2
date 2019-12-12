# THD LaTeX Vorlagen

In diesem Repository befinden sich diverse LaTeX Vorlagen zur freien Verwendung
für Kollegen an der THD. Konstruktive Kritik und Beiträge sind gerne willkommen.

## Briefvorlage

Dieses Verzeichnis enthält eine Briefvorlage. Für die eigene Verwendung müssen die Einträge
in `Stammdaten.lco` einmalig angepasst werden. Für das Aufsetzen eines neuen Briefes bietet
es sich dann an, eine Kopie des Verzeichnisses zu erstellen und `brief.tex` entsprechend
anzupassen. Wird das Projekt anschließend mit `make` kompiliert, dann erhält das Ausgabe-PDF
denselben Namen wie das Projektverzeichnis.

# Studienarbeiten

Dieses Verzeichnis enthält die Vorlage für eine Studienarbeit in LaTeX. Der Student
muss in `thesis.tex` die Rahmendaten anpassen. Die eigentliche Arbeit kann in `main.tex`
oder (bei Bedarf) in weiteren `.tex`-Dateien erstellt werden. Die Arbeit kann mittels
`make` kompiliert werden.

## Beamer_Slides

In diesem Verzeichnis befindet sich eine Vorlage für LaTeX Beamer
Präsentationen. Die Präsentation kann in `presentation.tex` bearbeitet werden.
Auch hier kann das Projekt mit `make` erstellt werden und das resultierende PDF
erhält den Verzeichnisnamen.

---
[Andreas Fischer](mailto:andreas.fischer@th-deg.de "Mail an Andreas Fischer")

