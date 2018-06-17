.class public final Lcom/google/android/gms/common/util/g;
.super Ljava/lang/Object;


# static fields
.field private static aJv:Ljava/lang/Boolean;

.field private static aJw:Ljava/lang/Boolean;

.field public static aJx:Ljava/lang/Boolean;


# direct methods
.method public static H(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/util/g;->aJw:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/l;->oJ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "cn.google"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/g;->aJw:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/util/g;->aJw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/util/g;->aJv:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/l;->oI()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/g;->aJv:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/g;->aJv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method
