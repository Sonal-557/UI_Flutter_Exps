# Experiment 5: Stateful vs Stateless & Provider

### Aim
a) Learn Stateful & Stateless widgets (setState)  
b) Implement state management using Provider

### Description
a) `main_a.dart`: Counter implemented with StatefulWidget and setState.  
b) `main_b.dart`: `ChangeNotifier` + `Provider` to manage counter state globally for the widget tree.

### Files
- `lib/main_a.dart` (5a)  
- `lib/main_b.dart` (5b)  
- pubspec includes `provider: ^6.0.5`

### Steps / Commands
- In `exp5` folder:
flutter pub get
flutter run -t lib/main_a.dart -d chrome # setState example
flutter run -t lib/main_b.dart -d chrome # Provider example

### Output
- 5a: Button increments local counter.  
- 5b: Button increments Provider-managed counter and UI updates.

### Screenshot
- Show counter before and after increment for both examples.

