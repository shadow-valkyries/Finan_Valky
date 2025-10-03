# FinanValky 💰
A finance management mobile app that helps users track income, expenses, and analyze spending.

##  Features (MVP)
- User authentication (Firebase/Supabase)
- Track income and expenses
- Balance overview
- Basic analytics (daily/monthly spending)
- Simple dashboard

##  Project structure
- `/lib` – Flutter app code
- `/android`, `/ios`, `/windows`, `/macos` – Platform-specific files
- `/functions` – (for Firebase Cloud Functions)

##  Tech stack
- Flutter
- Firebase (Auth, Firestore, Cloud Functions, Storage)
- Supabase (optional DB + auth)
- GitHub + Trello (project management)

##  Branch strategy
- `main` – production-ready
- `release` – pre-production
- `develop` – active development
- `features/*` – feature branches
- `test` – QA testing

##  How to run
```bash
git clone https://github.com/org/project.git
cd project
flutter pub get
flutter run
