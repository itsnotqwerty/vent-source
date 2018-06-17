.class public final Lcom/vent/MyApplication;
.super Landroid/app/Application;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static cgA:Z

.field public static final cgC:Z

.field public static cgD:Ljava/lang/String;

.field public static cgE:Ljava/lang/String;

.field public static cgF:Ljava/lang/String;

.field public static cgG:I

.field public static cgH:I

.field private static cgI:Ljava/lang/String;

.field private static cgJ:Ljava/lang/String;

.field private static cgb:Z

.field public static cgd:I

.field public static cge:I

.field public static cgf:I

.field public static cgg:I

.field public static cgh:I

.field public static cgi:I

.field public static cgj:I

.field public static cgk:I

.field public static cgl:I

.field public static cgm:I

.field public static cgn:I

.field public static cgo:I

.field public static cgp:I

.field public static cgq:I

.field static cgr:I

.field static cgs:I

.field static cgt:I

.field static cgu:I

.field static cgv:I

.field public static cgw:Z

.field public static cgx:I

.field public static cgy:Z

.field public static cgz:Z


# instance fields
.field public cgB:Lcom/vent/b/a;

.field private cgK:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private cga:Lcom/google/android/gms/analytics/d;

.field private cgc:Lcom/vent/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/MyApplication;->cgb:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/vent/MyApplication;->cgC:Z

    const-string v0, "com.lsdka."

    sput-object v0, Lcom/vent/MyApplication;->cgI:Ljava/lang/String;

    const-string v0, "android.support.v4.app.DialogFragment.show"

    sput-object v0, Lcom/vent/MyApplication;->cgJ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-object v0, p0, Lcom/vent/MyApplication;->cga:Lcom/google/android/gms/analytics/d;

    iput-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    return-void
.end method

.method public static Eb()V
    .locals 2

    sget-boolean v0, Lcom/vent/MyApplication;->cgC:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lio/intercom/android/sdk/Intercom;->client()Lio/intercom/android/sdk/Intercom;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/intercom/android/sdk/Intercom;->GONE:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/Intercom;->setInAppMessageVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static Ec()V
    .locals 2

    sget-boolean v0, Lcom/vent/MyApplication;->cgC:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lio/intercom/android/sdk/Intercom;->client()Lio/intercom/android/sdk/Intercom;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/intercom/android/sdk/Intercom;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/Intercom;->setInAppMessageVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/support/v7/app/d;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Lcom/vent/MyApplication;->cgb:Z

    if-nez v1, :cond_2

    sput-boolean v7, Lcom/vent/MyApplication;->cgb:Z

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/vent/MyApplication;

    invoke-virtual {v1}, Lcom/vent/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgd:I

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cge:I

    const v3, 0x7f07012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgf:I

    const v3, 0x7f0700ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgg:I

    const v3, 0x7f07012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgh:I

    const v3, 0x7f07012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgi:I

    const v3, 0x7f0700c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgr:I

    const v3, 0x7f0700c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgs:I

    const v3, 0x7f0700c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgt:I

    const v3, 0x7f0700c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgu:I

    const v3, 0x7f0700c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgv:I

    const v3, 0x7f070113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgj:I

    invoke-static {v3}, Lcom/vent/d/c;->eR(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgk:I

    mul-int/2addr v3, v3

    sput v3, Lcom/vent/MyApplication;->cgl:I

    const v3, 0x7f070112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Lcom/vent/d/c;->eR(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgm:I

    mul-int/2addr v3, v3

    sput v3, Lcom/vent/MyApplication;->cgn:I

    const v3, 0x7f070110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Lcom/vent/d/c;->eR(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgo:I

    mul-int/2addr v3, v3

    sput v3, Lcom/vent/MyApplication;->cgp:I

    const v3, 0x7f0700b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/vent/MyApplication;->cgq:I

    const v3, 0x7f0600c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/vent/MyApplication;->cgH:I

    invoke-static {v1}, Lcom/vent/ae;->aG(Landroid/content/Context;)V

    sget-boolean v2, Lcom/vent/MyApplication;->cgw:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/vent/s;->CV()V

    invoke-static {}, Lcom/vent/b/a;->Fp()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/vent/MyApplication$2;

    invoke-direct {v3}, Lcom/vent/MyApplication$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v7, [Lcom/google/android/gms/common/api/f;

    new-instance v3, Lcom/google/android/gms/common/api/f$a;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/vent/MyApplication$4;

    invoke-direct {v4, v2}, Lcom/vent/MyApplication$4;-><init>([Lcom/google/android/gms/common/api/f;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/f$a;->b(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v3

    new-instance v4, Lcom/vent/MyApplication$3;

    invoke-direct {v4, v2}, Lcom/vent/MyApplication$3;-><init>([Lcom/google/android/gms/common/api/f;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/f$a;->c(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/location/d;->aYZ:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/f$a;->nc()Lcom/google/android/gms/common/api/f;

    move-result-object v3

    aput-object v3, v2, v9

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/f;->connect()V

    :cond_1
    invoke-virtual {v1}, Lcom/vent/MyApplication;->DY()Lcom/vent/ba;

    :try_start_1
    invoke-static {v1}, Lio/branch/referral/d;->bR(Landroid/content/Context;)Lio/branch/referral/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {v1}, Lcom/vent/d/e;->bM(Landroid/content/Context;)V

    invoke-static {}, Lcom/vent/bb;->Eu()V

    invoke-static {}, Lcom/vent/bb;->Et()V

    invoke-static {p0}, Lcom/vent/d/e;->u(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/vent/s;->p(Landroid/app/Activity;)V

    invoke-static {v1}, Lcom/vent/MyApplication;->c(Landroid/app/Application;)V

    invoke-virtual {v1}, Lcom/vent/MyApplication;->DW()V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/vent/d/e;->l(Ljava/util/Date;)Ljava/lang/String;

    new-instance v1, Landroid/support/v7/widget/i;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/i;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v7/widget/p;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/constraint/ConstraintLayout;

    invoke-direct {v1, p0}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v7/widget/GridLayout;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v7/widget/CardView;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {v1, p0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;)V

    :try_start_2
    new-instance v1, Landroid/support/d/a;

    new-instance v2, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/support/d/a;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    new-instance v1, Lcom/vent/CachedImageView;

    invoke-direct {v1, p0}, Lcom/vent/CachedImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/vent/views/FixedSwipeRefreshLayout;

    invoke-direct {v1, p0}, Lcom/vent/views/FixedSwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/vent/views/FixedTextViewTouchConsume;

    invoke-direct {v1, p0}, Lcom/vent/views/FixedTextViewTouchConsume;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/vent/views/MyFragmentTabHost;

    invoke-direct {v1, p0}, Lcom/vent/views/MyFragmentTabHost;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/vent/FrgVentsList;

    invoke-direct {v1}, Lcom/vent/FrgVentsList;-><init>()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00da

    invoke-virtual {v1, v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lcom/vent/a/z;

    invoke-direct {v1}, Lcom/vent/a/z;-><init>()V

    new-instance v1, Lcom/vent/a/y;

    invoke-direct {v1}, Lcom/vent/a/y;-><init>()V

    new-instance v1, Lcom/vent/a/l;

    invoke-direct {v1}, Lcom/vent/a/l;-><init>()V

    const-string v1, "_ @prime _"

    invoke-static {v1}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7fffffff

    const/high16 v4, -0x1000000

    move-object v1, v0

    move-object v5, v0

    move-object v6, v0

    move v8, v7

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public static br(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized bs(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;
    .locals 5

    const-class v1, Lcom/vent/MyApplication;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/vent/MyApplication;->cga:Lcom/google/android/gms/analytics/d;

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->t(Landroid/content/Context;)Lcom/google/android/gms/analytics/a;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f0f01ef

    invoke-virtual {v0, v3}, Lcom/vent/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/a;->aW(Ljava/lang/String;)Lcom/google/android/gms/analytics/d;

    move-result-object v2

    iput-object v2, v0, Lcom/vent/MyApplication;->cga:Lcom/google/android/gms/analytics/d;

    iget-object v2, v0, Lcom/vent/MyApplication;->cga:Lcom/google/android/gms/analytics/d;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/analytics/d;->aAU:Z

    iget-object v2, v0, Lcom/vent/MyApplication;->cga:Lcom/google/android/gms/analytics/d;

    const-string v3, "&uid"

    sget-object v4, Lcom/vent/bb;->chR:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/d;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/vent/MyApplication;->cga:Lcom/google/android/gms/analytics/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bt(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0600e1

    const/4 v6, 0x3

    const/4 v5, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/vent/MyApplication;->cgD:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const-string v2, "main"

    sput-object v2, Lcom/vent/MyApplication;->cgD:Ljava/lang/String;

    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/vent/MyApplication;->cgD:Ljava/lang/String;

    const v4, 0x7f0f01c5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/2131623937"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v2, "chat"

    sput-object v2, Lcom/vent/MyApplication;->cgE:Ljava/lang/String;

    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/vent/MyApplication;->cgE:Ljava/lang/String;

    const v4, 0x7f0f01c6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/2131623936"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Application;)V
    .locals 5

    invoke-static {}, Lcom/vent/b/a;->Fp()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0x7f0f01a4

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/qc;->tF()Lcom/google/android/gms/internal/qc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/qc;->AT:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v2, Lcom/google/android/gms/internal/qc;->bbZ:Lcom/google/android/gms/internal/pk;

    if-eqz v0, :cond_1

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/of;->tk()Lcom/google/android/gms/internal/nx;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/oc;

    invoke-direct {v4, v0, p0}, Lcom/google/android/gms/internal/oc;-><init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, v4}, Lcom/google/android/gms/internal/nx;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pk;

    iput-object v0, v2, Lcom/google/android/gms/internal/qc;->bbZ:Lcom/google/android/gms/internal/pk;

    iget-object v0, v2, Lcom/google/android/gms/internal/qc;->bbZ:Lcom/google/android/gms/internal/pk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pk;->initialize()V

    if-eqz v1, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/internal/qc;->bbZ:Lcom/google/android/gms/internal/pk;

    new-instance v4, Lcom/google/android/gms/internal/qd;

    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/qd;-><init>(Lcom/google/android/gms/internal/qc;Landroid/content/Context;)V

    invoke-static {v4}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/pk;->a(Ljava/lang/String;Lcom/google/android/gms/a/a;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MobileAdsSettingManager initialization failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final Bc()Lcom/vent/ba;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DW()V
    .locals 2

    iget-object v0, p0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/b/a;

    invoke-direct {v0}, Lcom/vent/b/a;-><init>()V

    iput-object v0, p0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    iget-object v0, p0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    sget-boolean v1, Lcom/vent/b/a;->clf:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/vent/b/a;->clj:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/vent/b/a;->cli:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/vent/b/a;->cli:Z

    new-instance v1, Lcom/vent/b/a$3;

    invoke-direct {v1, v0, p0}, Lcom/vent/b/a$3;-><init>(Lcom/vent/b/a;Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/vent/b/a;->a(Landroid/content/Context;Lcom/vent/b/a$b;)V

    :cond_0
    return-void
.end method

.method public final DX()V
    .locals 1

    iget-object v0, p0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    invoke-virtual {v0, p0}, Lcom/vent/b/a;->g(Landroid/app/Application;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/b/a;->clf:Z

    invoke-static {p0}, Lcom/vent/b/a;->e(Landroid/app/Application;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    :cond_0
    return-void
.end method

.method public final DY()Lcom/vent/ba;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/ba;

    invoke-direct {v0, p0}, Lcom/vent/ba;-><init>(Lcom/vent/MyApplication;)V

    iput-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    :cond_0
    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final DZ()Lcom/vent/ba;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vent/MyApplication;->DY()Lcom/vent/ba;

    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->El()V

    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Ea()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/vent/d/c;->bD(Landroid/content/Context;)V

    :try_start_0
    const-class v0, Landroid/support/v4/app/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v7, v6

    if-lez v7, :cond_5

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Landroid/support/v4/app/n;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Landroid/support/v4/app/h;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/MyApplication;->cgJ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_1
    :try_start_1
    const-class v0, Lcom/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/MyApplication;->cgI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/MyApplication;->cgK:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/vent/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/vent/MyApplication;->cgF:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/vent/MyApplication;->cgG:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/vent/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    sput-boolean v3, Lcom/vent/MyApplication;->cgw:Z

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/vent/MyApplication;->cgx:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/vent/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/vent/MyApplication;->cgy:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amazon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/vent/MyApplication;->cgA:Z

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    invoke-static {p0}, Lcom/vent/d/e;->bK(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/vent/az;->bu(Landroid/content/Context;)V

    invoke-static {}, Lcom/vent/d/b;->Fy()V

    invoke-static {}, Lcom/vent/a/h;->init()V

    invoke-static {p0}, Lcom/vent/bb;->bw(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/vent/bb;->by(Landroid/content/Context;)V

    invoke-static {}, Lcom/vent/bb;->Ex()V

    sget-boolean v0, Lcom/vent/MyApplication;->cgC:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    :try_start_5
    invoke-static {v0}, Lio/intercom/android/sdk/Intercom;->setLogLevel(I)V

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v0, "android_sdk-2fd97ce49d8a2a98bd09a60f195b3d2cdd4a45a1"

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v3, "yl4xdcql"

    invoke-static {p0, v0, v3}, Lio/intercom/android/sdk/Intercom;->initialize(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    :goto_8
    invoke-static {p0}, Lcom/vent/ba;->d(Landroid/app/Application;)V

    invoke-static {}, Lcom/vent/ae;->Dc()V

    invoke-static {}, Lcom/google/android/gms/common/c;->mR()Lcom/google/android/gms/common/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/c;->w(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_8

    :goto_9
    sput-boolean v1, Lcom/vent/MyApplication;->cgz:Z

    if-eqz v1, :cond_3

    sput-boolean v2, Lcom/vent/bb;->cip:Z

    :cond_3
    sget-boolean v0, Lcom/vent/MyApplication;->cgz:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/google/firebase/a;->am(Landroid/content/Context;)Lcom/google/firebase/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/bb;->ee(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/vent/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/vent/MyApplication$1;-><init>(Lcom/vent/MyApplication;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_8
    move v1, v2

    goto :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method

.method public final onTerminate()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vent/MyApplication;->DX()V

    invoke-static {}, Lcom/vent/s;->CW()V

    invoke-static {}, Lcom/vent/ae;->done()V

    invoke-static {}, Lcom/vent/az;->Ef()V

    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    iput-object v3, p0, Lcom/vent/MyApplication;->cgc:Lcom/vent/ba;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/vent/ba;->a(ZLjava/lang/Runnable;I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vent/ae;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/vent/d/a;->flush()V

    invoke-static {}, Lcom/vent/s;->CW()V

    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    move-object v2, v0

    :goto_0
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_3

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v5, "com.layer."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/vent/MyApplication;->cgI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "io.branch."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "io.intercom."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.google.android.gms."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.google.firebase."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.google.ads."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.app.Dialog.dismiss"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/vent/MyApplication;->cgJ:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    iget-object v0, p0, Lcom/vent/MyApplication;->cgK:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/MyApplication;->cgK:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_2
.end method
