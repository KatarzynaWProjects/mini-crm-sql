
# mini-crm-sql
Projekt CRM z analizą klientów i zamówień w PostgreSQL

## CRM Data Analysis (PostgreSQL)

Projekt SQL oparty na bazie klientów i zamówień (mini CRM), stworzony w celu ćwiczeń analizy danych i budowy portfolio.

### Zawartość
Plik 'crm_analysis.sql' zawiera zapytania analityczne, m.in.:
- liczbę klientów według kraju,
- klientów z anulowanymi lub błędnymi zamówieniami (np. amount ≤ 0),
- średnią wartość zamówień na klienta,
- klientów z więcej niż jednym zamówieniem,
- listę zrealizowanych zamówień posortowaną malejąco wg kwoty.

#### Technologie
- PostgreSQL
- DBEaver
- GitHub Desktop

##### Cel
Utrwalenie umiejętności SQL i przygotowanie projektu do portfolio analityka danych.

---

-- Projekt stworzony przez Katarzynę Wróblewską jako część nauki SQL i przygotowań do pracy z danymi.

### ➕ Nowa część: analiza agregacji

Dodatkowo projekt zawiera folder `/aggregations_orders_extended` z ćwiczeniami analitycznymi na rozszerzonej tabeli zamówień.

Znajdują się tam zapytania z wykorzystaniem funkcji agregujących (`AVG`, `COUNT`, `SUM`, `MAX`) oraz filtrów `GROUP BY`, `HAVING`, `WHERE`. 
Zastosowano m.in.:
- analizę średnich cen wg kategorii,
- zliczenie zamówień wg klientów i statusów,
- sumę przychodów z realizacji,
- porównanie ilości i wartości dostarczonych zamówień.

Dołączono zrzuty wyników i kod SQL.

---

✅ Projekt pokazuje umiejętność pracy z danymi transakcyjnymi w SQL, ich analizy i interpretacji.
