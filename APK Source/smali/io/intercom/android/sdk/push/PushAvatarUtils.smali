.class Lio/intercom/android/sdk/push/PushAvatarUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LARGE_ICON_SIZE_DP:I = 0x30


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0, p0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getNotificationDefaultBitmap(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lio/intercom/android/sdk/utilities/AvatarUtils;->getDefaultDrawable(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarDefaultDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Lio/intercom/android/sdk/push/PushAvatarUtils;->drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationInitialsBitmap(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/identity/AppConfig;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/NameUtils;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/intercom/android/sdk/utilities/AvatarUtils;->getInitialsDrawable(Ljava/lang/String;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarInitialsDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Lio/intercom/android/sdk/push/PushAvatarUtils;->drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
