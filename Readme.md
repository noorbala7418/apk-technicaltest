
# APK Technical Test

<div dir="rtl">
هدف این تست پیاده سازی یک ReverseProxy برای یک سرویس Flask با استفاده از Nginx و بصورت داکرایز است که دارای شرایط زیر است:

<div dir="rtl">
 - درصورتیکه درخواست به مسیر /api/ ارسال شد، درخواست به سرویس فلسک ارسال شود.
 <div dir="rtl">
 - مسیر پیش فرض / به /api/ با کد ۳۰۲ ریدایرکت شود.
 <div dir="rtl">
 - ریورس پروکسی باید از درخواست های ارسال شده توسط curl جلوگیری کند.
 <div dir="rtl"> 
 - سرویس فلاسک Expose نشود و فقط توسط Nginx دیده شود.
 <div dir="rtl">
 -  بوسیله docker compose پیاده‌سازی شود.
 <div dir="rtl">
 - کانفیگ ریورس پروکسی و بقیه موارد در Volume قابل دسترسی هستند.

## Run
<div dir="rtl">
پس از اجرای دستورات زیر، می‌توان سرویس را اجرا کرد:
</div>
``` docker build -t apk-tt:1.1 . ```

``` docker-compose up -d ```
<div dir="rtl">
سرویس Nginx روی پورت 80 درحال سرویس‌دهی است.با زدن درخواست GET به http://localhost شما به آدرس http://localhost/api می‌شوید.
</div>
