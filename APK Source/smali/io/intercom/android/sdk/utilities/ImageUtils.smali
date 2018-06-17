.class public Lio/intercom/android/sdk/utilities/ImageUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAspectHeight(ID)I
    .locals 3

    int-to-double v0, p0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method

.method public static getAspectRatio(II)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public static getDiskCacheStrategy(Ljava/lang/String;)Lio/intercom/a/a/a/c/b/i;
    .locals 1

    invoke-static {p0}, Lio/intercom/android/sdk/utilities/ImageUtils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKd:Lio/intercom/a/a/a/c/b/i;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKe:Lio/intercom/a/a/a/c/b/i;

    goto :goto_0
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
