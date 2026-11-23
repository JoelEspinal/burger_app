# 🍔 Tasty Burger App

A Flutter food-ordering UI based on the
[Tasty Burger case study](https://uxplanet.org/case-study-tasty-burger-ui-design-for-a-food-ordering-mobile-application-5a0b3175f012)
by [Tubik Studio](https://tubikstudio.com/). I built it to practise turning a
professional design into pixel-accurate Flutter widgets.

<p>
  <img src="https://github.com/user-attachments/assets/dc288822-b7cb-418e-a2c1-6a7ae8a531f0" height="500"/>
  <img src="https://github.com/user-attachments/assets/33ed83d8-300a-480f-a8b2-4f5fbac4d77d" height="500"/>
  <img src="https://github.com/user-attachments/assets/20e87370-c8bd-425d-af4d-fbc5239f2a93" height="500"/>
</p>

## ✨ Features
- Menu with flavour categories, a horizontal offers carousel and burger cards
- Burger detail page with ingredients, quantity and price
- Ingredient picker in a rounded bottom sheet
- Custom theme and reusable widgets (`BurgerCard`, `BurgerOffer`, `PriceWidget`, …)

## 🛠️ Tech
- Flutter (Dart SDK ^3.5.4) with Material widgets
- No third-party packages: layout, theming and navigation are built with the Flutter SDK only

## 📁 Structure
```text
lib/src/
├── app.dart          # MaterialApp and theme
├── pages.dart/       # menu_page, detail_page
├── models/           # Ingredient
├── themes/           # AppTheme
└── widgets/          # cards, offers, ingredient sheet, price
```

## ▶️ Run it
```bash
git clone https://github.com/JoelEspinal/burger_app.git
cd burger_app
flutter pub get
flutter run
```

## 🙏 Credits
UI design: Tubik Studio, *Tasty Burger* case study. This repo is a learning
implementation, not affiliated with the original authors.
