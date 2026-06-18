# Kapitel 1: Markdown Grundlagen

Dieses Kapitel widmet sich den fundamentalen Bausteinen von Markdown. Wenn du Dokumente in PyCharm verfasst, helfen dir die Live-Vorschau und die Autovervollständigung dabei, diese Elemente blitzschnell zu schreiben.

## Textformatierung

Die visuelle Betonung von Wörtern ist essenziell, um den Lesefluss zu steuern:

* **Fetter Text**: Wird mit zwei Sternchen `**text**` oder Unterstrichen `__text__` erzeugt. Beispiel: **Dieser Text ist wichtig**.
* *Kursiver Text*: Wird mit einem Sternchen `*text*` oder Unterstrich `_text_` erzeugt. Beispiel: *Dieser Text ist elegant*.
* ***Fett und Kursiv***: Kombination aus drei Sternchen `***text***`. Beispiel: ***Dieses Wort sticht sofort ins Auge***.
* ~~Durchgestrichener Text~~: Wird mit zwei Tilden `~~text~~` erzeugt. Beispiel: ~~Alte Information~~.
* `Code-Schrift (Monospace)`: Perfekt für Variablen oder kurze Befehle im Fließtext mittels Backticks `` `text` ``. Beispiel: Nutze den Befehl `git status`.

## Strukturierung durch Überschriften

Überschriften strukturieren das Dokument hierarchisch. In Markdown werden sie mit der Raute `#` definiert. 

> **Hinweis:** Verwende pro Dokument nur eine einzige `H1` (ein einzelnes `#`) als Titel. Alle weiteren Abschnitte nutzen tiefere Ebenen.

```markdown
# Überschrift Ebene 1 (Titel)
## Überschrift Ebene 2 (Hauptabschnitt)
### Überschrift Ebene 3 (Unterabschnitt)
#### Überschrift Ebene 4 (Detailbereich)