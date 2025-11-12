# SkillList - Clean Architecture + BLoC

Bu proje Clean Architecture prensipleri ve BLoC state management pattern'i kullanılarak oluşturulmuştur.

## Proje Yapısı

```
lib/
├── core/
│   ├── constants/          # Uygulama sabitleri
│   ├── di/                 # Dependency Injection (GetIt)
│   ├── errors/             # Hata sınıfları (Failures & Exceptions)
│   ├── network/            # Firebase ve network servisleri
│   ├── routes/             # GoRouter yapılandırması
│   ├── theme/              # Tema yapılandırması
│   ├── utils/              # Yardımcı sınıflar ve validatorler
│   └── widgets/            # Ortak widget'lar
│
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/    # Remote/Local data sources
│   │   │   ├── models/         # Data models (Freezed)
│   │   │   └── repositories/   # Repository implementations
│   │   ├── domain/
│   │   │   ├── entities/       # Business entities
│   │   │   ├── repositories/   # Repository interfaces
│   │   │   └── usecases/       # Business logic
│   │   └── presentation/
│   │       ├── blocs/          # BLoC state management
│   │       ├── pages/          # Sayfalar
│   │       └── widgets/        # Feature-specific widgets
│   │
│   ├── profile/            # Profil özelliği
│   ├── projects/           # Projeler özelliği
│   ├── tasks/              # Görevler özelliği
│   ├── chat/               # Sohbet özelliği
│   └── search/             # Arama özelliği
│
└── main.dart
```

## Katmanlar

### 1. Data Layer (data/)
- **datasources**: Veri kaynaklarına erişim (Firebase, API, Local DB)
- **models**: JSON serialization için Freezed kullanılan data modelleri
- **repositories**: Domain katmanındaki repository interface'lerinin implementasyonları

### 2. Domain Layer (domain/)
- **entities**: İş mantığı için kullanılan saf Dart sınıfları
- **repositories**: Repository interface'leri (abstract)
- **usecases**: Her use case tek bir iş mantığı içerir

### 3. Presentation Layer (presentation/)
- **blocs**: BLoC pattern ile state management
- **pages**: Tam sayfa widget'ları
- **widgets**: Sayfalar için kullanılan küçük widget'lar

## Kullanılan Paketler

### Core Paketler
- **flutter_bloc** (^9.1.1): State management
- **get_it** (^9.0.5): Dependency injection
- **go_router** (^17.0.0): Routing
- **equatable** (^2.0.7): Value equality
- **dartz** (^0.10.1): Functional programming (Either)

### Firebase Paketleri
- **firebase_core** (^4.2.1): Firebase initialization
- **firebase_auth** (^6.1.2): Authentication
- **cloud_firestore** (^6.1.0): Database
- **firebase_storage** (^13.0.4): File storage

### Code Generation
- **freezed** (^3.2.3): Immutable classes & unions
- **json_serializable** (^6.11.1): JSON serialization
- **build_runner** (^2.10.2): Code generation

### Code Quality
- **very_good_analysis** (^10.0.0): Lint rules

## Firebase Kurulumu

Projeyi çalıştırmadan önce Firebase yapılandırması gereklidir:

1. Firebase CLI'yi yükleyin:
```bash
npm install -g firebase-tools
```

2. Firebase'e giriş yapın:
```bash
firebase login
```

3. FlutterFire CLI'yi yükleyin:
```bash
dart pub global activate flutterfire_cli
```

4. Firebase projenizi yapılandırın:
```bash
flutterfire configure
```

Bu komut otomatik olarak gerekli yapılandırma dosyalarını oluşturacaktır.

5. [lib/core/network/firebase_service.dart](lib/core/network/firebase_service.dart) dosyasındaki yorumu kaldırın ve generate edilen options'ı ekleyin.

## Code Generation

Freezed ve JSON serialization için code generation çalıştırmak:

```bash
# Bir kez çalıştır
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (değişiklikleri otomatik algılar)
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Yeni Feature Ekleme

1. `lib/features/` altında yeni klasör oluşturun
2. Üç katman oluşturun: `data/`, `domain/`, `presentation/`
3. Her katmanda gerekli alt klasörleri oluşturun
4. Dependency injection için [lib/core/di/injection_container.dart](lib/core/di/injection_container.dart) dosyasını güncelleyin
5. Gerekirse routing için [lib/core/routes/app_router.dart](lib/core/routes/app_router.dart) dosyasını güncelleyin

## BLoC Pattern

Her feature için BLoC pattern kullanılır:

```dart
// Event
abstract class AuthEvent {}
class SignInRequested extends AuthEvent {}

// State
abstract class AuthState {}
class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthSuccess extends AuthState {}
class AuthFailure extends AuthState {}

// BLoC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignInRequested>(_onSignInRequested);
  }

  Future<void> _onSignInRequested(
    SignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    // Implementation
  }
}
```

## Dependency Injection

GetIt kullanılarak dependency injection yapılır:

```dart
// Registration (injection_container.dart)
sl.registerLazySingleton<AuthRepository>(
  () => AuthRepositoryImpl(remoteDataSource: sl()),
);

// Usage
final authRepo = sl<AuthRepository>();
```

## Best Practices

1. **Single Responsibility**: Her sınıf tek bir sorumluluğa sahip olmalı
2. **Dependency Inversion**: Üst seviye modüller alt seviye modüllere bağımlı olmamalı
3. **Interface Segregation**: Repository'ler için interface kullanın
4. **Immutability**: Freezed ile immutable sınıflar oluşturun
5. **Error Handling**: Either<Failure, Success> pattern'i kullanın
6. **Code Quality**: very_good_analysis kurallarına uyun

## Projeyi Çalıştırma

```bash
# Dependencies'leri yükle
flutter pub get

# Uygulamayı çalıştır
flutter run

# Test'leri çalıştır
flutter test

# Analiz
flutter analyze
```
