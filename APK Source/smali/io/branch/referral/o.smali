.class final Lio/branch/referral/o;
.super Ljava/lang/Object;


# static fields
.field private static cAL:Lio/branch/referral/o;


# instance fields
.field final cAA:I

.field final cAB:I

.field final cAC:I

.field final cAD:Z

.field final cAE:Ljava/lang/String;

.field final cAF:Ljava/lang/String;

.field final cAG:I

.field private final cAH:Ljava/lang/String;

.field final cAI:Ljava/lang/String;

.field final cAJ:Ljava/lang/String;

.field final cAK:Ljava/lang/String;

.field final cAw:Ljava/lang/String;

.field final cAx:Z

.field final cAy:Ljava/lang/String;

.field final cAz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/branch/referral/o;->cAL:Lio/branch/referral/o;

    return-void
.end method

.method private constructor <init>(ZLio/branch/referral/ag;Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p2, v1}, Lio/branch/referral/ag;->bt(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/o;->cAw:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p2, Lio/branch/referral/ag;->cBH:Z

    iput-boolean v0, p0, Lio/branch/referral/o;->cAx:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/referral/o;->cAy:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/referral/o;->cAz:Ljava/lang/String;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p2, Lio/branch/referral/ag;->cvX:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lio/branch/referral/o;->cAA:I

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lio/branch/referral/o;->cAB:I

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lio/branch/referral/o;->cAC:I

    iget-object v0, p2, Lio/branch/referral/ag;->cvX:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lio/branch/referral/ag;->cvX:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lio/branch/referral/o;->cAD:Z

    invoke-static {}, Lio/branch/referral/ag;->Hw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/o;->cAE:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lio/branch/referral/o;->cAF:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lio/branch/referral/o;->cAG:I

    invoke-virtual {p2}, Lio/branch/referral/ag;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/o;->cAH:Ljava/lang/String;

    invoke-virtual {p2}, Lio/branch/referral/ag;->Ht()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/o;->cAI:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lio/branch/referral/o;->cAJ:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lio/branch/referral/o;->cAK:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lio/branch/referral/ag;->bt(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/o;->cAw:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public static GN()Lio/branch/referral/o;
    .locals 1

    sget-object v0, Lio/branch/referral/o;->cAL:Lio/branch/referral/o;

    return-object v0
.end method

.method public static a(ZLio/branch/referral/ag;Z)Lio/branch/referral/o;
    .locals 1

    sget-object v0, Lio/branch/referral/o;->cAL:Lio/branch/referral/o;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/referral/o;

    invoke-direct {v0, p0, p1, p2}, Lio/branch/referral/o;-><init>(ZLio/branch/referral/ag;Z)V

    sput-object v0, Lio/branch/referral/o;->cAL:Lio/branch/referral/o;

    :cond_0
    sget-object v0, Lio/branch/referral/o;->cAL:Lio/branch/referral/o;

    return-object v0
.end method


# virtual methods
.method public final GO()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/branch/referral/o;->cAw:Ljava/lang/String;

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/branch/referral/o;->cAw:Ljava/lang/String;

    goto :goto_0
.end method
