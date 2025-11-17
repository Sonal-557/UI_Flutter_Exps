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
a) `main_a.dart`: Counter implemented with StatefulWidget and setState.
<img width="1447" height="861" alt="image" src="https://github.com/user-attachments/assets/3a87db01-a72a-44bf-8839-248eb16ade37" />
b) `main_b.dart`: `ChangeNotifier` + `Provider` to manage counter state globally for the widget tree.
<img width="1447" height="860" alt="image" src="https://github.com/user-attachments/assets/5de9c7e4-85f3-4b53-b9e3-442d990dc304" />

