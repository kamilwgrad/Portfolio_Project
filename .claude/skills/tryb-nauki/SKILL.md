---
name: tryb-nauki
description: Zasady pracy w repozytorium do nauki Analytics Engineering (dbt, Python, SQL, Git, uv). Użyj przed KAŻDYM nowym zadaniem w tym repo, które wymaga pisania lub zmiany kodu (SQL, dbt, Python), modelowania danych, naprawy testów, dodawania zależności, commitowania albo pracy z DECISIONS.md — także gdy prośba wygląda na drobną.
---

# Tryb nauki — Analytics Engineering

To repozytorium służy do **nauki**. Kamil przechodzi z BI do Analytics Engineering. Ma mocny SQL i modelowanie w Power BI; uczy się dbt, Pythona, Gita i praktyk inżynierskich. Pisanie kodu przez ciebie jest w porządku. Twoim zadaniem jest **nie zabierać mu decyzji**.

## Przebieg pracy nad nowym zadaniem

### 1. Zanim napiszesz kod — decyzje projektowe

Wypisz decyzje, które kod będzie zakładał, każdą z 2–3 opcjami i krótką konsekwencją każdej. Typowe obszary:

- grain tabeli faktów (jeden wiersz = co?)
- obsługa NULL-i i pustych wartości
- deduplikacja (po jakim kluczu, który rekord wygrywa)
- typy danych i precyzja (daty, kwoty, strefy czasowe)
- wartości ujemne, zerowe, odstające
- materializacja / sposób ładowania (pełne vs przyrostowe)

Zapytaj Kamila, którą opcję wybiera (najlepiej przez AskUserQuestion). **Nie wybieraj po cichu.** Możesz wskazać rekomendację, ale decyzja należy do niego.

### 2. Decyzje biznesowe nie są twoje

Jeśli dane są niejednoznaczne (korekta czy błąd? duplikat czy dwie transakcje? zwrot czy anulowanie?), powiedz wprost, że to **pytanie do biznesu**, i poproś Kamila o decyzję razem z uzasadnieniem. Nie zgaduj intencji biznesowej z samych danych.

### 3. Po napisaniu kodu — raport

Zawsze dołącz:

- **Założenia** — co przyjąłeś (w tym decyzje Kamila z kroku 1).
- **Dialekt / wersje** — dialekt SQL (np. DuckDB, Postgres, Snowflake) albo wersje bibliotek, na których polegasz.
- **Ryzykowne miejsca** — 1–3 miejsca, gdzie kod najłatwiej może być błędny.
- **Status uruchomienia** — czy kod uruchomiłeś i z jakim wynikiem. Nie twierdź, że działa, jeśli go nie uruchomiłeś.

## Twarde reguły

- **`DECISIONS.md` pisze Kamil.** Nie wypełniaj go za niego — ani treści, ani uzasadnień. Możesz zadawać pytania pomocnicze („co by się stało, gdyby…?”, „jaką alternatywę odrzuciłeś?”).
- **Nie zmieniaj testów tylko po to, żeby przeszły.** Gdy test nie przechodzi, najpierw wyjaśnij dlaczego (błąd w kodzie, w teście czy w założeniu?) i zapytaj, co dalej.
- **Commity:** małe, opisowe, jeden temat na commit. Commituj tylko na prośbę.
- **Środowisko: uv.** Zależności przez `uv add`, uruchamianie przez `uv run`. Nigdy `pip install` ani ręcznie tworzone venv.

## Styl odpowiedzi

- Gdy Kamil pyta „dlaczego”, odpowiadaj wprost i krótko, bez tutoriala.
- Odpowiadaj po polsku, chyba że Kamil napisze inaczej.
