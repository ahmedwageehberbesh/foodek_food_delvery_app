# 🍔 Foodek – Food Delivery App (Flutter)

Foodek هو تطبيق توصيل طعام مبني باستخدام **Flutter**، مصمم ليكون خفيف، سريع، وقابل للتوسّع. التطبيق يركّز على تجربة مستخدم بسيطة مع هيكل كود منظم (Models + Widgets + Pages) لتسهيل التطوير المستقبلي.

---

## ✨ المميزات الرئيسية

* 📱 واجهة مستخدم حديثة باستخدام Material Design
* 🔄 دعم **Portrait & Landscape**
* ❤️ إضافة / إزالة العناصر من المفضلة
* 🧩 فصل واضح بين:

  * **Models** (البيانات)
  * **Widgets** (مكونات قابلة لإعادة الاستخدام)
  * **Pages** (الشاشات)
* 🧭 Bottom Navigation Bar
* 🎨 Theme مخصص (ألوان – خطوط – AppBar)

---

## 🏗️ هيكل المشروع

```
lib/
│
├── models/
│   └── food_item.dart          # موديل عنصر الطعام
│
├── pages/
│   ├── home_page.dart          # الصفحة الرئيسية
│   ├── favorite_page.dart      # صفحة المفضلة
│   ├── account_page_.dart       # صفحة الحساب
│   └── bottom_navbar.dart      # التنقل السفلي
│
├── widgets/
│   └── food_grid_item.dart     # Widget مخصص لعرض عنصر الطعام
│
└── main.dart                   # نقطة تشغيل التطبيق
```

---

## 📦 الـ Model (FoodItem)

التطبيق يعتمد على موديل رئيسي لعنصر الطعام:

```dart
class FoodItem {
  final String name;
  final String imageUrl;
  final double price;
  final bool isFavorite;

  FoodItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,
  });

  FoodItem copyWith({
    String? name,
    String? imageUrl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItem(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
```

🔹 الموديل يدعم `copyWith` لتسهيل تحديث الحالة بدون كسر الـ state.

---

## 🧩 الـ Widgets

### Food Grid Item Widget

Widget مخصص لعرض بيانات الأكلة في Grid View:

* صورة
* اسم
* سعر
* زر مفضلة

الميزة هنا إن الواجهة **Reusable** وتُستخدم في أكثر من صفحة.

---

## 📱 الصفحات الرئيسية

### 🏠 الصفحة الرئيسية (Home Page)
* عرض قائمة الطعام في Grid View
* صورة رئيسية في الأعلى
* دعم Portrait و Landscape مع تغيير عدد الأعمدة تلقائياً

### ❤️ صفحة المفضلة (Favorite Page)
* تعرض العناصر التي تم وضعها كمفضلة فقط
* في حالة عدم وجود عناصر:

  * تظهر صورة
  * رسالة توضيحية
* تدعم الاتجاهين Portrait و Landscape

### 👤 صفحة الحساب (Account Page)
* عرض معلومات المستخدم
* إحصائيات الطلبات والقسائم
* قائمة بالإعدادات والطلبات الأخيرة

---

## 🎨 الـ Theme

التطبيق يستخدم Theme موحد:

* `primaryColor`: Deep Orange
* خط افتراضي: **OpenSans**
* AppBar بدون elevation
* ألوان متناسقة مع تجربة Food App
* دعم Material Design 2

---

## ▶️ تشغيل المشروع

### 1️⃣ تثبيت الحزم

```bash
flutter pub get
```

### 2️⃣ تشغيل التطبيق

```bash
flutter run
```

### 3️⃣ بناء التطبيق

#### Android
```bash
flutter build apk --release
```

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web
```

---

## 🛠️ المتطلبات

* Flutter SDK ^3.10.7
* Dart >= 3
* Android Studio أو VS Code
* Android SDK (للتطوير على Android)
* Xcode (للتطوير على iOS - macOS فقط)

---

## 📦 الحزم المستخدمة

* `flutter`: SDK الأساسي
* `cupertino_icons`: أيقونات iOS
* `flutter_lints`: أدوات التحقق من الكود

---

## 🚀 تطوير مستقبلي (Roadmap)

* 🔐 Authentication (Login / Register)
* 🛒 Cart & Checkout
* 🌐 Backend API Integration
* 💳 Payment Gateway
* 🔔 Notifications
* 📍 Location Services
* ⭐ Rating & Reviews
* 🔍 Search & Filters

---

## 📱 المنصات المدعومة

* ✅ Android
* ✅ iOS
* ✅ Web
* ✅ Windows
* ✅ macOS
* ✅ Linux

---

## 👨‍💻 المطور

تم تطوير التطبيق بواسطة **Ahmed Wageeh**

لو عندك أي اقتراحات أو حابب تطوّر المشروع أكتر — الباب مفتوح 👌🔥

---

## 🤝 المساهمة

نرحب بجميع المساهمات! يرجى فتح Issue أو Pull Request للمساهمة في تحسين التطبيق.

---

> Foodek – Because good food deserves a good app 🍕
