# 📱 BCA Mobile Banking — Flutter App

Replika UI BCA Mobile Banking dibuat menggunakan Flutter.  
Proyek ini dibuat untuk memenuhi tugas mata kuliah **Pemrograman Mobile**.

---

## 🚀 Cara Menjalankan

```bash
# 1. Clone repository
git clone https://github.com/USERNAME/bca_mobile.git
cd bca_mobile

# 2. Install dependencies
flutter pub get

# 3. Jalankan aplikasi
flutter run
```

---

## 📂 Struktur Proyek

```
lib/
├── main.dart                    ← Entry point + MaterialApp + ThemeData
├── models/
│   ├── transaction_model.dart   ← Model data transaksi
│   └── quick_action_model.dart  ← Model quick action & info card
├── utils/
│   ├── app_colors.dart          ← Konstanta warna & text style
│   ├── currency_formatter.dart  ← Helper format Rupiah
│   └── sample_data.dart         ← Dummy data aplikasi
├── screens/
│   └── home_screen.dart         ← Halaman utama (Scaffold, CustomScrollView)
└── widgets/
    ├── header_widget.dart        ← Header + kartu saldo + animasi
    ├── quick_actions_grid.dart   ← GridView 8 menu cepat
    ├── transaction_list.dart     ← List transaksi + BottomSheet detail
    ├── promo_banner_widget.dart  ← Banner promo & scan QRIS
    ├── info_cards_grid.dart      ← Grid 2x2 produk layanan
    └── custom_bottom_nav.dart    ← Bottom navigation bar custom
```

---

## 🧩 Daftar Widget Flutter yang Diimplementasikan

| No | Widget | File | Keterangan |
|----|--------|------|------------|
| 1 | `MaterialApp` | `main.dart` | Root widget aplikasi |
| 2 | `ThemeData` + `ColorScheme` | `main.dart` | Konfigurasi tema global |
| 3 | `Scaffold` | `home_screen.dart` | Struktur halaman utama |
| 4 | `CustomScrollView` | `home_screen.dart` | Scroll dengan sliver |
| 5 | `SliverList` + `SliverToBoxAdapter` | `home_screen.dart` | List efisien dalam scroll |
| 6 | `SliverPadding` | `home_screen.dart` | Padding dalam sliver |
| 7 | `Container` + `BoxDecoration` | `header_widget.dart` | Kartu saldo bergradient |
| 8 | `LinearGradient` | `header_widget.dart` | Gradien background header |
| 9 | `Row` + `Column` | Semua file | Tata letak horizontal/vertikal |
| 10 | `Text` + `TextStyle` | Semua file | Tampilan teks |
| 11 | `RichText` + `TextSpan` | `header_widget.dart` | Teks warna campuran (logo) |
| 12 | `Stack` + `Positioned` | `header_widget.dart` | Badge overlay di atas ikon |
| 13 | `GestureDetector` | `header_widget.dart` | Deteksi tap toggle saldo |
| 14 | `AnimationController` | `header_widget.dart` | Animasi programatik |
| 15 | `FadeTransition` + `AnimatedDot` | `header_widget.dart` | Dot hijau berkedip |
| 16 | `AnimatedSwitcher` | `header_widget.dart` | Animasi toggle saldo |
| 17 | `SingleTickerProviderStateMixin` | `header_widget.dart` | Vsync untuk AnimationController |
| 18 | `GridView.count` | `quick_actions_grid.dart` | Grid 4 kolom menu cepat |
| 19 | `ScaleTransition` | `quick_actions_grid.dart` | Animasi skala saat tap |
| 20 | `InkWell` | `transaction_list.dart` | Efek ripple Material |
| 21 | `Card` | `info_cards_grid.dart` | Kartu material dengan shadow |
| 22 | `ListTile` | `transaction_list.dart` | Struktur item list standar |
| 23 | `Divider` | `transaction_list.dart` | Garis pemisah item |
| 24 | `TextOverflow.ellipsis` | `transaction_list.dart` | Potong teks panjang |
| 25 | `showModalBottomSheet` | `transaction_list.dart` | Panel detail transaksi |
| 26 | `ElevatedButton` | `transaction_list.dart` | Tombol aksi bottom sheet |
| 27 | `TextButton` | `home_screen.dart` | Tombol "Lihat Semua" |
| 28 | `ClipRRect` | `home_screen.dart` | Sudut melengkung container |
| 29 | `AnimatedContainer` | `custom_bottom_nav.dart` | Animasi indikator aktif |
| 30 | `SafeArea` | `custom_bottom_nav.dart` | Hindari area sistem |
| 31 | `SizedBox` | Semua file | Spacer/ukuran tetap |
| 32 | `Padding` + `EdgeInsets` | Semua file | Jarak dalam widget |
| 33 | `Expanded` | Semua file | Isi ruang sisa dalam Row/Column |
| 34 | `StatefulWidget` + `setState` | Semua file | Manajemen state lokal |
| 35 | `BoxShadow` | `custom_bottom_nav.dart` | Shadow tombol QRIS |
| 36 | `SnackBar` | Semua file | Notifikasi singkat |
| 37 | `AnnotatedRegion` | `home_screen.dart` | Warna status bar sistem |
| 38 | `BouncingScrollPhysics` | `home_screen.dart` | Efek bounce scroll iOS |
| 39 | `Icon` | Semua file | Ikon Material Design |
| 40 | `BorderRadius` | Semua file | Sudut melengkung |

---

## 🎨 Fitur Utama

- **Header BCA** dengan logo, greeting dinamis, dan notifikasi badge
- **Kartu Saldo** dengan toggle show/hide menggunakan animasi
- **Dot hijau berkedip** (animasi pulse real-time)
- **Grid 8 Menu Cepat**: Transfer, QRIS, Tagihan, Pulsa, PLN, dll.
- **Banner Scan QRIS** interaktif
- **Banner Promo** dengan gradient orange
- **Daftar Transaksi** dengan ikon, warna debit/kredit, dan detail BottomSheet
- **Grid Produk**: Deposito, Kartu Kredit, Kurs, Reksadana
- **Bottom Navigation** custom dengan tombol QRIS di tengah
- **SnackBar** sebagai feedback interaksi

---

## 📸 Screenshot

> Jalankan `flutter run` untuk melihat tampilan langsung di emulator/device.

---

## 🔧 Dependencies

```yaml
google_fonts: ^6.1.0   # Font pilihan
intl: ^0.18.1           # Format tanggal & angka
```

---

## 📌 Catatan

- Proyek ini adalah **replika UI** untuk keperluan akademis
- Tidak ada data nyata / koneksi ke server BCA
- Seluruh data menggunakan dummy data di `lib/utils/sample_data.dart`
- Dibuat sendiri, bukan hasil copy-paste

---

## 📝 Git Log

```bash
git log --oneline
```

```
feat: add InfoCardsGrid widget (GridView 2 kolom)
feat: add CustomBottomNavBar with QRIS FAB
feat: add TransactionList with ModalBottomSheet detail
feat: add PromoBannerWidget & ScanQrisBanner
feat: add QuickActionsGrid with ScaleTransition
feat: add HeaderWidget with AnimatedSwitcher balance toggle
feat: add HomeScreen with CustomScrollView & SliverList
feat: add SampleData, AppColors, CurrencyFormatter utilities
feat: add TransactionModel & QuickActionModel data models
chore: initial Flutter project setup
```
