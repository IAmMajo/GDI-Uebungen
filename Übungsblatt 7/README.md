Wir verwenden für alle Aufgaben den Assembler-Simulator von Marco Schweighauser.
Im Poolraum ist der Simulator auch als Offlineversion installiert.

http://schweigi.github.io/assembler-simulator/

Beachten Sie, dass mehrere Aufgaben nur Modifikationen anderer Aufgaben sind.
Sie können Ihre jeweilige Lösung also kopieren und modifizieren. Es ist
insgesamt weniger Arbeitsaufwand als es auf den ersten Blick wirkt.

## Beispielaufgabe

Erstellen Sie ein Assemblerprogramm, das die Zeichen von A bis X über eine
Schleife ausgibt.

## Lösung der Beispielaufgabe

```assembly
MOV C, 65 ; ASCII A
MOV D, 232 ; Point to output
.loop:
MOV [D], C ; Write to output
INC C
INC D
CMP C, 88 ; until ASCII X
JBE .loop ; conditional jump ( <= )
HLT
```

## Aufgabe 1
Erstellen Sie ein Assemblerprogramm, das ohne Implementierung einer Schleife 10
As auf der Konsole (Output) ausgibt. (Gemeint ist eine Zeichenkette bestehend
aus 10 identischen ASCII-Zeichen).

## Aufgabe 2
Erstellen Sie ein Assemblerprogramm, das mit (!) Implementierung einer
Zählschleife 20 As auf der Konsole (Output) ausgibt.

## Aufgabe 3
Erstellen Sie ein Assemblerprogramm, das die Ziffern von 0 bis 9 über eine
Schleife ausgibt.

## Aufgabe 4
Eine Zahl *n* sei in Register *C* vorgegeben. Bestimmen sie die Summer der
Zahlen von 1 bis *n*. Sie dürfen voraussetzen das *n* so klein ist, dass keine
Überläufe auftreten. Geben Sie das Resultat in Register *A* zurück. Sie dürfen
sowohl den kleinen Satz von Gauß verwenden als auch über eine Schleife
aufsummieren.

## Aufgabe 5
Erstellen Sie ein Assemblerprogramm, das eine Zahl als Byte vorfindet
(DB-Anweisung verwenden, um eine Eingabe vorzugeben) und diese Zahl dezimal
ausgibt.

Ansatz: mehrfach durch 10 teilen und Rest ausgeben, Vereinfachung: rechtsbündig
ab Displayadresse 234 ausgeben.

## Aufgabe 6
Erstellen Sie ein Assemblerprogramm, das ein Bitmuster als Byte vorfindet
(DB-Anweisung verwenden, um eine Eingabe vorzugeben) und die Anzahl der Einsbits
ausgibt.

Ansatz: Shiften, um Bits „rausfallen“ und zählen zu lassen.

## Aufgabe 7
Eine Zahl *n* sei in Register *C* und eine Zahl *m* in Register *D* vorgegeben.
Bestimmen Sie die *n*-te Potenz von *m* also die Zahl $m^n$. Sie dürfen
voraussetzen, dass *n* so klein ist, dass keine Überläufe auftreten. Geben Sie
das Resultat in Register *A* zurück.

## Aufgabe 8
Erstellen Sie ein Assemblerprogramm, das ein Byte vorfindet (DB-Anweisung
verwenden) und es als Folge von 8 Bits von links nach rechts ausgibt.

## Aufgabe 9

Optional (für Profis):

Erstellen Sie ein Assemblerprogramm, das ein Bitmuster als Byte vorfindet
(DB-Anweisung verwenden) und eine Bit-Spiegelung (Bit 0 wird zum Bit 7, Bit 1
wird zum Bit 6, ...) vornimmt. Das Ergebnis soll dann an die Stelle, wo es
gelesen wurde, zurückgeschrieben werden.

Ansatz: Lesemaske mit Einzeleinsbit links wird AND-verknüpft und
rechtsgeshiftet, Schleife bis Bit rechts „rausfällt“ und damit Maske == 0 gilt.
Gleichzeitig: Schreibmaske mit Einzelbit rechts wird innerhalb der Schleife
linksgeshifted: Bit-Schreiben mit OR-Verknüpfung. (Für 1 Byte ist der Ansatz
leichter Overkill, aber Sie sollten das Maskenprinzip erlernen.)
