# Experiment 9: REST API Fetch & Display

### Aim
a) Fetch data from REST API  
b) Display fetched data meaningfully

### Description
a) `main_a.dart`: Fetch JSON from `https://jsonplaceholder.typicode.com/posts` using `http` package; show as ListView.  
b) `main_b.dart`: Display same data in a styled GridView (cards, truncated text).

### Files
- `lib/main_a.dart` (9a)  
- `lib/main_b.dart` (9b)  
- pubspec: includes `http: ^1.1.0`

### Steps / Commands
flutter pub get
flutter run -t lib/main_a.dart -d chrome
flutter run -t lib/main_b.dart -d chrome

### Output
- 9a: List of posts with title & body.  
- 9b: Grid of cards with title/body (truncated).

### Screenshot
- Capture loaded ListView / GridView with data items.

