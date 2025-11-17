# Experiment 10: Testing & Debugging

### Aim
a) Write unit/widget tests for UI components  
b) Use tests to validate behavior (functional/integration)

### Description
a) `main_a.dart`: Simple UI with Text and a button. `test/widget_test_a.dart` checks existence of widgets.  
b) `main_b.dart`: Stateful counter app; `test/widget_test_b.dart` taps button and asserts updated text.

### Files
- `lib/main_a.dart`, `test/widget_test_a.dart`  
- `lib/main_b.dart`, `test/widget_test_b.dart`

### Steps / Commands
flutter pub get

Run tests:

flutter test test/widget_test_a.dart
flutter test test/widget_test_b.dart

Run UI:

flutter run -t lib/main_a.dart -d chrome
flutter run -t lib/main_b.dart -d chrome

### Output
- Tests pass (e.g., "2 tests passed").  
- UI responds correctly to interactions in 10b.

### Screenshot
- Save test terminal output (green passed) and app UI before/after button press.
- a) `main_a.dart`: Simple UI with Text and a button. `test/widget_test_a.dart` checks existence of widgets.
- <img width="1445" height="867" alt="image" src="https://github.com/user-attachments/assets/42ef2814-46eb-4d34-b57f-9f22acaf8342" />
b) `main_b.dart`: Stateful counter app; `test/widget_test_b.dart` taps button and asserts updated text.
<img width="1450" height="864" alt="image" src="https://github.com/user-attachments/assets/59d5add9-3f04-4e9f-8657-586de6e7ad22" />



