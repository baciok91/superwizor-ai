# 08_DESIGN_CHECKER.md

**WERSJA:** 1.0_Superwizor
**STATUS:** DOKUMENT PROCESOWY (AUDYT DESIGN SYSTEMU)

Ten dokument jest egzekutorem pliku `05_UI_UX_DESIGN_SYSTEM.md`. Podczas implementacji i code review upewnij się, że zachowano rygory wizualne EUPHIRE.

## Elementarz UI do kontroli:
Weryfikacja nowo powstającego drzewa Widgetów we Flutterze:

### 1. Paleta Kolorów / Motyw
- ❌ `Colors.white`, `Color(0xFF141D2B)`.
- ✅ Odwołania do schematu, powiązane z `Evergreen`, `Ember`, `Frost White`.
- ✅ Tryb Ciemny (Dark Mode First): Tło aplikacji pozostaje Ciemne `Evergreen`, z jaśniejszymi elementami u góry (Containers, Cards).

### 2. Typografia i Fonty
- ❌ `TextStyle(fontFamily: 'Arial')`.
- ✅ Użycie paczki `google_fonts` i spiętego `GoogleFonts.montserrat()` dla nagłówków.
- ✅ `GoogleFonts.merriweather()` dla długich ciał tekstu (np. Raporty sztucznej inteligencji).
- ❌ Mały, nieczytelny tekst poniżej 12sp. Dla lekarzy używamy dostępności!

### 3. Zaokrąglenia i Elevation (Pudełka)
- ✅ `BorderRadius.circular(8)` dla małych kart.
- ✅ `BorderRadius.circular(12)` do standardowych pojemników głównych.
- ✅ Przezroczyste Glass efekty przy Bottom Sheets (`BackdropFilter`).
- ❌ Kwadratowe `border-radius: 0`, sztywne cienie rzucające się w oczy bez rozmycia.

### 4. Zakaz the Standardowych AlertBoxów
- ❌ Material `AlertDialog` (wygląda systemowo, budzi strach przed błędem systemowym).
- ✅ Przyjazny, obły `EuphirePopup` lub szuflada z dołu ekranu `EuphireBottomSheet`.

### 5. Interakcje (Hover i Click)
- Oczekujemy 300ms Duration mikroskopijnych animacji dla wciśnięć buttonów zamiast pustej błyskawicznej zmiany (InkWell lub AnimatedContainer).
