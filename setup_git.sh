#!/bin/bash
# ============================================================
# SKRIP SETUP GIT — Jalankan ini di folder proyek Flutter Anda
# ============================================================

echo "🔧 Inisialisasi Git repository..."
git init

echo "📝 Konfigurasi Git (ganti dengan data Anda)..."
# git config user.name "Nama Anda"
# git config user.email "email@example.com"

echo "📦 Commit pertama: setup awal proyek..."
git add pubspec.yaml .gitignore README.md
git commit -m "chore: initial Flutter project setup"

echo "📦 Commit: data models..."
git add lib/models/
git commit -m "feat: add TransactionModel & QuickActionModel data models"

echo "📦 Commit: utilities..."
git add lib/utils/
git commit -m "feat: add SampleData, AppColors, CurrencyFormatter utilities"

echo "📦 Commit: HeaderWidget..."
git add lib/widgets/header_widget.dart
git commit -m "feat: add HeaderWidget with AnimatedSwitcher balance toggle"

echo "📦 Commit: QuickActionsGrid..."
git add lib/widgets/quick_actions_grid.dart
git commit -m "feat: add QuickActionsGrid with ScaleTransition animation"

echo "📦 Commit: TransactionList..."
git add lib/widgets/transaction_list.dart
git commit -m "feat: add TransactionList with ModalBottomSheet detail"

echo "📦 Commit: PromoWidgets..."
git add lib/widgets/promo_banner_widget.dart
git commit -m "feat: add PromoBannerWidget and ScanQrisBanner"

echo "📦 Commit: InfoCardsGrid..."
git add lib/widgets/info_cards_grid.dart
git commit -m "feat: add InfoCardsGrid with GridView 2 kolom"

echo "📦 Commit: CustomBottomNav..."
git add lib/widgets/custom_bottom_nav.dart
git commit -m "feat: add CustomBottomNavBar with embedded QRIS button"

echo "📦 Commit: HomeScreen..."
git add lib/screens/home_screen.dart
git commit -m "feat: add HomeScreen with CustomScrollView and SliverList"

echo "📦 Commit: main.dart..."
git add lib/main.dart
git commit -m "feat: add main.dart entry point with MaterialApp and ThemeData"

echo ""
echo "✅ Semua commit berhasil!"
echo ""
echo "🔗 Langkah selanjutnya:"
echo "   1. Buat repository baru di GitHub/GitLab"
echo "   2. Jalankan:"
echo "      git remote add origin https://github.com/USERNAME/bca_mobile.git"
echo "      git branch -M main"
echo "      git push -u origin main"
echo ""
echo "📊 Cek log dengan: git log --oneline"
