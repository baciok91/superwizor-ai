# Kronikarz — Przewodnik dokumentacji

Ten plik zawiera rozszerzone wytyczne do generowania wpisu. Załaduj go gdy potrzebujesz głębszej perspektywy.

## Perspektywa Kronikarza

Kronikarz jest **dokumentalistą**, nie recenzentem kodu. Code review robią `/quality-guard` i `/critical-code-review`.

Kronikarz zadaje sobie pytania:

- "Gdyby za miesiąc inny agent AI miał modyfikować ten moduł — czy miałby wszystko czego potrzebuje?"
- "Czy developer czytający ten kod po raz pierwszy zrozumie dlaczego podjęto takie decyzje?"
- "Czy znane problemy z review zostały uwzględnione w dokumentacji?"

## Współpraca z review skillami

Kronikarz czerpie findings z `doc/code-reviews/`:
- `doc/code-reviews/YYYY-MM-DD-<branch>.md` — raporty z `/critical-code-review`
- `doc/code-reviews/quality-guard-log.md` — log z `/quality-guard`

Jeśli raportów nie ma — odnotuj to w sekcji "Znane problemy": "Brak review na tym branchu."

Nierozwiązane problemy z review trafiają do:
1. Sekcji "Znane problemy i trade-offy" w kronice
2. `doc/backlog.md` jako nowe wpisy tech debt

## Decyzje architektoniczne — na co zwracać uwagę

Dokumentuj **decyzje**, nie problemy (problemy są w review). Zwróć uwagę na:
- Dlaczego wybrano dane podejście (np. Canvas zamiast DOM, edge functions zamiast API routes)
- Jakie alternatywy rozważano
- Co to oznacza dla przyszłego rozwoju
- Nowe wzorce wprowadzone na tym branchu (warte powielenia)

## Brakujące pytania — typowe sytuacje

Agent implementujący często pomija pytania o:
- **UX/Design**: "Jak powinno to wyglądać na mobile?", "Jaki jest expected behavior przy braku danych?"
- **Edge cases**: "Co się dzieje gdy user traci połączenie?", "Co jeśli lista jest pusta?"
- **Biznes**: "Czy to ma być dostępne dla wszystkich planów?", "Jaki jest expected flow dla nowego użytkownika?"
- **Integracje**: "Czy ten webhook ma retry logic?", "Co jeśli external API jest niedostępne?"

## Checklist kontekstu — przed generowaniem wpisu

Upewnij się że masz:

- [ ] `git log main..HEAD --oneline` — lista commitów
- [ ] `git diff main...HEAD --name-status` — lista plików (A/M/D/R)
- [ ] `git diff main...HEAD --stat` — statystyki zmian
- [ ] `git status` + `git diff` — niezacommitowane zmiany
- [ ] `git diff main...HEAD -- package.json` — nowe zależności
- [ ] Przeczytany kod kluczowych plików (max 8 w pełni, reszta z diffa)
- [ ] Przeczytane ostatnie wpisy w `doc/history/` (max 3 + nagłówki)
- [ ] Przeczytane raporty z `doc/code-reviews/` dla tego brancha
- [ ] Sprawdzony plan implementacji (`.claude/plans/`) jeśli istnieje

## Typowe pułapki

- **Nie polegaj na samym diffie** — diff pokazuje co się zmieniło, ale nie jak to działa w kontekście
- **Nie pomijaj niezacommitowanych zmian** — `git status` może ujawnić dodatkowe zmiany
- **Nie kopiuj kodu do dokumentacji** — opisuj sygnatury, flow, decyzje
- **Nie duplikuj review** — kronikarz nie szuka bugów, tylko dokumentuje znane problemy z doc/code-reviews/
- **Nie zapominaj o poprzednich wpisach** — narastające problemy powinny być trackowane z fazy na fazę
- **Sprawdzaj czy faza rozwiązała coś z backlogu** — wcześniejsze wpisy mogą mieć otwarte issues które ta faza naprawia
