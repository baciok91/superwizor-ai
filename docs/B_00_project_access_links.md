# Dostęp do Projektu: Superwizor AI

Wszystkie kluczowe konta oraz infrastruktura opierają się na dedykowanym adresie e-mail:
**E-mail głównego konta (Admin):** `superwizorai@gmail.com`

---

## 1. Kod Źródłowy (GitHub)
- **Repozytorium:** [baciok91/superwizor-ai](https://github.com/baciok91/superwizor-ai)
- **Gałąź główna (produkcyjna):** `main`
- **Jak nadać dostęp dla `superwizorai@gmail.com`:**
  1. Zaloguj się na konto `baciok91` i wejdź na [stronę Collaborators](https://github.com/baciok91/superwizor-ai/settings/access).
  2. Kliknij zielony przycisk **Add people**.
  3. Wpisz e-mail `superwizorai@gmail.com` i wyślij zaproszenie z uprawnieniami (najlepiej najwyższymi).

---

## 2. Baza Danych, Backend i Hosting (Firebase / Google Cloud)
- **Konsola Firebase:** [Przejdź do panelu projektu](https://console.firebase.google.com/project/superwizor-app-core/overview)
- **Nazwa Projektu:** Superwizor AI
- **Project ID:** `superwizor-app-core`
- **Podpięte platformy (zarejestrowane aplikacje):**
  - Android (`1:895484488067:android:...`)
  - iOS (`1:895484488067:ios:...`)
  - Web (`1:895484488067:web:...`)
  - Windows (`1:895484488067:web:...`)
- **Status:** **ZWALIDOWANY ✅**. Projekt jest poprawnie stworzony, środowisko lokalne (terminal) jest prawidłowo zalogowane na `superwizorai@gmail.com` i podłączone do bazy.

---

## 3. Płatności i Subskrypcje (Stripe)
- **Panel Stripe:** [Przejdź do Dashboardu (Developers -> API keys)](https://dashboard.stripe.com/test/apikeys)
- **Logowanie:** Główne konto EUPHIRE, ale działa na dedykowanym i wydzielonym Sub-koncie o nazwie "Superwizor AI".
- **Account ID:** `acct_1TREGgE5jzWcAIge`
- **Klucze API (Test mode):**
  - **Publishable key** (do frontendu): *...do uzupełnienia...*
  - **Secret key** (do backendu): *...do uzupełnienia...*
- **Status:** **ZWALIDOWANY ✅**. Terminal i agent AI są poprawnie podłączone przez Stripe CLI i zintegrowane oficjalnymi "skillami" zespołu Stripe.
