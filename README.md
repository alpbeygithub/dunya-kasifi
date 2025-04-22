# Dünya Kaşifi

**Dünya Kaşifi**, 6-12 yaş arası çocuklara yönelik, uçak içi artırılmış gerçeklik tabanlı bir mobil oyundur. Uygulama şu an erken beta aşamasındadır ve temel olarak kullanıcı girişi ile avatar (kaşif) seçimi sunmaktadır.

## Kurulum (Setup)

Dilerseniz en alttan son apk versiyonunu telefonunuza indirip çalıştırabilir.

Veya

Aşağıdaki adımları takip ederek projeyi kendi bilgisayarınızda bir emülatör ile çalıştırabilirsiniz:

### Gereksinimler

- Flutter SDK (3.7.2 veya üzeri)
- Android Studio (veya başka bir IDE)
- Android Emulator (veya gerçek cihaz)
- Git (yüklü olmalı)

### 1. Flutter SDK'yı yükleyin

Flutter kurulumu için resmi rehber:  
https://docs.flutter.dev/get-started/install

### 2. Bu projeyi klonlayın


git clone https://github.com/alpbeygithub/dunya-kasifi.git
cd dunya-kasifi

### 3. Gerekli paketleri yükleyin
flutter pub get

### 4. Emülatörü başlatın (veya cihazı bağlayın)

### 5. Uygulamayı çalıştırın

### PROJE YAPISI
lib/

├── core/

│   └── theme.dart                      # Tema ayarları

├── features/

│   ├── auth/                           # Giriş ekranı

│   │   ├── models/user_model.dart

│   │   ├── screens/login_screen.dart

│   │   ├── screens/splash_screen.dart

│   │   └── widgets/login_form.dart

│   ├── explorer/                       # Kaşif (avatar) seçimi

│   │   ├── models/explorer_model.dart

│   │   ├── screens/select_explorer_screen.dart

│   │   └── widgets/explorer_card.dart

│   └── game/                           # Oyun seçim ekranı (placeholder)

│       └── screens/select_game_screen.dart

├── login.dart                          # Route yapılandırmaları

└── main.dart                           # Uygulama başlangıç noktası

### Özellikler
THY logolu giriş ekranı

Koltuk numarası ve kaşif adı ile giriş

4 farklı kaşif kartı ile avatar seçimi

Responsive ve modüler yapı

Oyun ekranı altyapısı hazır (içerik henüz eklenmedi)

### Lisans
Bu proje sadece eğitim ve demo amaçlı hazırlanmıştır.
---
### Sunum Dosyası

[Dünya Kaşifi Sunumunu İndir (PDF)](https://github.com/alpbeygithub/dunya-kasifi/raw/main/D%C3%BCnya%20Ka%C5%9Fifi_compressed.pdf)

📌 Not: Görsellerin tam görünmesi için PDF'i bilgisayarınıza indirerek açmanız önerilir.




### Güncellemeler v1.0.2 

- [x] Kaşif Seç ekranı arka planı gökyüzü temasına uyarlandı
- [x] Emojiler geçici olarak kaldırıldı
- [x] Splash → Login → Kaşif Seç → Oyun ekranı sırası düzeltildi
- [x] Form validasyonu eklendi: ad-soyad ve koltuk seçimleri zorunlu hale getirildi
- [x] THY logosu responsive şekilde tüm ekranlara sabitlendi

### Son Versiyon APK İndir

[Dünya Kaşifi v1.0.2 APK](https://github.com/alpbeygithub/dunya-kasifi/releases/latest/download/app-release.apk)


