# Experiment 3: Responsive UI & Breakpoints

### Aim
a) Design UI that adapts to screen sizes  
b) Implement media queries / breakpoints

### Description
a) `main_a.dart` uses MediaQuery to change container width for mobile/tablet/desktop.  
b) `main_b.dart` demonstrates different layouts per breakpoint (<600, 600–1200, >=1200).

### Files
- `lib/main_a.dart` (3a)  
- `lib/main_b.dart` (3b)

### Steps / Commands
- Create `exp3` and save files under `lib/`.  
- Run:
flutter pub get
flutter run -t lib/main_a.dart -d chrome
flutter run -t lib/main_b.dart -d chrome

### Output
- Resizable container and breakpoint-based layout changes when resizing the browser.

### Screenshot
a) `main_a.dart` uses MediaQuery to change container width for mobile/tablet/desktop. 
<img width="1455" height="864" alt="image" src="https://github.com/user-attachments/assets/a673612b-bb3d-4612-a06d-bef42e11a9ba" />
b) `main_b.dart` demonstrates different layouts per breakpoint (<600, 600–1200, >=1200).
<img width="1445" height="862" alt="image" src="https://github.com/user-attachments/assets/be470bbc-f989-4cf9-bdcd-0954233fb30a" />


