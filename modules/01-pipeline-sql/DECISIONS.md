# Decyzje — moduł 01

Plik customers.csv:
1) Zduplikowani customer_ids, np C005
2) W kolumnie country występują nazwy czasami jako symbole państw, czasami jako pełna nazwa, czasami duże a czasami małe litery, spacje, brak spójności.
3) W kolumnie segment, brakuje segmentu w części wierszy, czasami sefmęt zaczyna się od dużej litery, czasem od dużej.

Plik invoices.csv:
1) Duplikaty faktur
2) Różne formaty w kolumnie invoice_date
3) Brak informacji o customer_id np dla INV-00094

Plik products.csv:
1) Niestandardowy znak w program_name dla produktu P06
2) Category zaczyna się z małej litery dla P06
3) Format ceny - albo jako string, lub brakuje.
4) Category czasami po polsku czasami po angielsku


