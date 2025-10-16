# 🧈 Premium Toast Flutter

A beautiful and lightweight Flutter package to display animated toast messages for success, error, and alert events.  
**Premium Toast Flutter** makes your app interactions smoother by providing quick, elegant, and consistent feedback to users.

---

## ✨ Features

- ✅ **Success Toast** — When actions succeed (e.g., message sent, verification done, authentication complete).
- ❌ **Error Toast** — When something goes wrong (e.g., authentication failed, invalid input, operation failed).
- ⚠️ **Alert Toast** — When the user needs attention (e.g., weak password warning, unsaved changes).

🎨 Each toast comes with:
- Clean UI and subtle animations
- Customizable title, subtitle, and duration
- Works on all Flutter platforms (Android, iOS, Web, Desktop)

---

## 🚀 Getting started

Add this package to your project by running:

```bash
flutter pub add Premium_Toast_Flutter
```
### Import
```dart
import 'package:premium_toast_flutter/premium_toast_flutter.dart';
```
## Success Toast ✅
```dart
Premium_Toast_Flutter.successToast(
  context,
  title: "Well Done!",
  subTitle: "Your message has been sent successfully.",
  duration: Duration(seconds: 3),
);
```
## Error Toast ❌
```dart
Premium_Toast_Flutter.errorToast(
  context,
  title: "Oops!",
  subTitle: "Some Error has occurred.",
  duration: Duration(seconds: 3),
);
```
## Alert Toast ⚠️
```dart
Premium_Toast_Flutter.alertToast(
  context,
  title: "Alert!",
  subTitle: "There is some alert.",
  duration: Duration(seconds: 3),
);
```
## Reference Images
### Alert Toast
<img alt="Alert Toast" height="300" src="https://raw.githubusercontent.com/kathankraithatha/Premium-Toast-Flutter/main/lib/Image%20Assets/Alert%20Toast.jpg" title="Alert Toast" width="150"/>

### Error Toast

<img alt="Error Toast" height="300" src="https://raw.githubusercontent.com/kathankraithatha/Premium-Toast-Flutter/main/lib/Image%20Assets/Error%20Toast.jpg" title="Error Toast" width="150"/>

### Success Toast
<img alt="Success Toast" height="300" src="https://raw.githubusercontent.com/kathankraithatha/Premium-Toast-Flutter/main/lib/Image%20Assets/Success%20Toast.jpg" title="Success Toast" width="150"/>

## Customization (Coming Soon) ⚙️
**Premium Toast Flutter** aims to be fully customizable soon!
Planned enhancements include:

- 🎨 Custom colors and gradients

- 🔄 Different animation styles

- 📍 Toast positioning (Top, Bottom, Center)

- 🔔 Custom icons and shapes

## Additional Information
Created and maintained by Kathank Raithatha.
If you face any issues or have suggestions for improvements, feel free to open an issue or contribute once the repository is public.

📩 For queries or collaborations, reach out via [GitHub](https://github.com/kathankraithatha/Premium-Toast-Flutter) or connect on [LinkedIn](https://www.linkedin.com/in/kathank/).

⭐️ If you like **Premium Toast Flutter**, don’t forget to give it a star on GitHub and share it with your developer friends!