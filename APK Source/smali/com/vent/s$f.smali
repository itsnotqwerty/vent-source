.class final Lcom/vent/s$f;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field ccj:Lcom/google/android/gms/ads/e;

.field cck:J

.field ccl:J

.field ccm:I

.field final ccn:I

.field cco:Landroid/view/ViewGroup;

.field ccp:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput v4, p0, Lcom/vent/s$f;->ccn:I

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v0, 0x44960000    # 1200.0f

    invoke-static {v5, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v0, :cond_2

    :goto_0
    new-instance v1, Lcom/google/android/gms/ads/e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    sget-object v1, Lcom/google/android/gms/ads/d;->azh:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    sget-object v1, Lcom/vent/s;->cbU:[I

    aget v1, v1, v4

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/e;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/vent/s$f;->cco:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$f;->cco:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    invoke-direct {p0}, Lcom/vent/s$f;->CZ()V

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->pause()V

    iget v0, p0, Lcom/vent/s$f;->ccm:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/s$f;->resume()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private CX()V
    .locals 4

    const-wide/32 v0, 0x2bf20

    iget-wide v2, p0, Lcom/vent/s$f;->cck:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/vent/s;->cbY:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/s$f;->ccl:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vent/s$f;->run()V

    goto :goto_0
.end method

.method private CZ()V
    .locals 4

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/c$a;-><init>()V

    sget-object v1, Lcom/vent/bb;->ciy:Landroid/location/Location;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vent/bb;->ciy:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c$a;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c$a;

    :cond_2
    sget-boolean v1, Lcom/vent/t;->ccF:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "npa"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c$a;

    :cond_3
    iget-object v1, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c$a;->ly()Lcom/google/android/gms/ads/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/c;)V

    goto :goto_0
.end method


# virtual methods
.method final CY()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/vent/s$f;->ccm:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/s$f;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$f;->cco:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/s$f;->cco:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/e;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->destroy()V

    iput-object v2, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    :cond_2
    return-void
.end method

.method public final cv(I)V
    .locals 2

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/vent/s$f;->cck:J

    iget-boolean v0, p0, Lcom/vent/s$f;->ccp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final lj()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/s$f;->ccp:Z

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method final pause()V
    .locals 6

    iget v0, p0, Lcom/vent/s$f;->ccm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vent/s$f;->ccm:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/s;->cbY:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/vent/s$f;->cck:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vent/s$f;->ccl:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vent/s$f;->cck:J

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->pause()V

    :cond_0
    return-void
.end method

.method final resume()V
    .locals 2

    iget v0, p0, Lcom/vent/s$f;->ccm:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vent/s$f;->ccm:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$f;->ccj:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->resume()V

    :cond_0
    invoke-direct {p0}, Lcom/vent/s$f;->CX()V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-direct {p0}, Lcom/vent/s$f;->CZ()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/s$f;->cck:J

    invoke-direct {p0}, Lcom/vent/s$f;->CX()V

    return-void
.end method
