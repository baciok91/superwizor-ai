# 07_QUALITY_GUARD.md

**WERSJA:** 1.0_Superwizor
**STATUS:** DOKUMENT PROCESOWY (KONTROLA JAKOŚCI)

Zasady i checklisty wymagane do codziennego programowania i szybkich Code Reviews (AI lub manualnych) w naszym środowisku.

## 1. Globalność i Hardcoding
- ❌ **Hardcoded Kolory**: Nie używaj `Colors.red` lub `#FCAE2F`. 
- ✅ Używaj zmiennych naszego motywu Euphire wyciąganych z `Theme.of(context)`.
- ❌ **Hardcoded Kolekcje Firestore**: `FirebaseFirestore.instance.collection('users')` wpisane z palca na samym dole interfejsu.
- ✅ Każda kolekcja Firestore musi mieć swój const/stale repozytorium na warstwie `data`.

## 2. Anty-Shortcuts
- ❌ `as dynamic` lub `as any` - wymuszamy Type Safety w Dart 3.0.
- ❌ Ignorowanie błędów w try-catch (połykanie błędu). 
- ✅ Każdy catch deleguje błąd do Crashlytics / lokalnego Loggera.
- ❌ `setState` u góry gigantycznego modyfiku widgetu UI wywołujący niepotrzebne 200 re-renderów.
- ✅ Hermetyzacja stanu z wykorzystaniem odpowiedniej i docelowej biblioteki wstrzykiwania (np. Riverpod, Bloc, lokalny ValueNotifier).

## 3. Bezpieczeństwo i Backend Boundary (Flutter <-> Firebase)
- ❌ Walidacja transkryptu na froncie, a potem wysyłka czystego stringa na Firestore. 
- ✅ Frontend to tylko "głupi klient". Logika wrażliwa i walidacje PII Dzieją się w **Firebase Cloud Functions**. 
- ❌ Kopiowanie wrażliwych danych użytkownika w klaster publiczny.
- ✅ Firestore Security Rules! Każde nowe Query z Fluttera **Musi posiadać** limit (`.limit()`). Czekanie na OOM appki u klienta to zbrodnia kliniczna.

## 4. Wzorce MedTech
- Pamiętaj! Jesteś w systemie MedTech. Ustawiaj logikę w `Cloud Functions`, aby w razie błędu u pacjenta zmienić wersję diagnozy bez wysyłania łatki do AppStore lub Google Play!
