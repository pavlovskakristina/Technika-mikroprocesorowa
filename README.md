# 🔬 Technika Mikroprocesorowa --- Politechnika Wrocławska
 
Repozytorium zawiera rozwiązania zadań laboratoryjnych z przedmiotu **Technika Mikroprocesorowa** realizowanego na Politechnice Wrocławskiej.
 
---
 
## 🛠️ Środowisko i narzędzia
 
| Narzędzie | Opis |
|-----------|------|
| Mikrokontroler | STM8S208R |
| Kompilator | SDCC (Small Device C Compiler) |
| Programator | ST-Link v2.1 |
| Flashowanie | stm8flash |
 
---
 
## 📁 Struktura repozytorium
 
```
📦 technika-mikroprocesorowa
 ┣ 📂 lab1
 ┃ ┗ 📂 zad1
 ┃   ┣ 📄 main.c
 ┃   ┗ 📄 STM8S208R.h
 ┣ 📂 lab2
 ┃ ┣ 📂 zad1
 ┃ ┣ 📂 zad2
 ┃ ┗ 📂 zad3
 ┗ ...
```
 
---
 
## ⚡ Kompilacja i wgrywanie
 
> ⚠️ **Uwaga:** Wszystkie zadania były pisane i testowane na **macOS**. Na systemie **Windows** kroki mogą się różnić – inne ścieżki do narzędzi, brak komendy `sudo`, możliwa inna nazwa portu ST-Link oraz instalacja SDCC i stm8flash przez inne metody niż Homebrew.
 
### Kompilacja
```bash
sdcc -mstm8 main.c
```
 
### Wgrywanie na mikrokontroler
```bash
sudo stm8flash -c stlinkv21 -p stm8s208rb -w main.ihx
```
 
---

## 🔌 Schemat pinów STM8S208R
 
| Sygnał | Port | Pin |
|--------|------|-----|
| S1 (przycisk) | PB | 4 |
| S2 (przycisk) | PB | 3 |
| S3 (przycisk) | PB | 2 |
| D1 (dioda) | PC | 5 |
| D2 (dioda) | PC | 7 |
| D3 (dioda) | PC | 6 |
| D4 (dioda) | PE | 5 |
 
---
 
## 👩‍💻 Autor
 
Wszystkie zadania zostały samodzielnie wykonane przeze mnie w ramach zajęć laboratoryjnych.
 
Studia inżynierskie - Politechnika Wrocławska
