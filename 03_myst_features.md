
# Kapitel 3: Exklusive MyST & Jupyter Book Features

Jetzt verlassen wir das klassische Markdown und schauen uns die Directives (Anweisungen) an, die dein Buch professionell und interaktiv machen. In Jupyter Book 2/MyST werden diese oft über die Syntax `:::{directive} ... :::` gesteuert.

## Infoboxen (Admonitions)

Infoboxen lenken die Aufmerksamkeit des Lesers auf wichtige Details, Warnungen oder Tipps. Es gibt verschiedene Typen:

:::{note}
**Dies ist eine Notiz.** Sie eignet sich hervorragend für Hintergrundinformationen, die den aktuellen Lesefluss nicht stören, aber dennoch nützlich sind.
:::

:::{tip}
**Profitiere von PyCharm!** Nutze die Tastenkombination `Strg + Leerzeichen` (oder `Cmd + Leerzeichen` auf dem Mac), um Autovervollständigungen für MyST-Befehle direkt in PyCharm aufzurufen.
:::

:::{warning}
**Achtung vor Syntaxfehlern!** Achte darauf, dass die Anzahl der Doppelpunkte am Anfang (`:::`) genau mit der Anzahl am Ende übereinstimmt. Andernfalls kann Jupyter Book die Seite nicht fehlerfrei bauen.
:::

:::{danger}
**Kritischer Fehler.** Verwende dieses Element nur, wenn Datenverlust droht oder fundamentale Fehler im System vorliegen.
:::

## Tab-Strukturen (Inhalte umschalten)

Wenn du Code für verschiedene Betriebssysteme oder Programmiersprachen zeigen willst, sind Tabs die beste Wahl.

::::{tab-set}

:::{tab-item} Windows
```powershell
# Befehl für Windows PowerShell
jupyter-book build .

[next ->](04_code_interactivity.md)