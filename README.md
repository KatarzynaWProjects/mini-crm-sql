# mini-crm-sql
Projekt CRM z analizą klientów i zamówień w PostgreSQL

##  CRM Data Analysis (PostgreSQL)

Projekt SQL oparty na bazie klientów i zamówień (mini CRM), stworzony w celu ćwiczeń analizy danych i budowy portfolio.

---

###  Zawartość

Plik `crm_analysis.sql` zawiera zapytania analityczne, m.in.:
- liczbę klientów według kraju,
- klientów z anulowanymi lub błędnymi zamówieniami (np. `amount ≤ 0`),
- średnią wartość zamówień na klienta,
- klientów z więcej niż jednym zamówieniem,
- listę zrealizowanych zamówień posortowaną malejąco wg kwoty.

---

###  Technologie
- PostgreSQL
- DBeaver
- GitHub Desktop

---

###  Cel
Utrwalenie umiejętności SQL i przygotowanie projektu do portfolio analityka danych.

---

##  Rozszerzenie: Analiza agregacji

Projekt zawiera dodatkowy folder `/aggregations_orders_extended`, w którym wykonano ćwiczenia z funkcjami agregującymi i filtrami grupującymi.

W folderze znajdują się:
- plik `orders_aggregations.sql` z zapytaniami,
- zrzuty ekranu z wynikami zapytań w DBeaver (`.png`).

### Zakres analizy:
- średnie ceny produktów wg kategorii (`AVG`, `GROUP BY`),
- liczba zamówień na klienta (`COUNT`),
- największa ilość zamówionego produktu (`MAX`, `ORDER BY`),
- liczba i wartość zamówień wg statusu (`GROUP BY`, `HAVING`, `WHERE`),
- suma wartości zamówień dla statusu `delivered`.

---

 Projekt pokazuje umiejętność pracy z danymi transakcyjnymi, ich grupowania i agregacji z wykorzystaniem SQL.

---

🖋Projekt stworzony przez Katarzynę Wróblewską jako część nauki SQL i przygotowań do pracy z danymi.
