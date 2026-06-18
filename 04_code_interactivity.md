# Kapitel 4: Ausführbarer Code und Interaktivität

Das absolute Highlight von Jupyter Book 2 ist die Fähigkeit, echten Programmcode nicht nur statisch anzuzeigen, sondern ihn beim Generieren des Buches live auszuführen und die Ergebnisse (Tabellen, Grafiken, Logs) direkt einzubetten.

## Ausführbare Code-Zellen

Um eine Zelle als ausführbar zu kennzeichnen, fügen wir in MyST das Tag `{code-cell}` hinzu. Hier ist ein Python-Beispiel, das Daten generiert und berechnet.

```{code-cell} ipython3
import numpy as np
import pandas as pd

# Daten erzeugen
daten = {
    'A': [1, 2, 3, 4, 5],
    'B': [10, 20, 30, 40, 50],
    'C': [100, 200, 300, 400, 500]
}

# DataFrame erstellen
df = pd.DataFrame(daten)
df['Gesamt'] = df['A'] + df['B'] + df['C']
df

```


import matplotlib.pyplot as plt

# X- und Y-Werte berechnen
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Plot erstellen
plt.figure(figsize=(8, 4))
plt.plot(x, y, label='Sinuswelle', color='dodgerblue', linewidth=2)
plt.title('Interaktives Plot-Beispiel in Jupyter Book 2')
plt.xlabel('X-Achse (Zeit)')
plt.ylabel('Y-Achse (Amplitude)')
plt.grid(True)
plt.legend()
plt.show()

:tags: ["hide-input"]

print("Dieser Code-Text war im Buch standardmäßig versteckt, aber die Ausgabe siehst du sofort!")