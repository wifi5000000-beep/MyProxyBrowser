-dontwarn sun.misc.**
-dontwarn sun.reflect.**
-dontwarn com.sun.org.apache.xpath.internal.XPathContext

-keep class com.antidetect.browser.** { *; }
-keep interface com.antidetect.browser.** { *; }

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

-keep class * extends androidx.room.RoomDatabase
-keep @androidx.room.Entity class *
-dontwarn androidx.room.paging.**

-keepclassmembers class * extends androidx.lifecycle.ViewModel {
    <init>();
}

-keepattributes Signature
-keepattributes *Annotation*
-keep class retrofit2.** { *; }
-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}

-keep public class com.bumptech.glide.** {*;}
-keep class * extends com.bumptech.glide.module.AppGlideModule {
    public <init>();
}
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
    **[] $VALUES;
    public *;
}

-keep class kotlinx.coroutines.** { *; }
-dontwarn kotlinx.coroutines.**