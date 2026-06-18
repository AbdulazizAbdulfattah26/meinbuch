# Kapitel 2: Fortgeschrittene Formatierung & Wissenschaft

Jupyter Book 2 baut auf MyST-MD auf. Das bedeutet, dass wir Zugang zu mächtigen mathematischen Werkzeugen und erweiterten Strukturierungsmitteln haben, die im Standard-Markdown fehlen.

## Mathematische Formeln (LaTeX-Support)

Für wissenschaftliche Arbeiten unterstützt MyST LaTeX-Befehle nativ. Das Rendern übernimmt das integrierte MathJax.

### Inline-Mathematik
Wenn du mathematische Symbole direkt im Text erwähnen willst, umschließe sie mit einfachen Dollarzeichen `$`. 
Beispiel: Die berühmte Äquivalenz von Masse und Energie ist definiert als $E = mc^2$. Ebenso können wir Brüche wie $\frac{1}{2}$ oder griechische Buchstaben wie $\alpha, \beta, \gamma$ einbetten.

### Block-Mathematik
Für freistehende, komplexe Gleichungen nutzt man doppelte Dollarzeichen `$$`. Diese werden zentriert und groß dargestellt:

$$
\int_{a}^{b} x^2 \,dx = \left[ \frac{x^3}{3} \right]_{a}^{b} = \frac{b^3}{3} - \frac{a^3}{3}
$$

Ein weiteres Beispiel aus der Statistik für die Normalverteilung:

$$
f(x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}
$$

## Quellcode-Blöcke (Syntax Highlighting)

Um Code-Beispiele anzuzeigen (ohne sie auszuführen), nutzt man "Fenced Code Blocks" mit drei Backticks und dem Namen der Programmiersprache. PyCharm highlightet dies auch direkt in deiner Markdown-Vorschau.

```python
def begruessung(name):
    """Eine einfache Funktion zur Begrüßung."""
    print(f"Hallo {name}, willkommen in der Jupyter Book Welt!")

# Funktionsaufruf
begruessung("Entwickler")
```
```json
{
  "projekt_name": "Mein Jupyter Book 2",
  "version": "2.0.0",
  "status": "Aktiv"
}
```