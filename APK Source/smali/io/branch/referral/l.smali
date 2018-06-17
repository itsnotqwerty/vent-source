.class public final Lio/branch/referral/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/l$b;,
        Lio/branch/referral/l$a;,
        Lio/branch/referral/l$c;
    }
.end annotation


# static fields
.field private static cxx:Lio/branch/referral/l;


# instance fields
.field cxA:Lio/branch/referral/l$a;

.field cxB:Z

.field cxC:Ljava/lang/String;

.field cxD:Z

.field cxE:Landroid/app/Dialog;

.field cxy:Z

.field cxz:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/referral/l;->cxA:Lio/branch/referral/l$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/branch/referral/l;->cxB:Z

    return-void
.end method

.method public static GL()Lio/branch/referral/l;
    .locals 1

    sget-object v0, Lio/branch/referral/l;->cxx:Lio/branch/referral/l;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/referral/l;

    invoke-direct {v0}, Lio/branch/referral/l;-><init>()V

    sput-object v0, Lio/branch/referral/l;->cxx:Lio/branch/referral/l;

    :cond_0
    sget-object v0, Lio/branch/referral/l;->cxx:Lio/branch/referral/l;

    return-object v0
.end method

.method static br(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method final a(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lio/branch/referral/l;->cxy:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lio/branch/referral/l;->cxB:Z

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p1, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {p3, v0}, Lio/branch/referral/l$b;->eC(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iput-boolean v1, p0, Lio/branch/referral/l;->cxy:Z

    iput-boolean v1, p0, Lio/branch/referral/l;->cxz:Z

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Lio/branch/referral/l$a;->a(Lio/branch/referral/l$a;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lio/branch/referral/l$a;->cxM:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/referral/l;->b(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)V

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lio/branch/referral/l;->cxB:Z

    new-instance v2, Lio/branch/referral/l$c;

    invoke-direct {v2, p0, p1, p2, p3}, Lio/branch/referral/l$c;-><init>(Lio/branch/referral/l;Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lio/branch/referral/l$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    iget-object v0, p1, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {p3, v0}, Lio/branch/referral/l$b;->eC(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;Lio/branch/referral/l$b;)Z
    .locals 2

    new-instance v0, Lio/branch/referral/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/branch/referral/l$a;-><init>(Lio/branch/referral/l;Lorg/json/JSONObject;Ljava/lang/String;B)V

    invoke-virtual {p0, v0, p3, p4}, Lio/branch/referral/l;->a(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)Z

    move-result v0

    return v0
.end method

.method final b(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/branch/referral/l;->cxD:Z

    iget-object v2, p1, Lio/branch/referral/l$a;->cxM:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lio/branch/referral/l$a;->cxM:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lio/branch/referral/l$1;

    invoke-direct {v1, p0, p1, p3, v0}, Lio/branch/referral/l$1;-><init>(Lio/branch/referral/l;Lio/branch/referral/l$a;Lio/branch/referral/l$b;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    return-void
.end method

.method final eJ(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "branch-cta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "accept"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/branch/referral/l;->cxz:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/branch/referral/l;->cxz:Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final i(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lio/branch/referral/l$a;

    invoke-direct {v2, p0, p1, p2, v1}, Lio/branch/referral/l$a;-><init>(Lio/branch/referral/l;Lorg/json/JSONObject;Ljava/lang/String;B)V

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v2, v0}, Lio/branch/referral/l$a;->a(Lio/branch/referral/l$a;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/referral/l$a;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/branch/referral/l$a;-><init>(Lio/branch/referral/l;Lorg/json/JSONObject;Ljava/lang/String;B)V

    iput-object v0, p0, Lio/branch/referral/l;->cxA:Lio/branch/referral/l$a;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
