.class public Lio/intercom/android/sdk/utilities/ActivityUtils;
.super Ljava/lang/Object;


# static fields
.field private static final COMPOSER_INPUT_PACKAGE_NAME:Ljava/lang/String;

.field private static final COMPOSER_PACKAGE_NAME:Ljava/lang/String;

.field private static final INTERCOM_PACKAGES:[Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/intercom/android/sdk/Intercom;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/utilities/ActivityUtils;->PACKAGE_NAME:Ljava/lang/String;

    const-class v0, Lcom/intercom/composer/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/utilities/ActivityUtils;->COMPOSER_PACKAGE_NAME:Ljava/lang/String;

    const-class v0, Lcom/intercom/input/gallery/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/utilities/ActivityUtils;->COMPOSER_INPUT_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lio/intercom/android/sdk/utilities/ActivityUtils;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/intercom/android/sdk/utilities/ActivityUtils;->COMPOSER_PACKAGE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/intercom/android/sdk/utilities/ActivityUtils;->COMPOSER_INPUT_PACKAGE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/utilities/ActivityUtils;->INTERCOM_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFullScreenHelpCenter(Landroid/app/Activity;)Z
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "parcel_display_mode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    instance-of v3, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;

    if-eqz v3, :cond_3

    if-eq v0, v1, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static isHostActivity(Landroid/app/Activity;)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ActivityUtils;->isInHostAppPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInHostAppPackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lio/intercom/android/sdk/utilities/ActivityUtils;->INTERCOM_PACKAGES:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
