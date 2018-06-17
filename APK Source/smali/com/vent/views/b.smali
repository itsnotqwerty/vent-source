.class public final Lcom/vent/views/b;
.super Ljava/lang/Object;


# static fields
.field private static final col:[I


# instance fields
.field private com:I

.field private con:Landroid/view/View;

.field private coo:Landroid/view/View;

.field private cop:Landroid/view/View;

.field coq:Landroid/view/animation/Animation;

.field private cor:Landroid/view/animation/Animation;

.field cos:J

.field cot:Z

.field cou:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vent/views/b;->col:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1cd866
        -0x1cf4b2
        -0x6dd150
        -0xc96a28
        -0xff567a
        -0x3000
        -0x1adda
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09011e

    invoke-virtual {p1, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/b;->con:Landroid/view/View;

    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/vent/views/b;->a(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/b;->con:Landroid/view/View;

    const v0, 0x7f09011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    const v0, 0x7f090120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/vent/views/b;->a(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/support/v7/app/d;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x2

    sget-object v3, Lcom/vent/views/b;->col:[I

    sget-object v4, Lcom/vent/views/b;->col:[I

    array-length v4, v4

    rem-int v4, p1, v4

    aget v3, v3, v4

    aput v3, v1, v2

    sget-object v2, Lcom/vent/views/b;->col:[I

    add-int/lit8 v3, p1, 0x1

    sget-object v4, Lcom/vent/views/b;->col:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v1, v5

    sget-object v2, Lcom/vent/views/b;->col:[I

    add-int/lit8 v3, p1, 0x2

    sget-object v4, Lcom/vent/views/b;->col:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v1, v6

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v1, 0x3f000000    # 0.5f

    const v3, 0x3f6ccccd    # 0.925f

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v1, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    return-object v2
.end method

.method private a(Landroid/support/v7/app/d;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    iput v5, p0, Lcom/vent/views/b;->com:I

    invoke-virtual {p0}, Lcom/vent/views/b;->x()V

    :goto_0
    iget-object v0, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    new-instance v1, Lcom/vent/views/b$1;

    invoke-direct {v1, p0, p1}, Lcom/vent/views/b$1;-><init>(Lcom/vent/views/b;Landroid/support/v7/app/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v0, p0, Lcom/vent/views/b;->com:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    sget-object v1, Lcom/vent/views/b;->col:[I

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/vent/views/b;->a(Landroid/support/v7/app/d;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/vent/views/b;->c(Landroid/support/v7/app/d;)V

    return-void

    :cond_1
    const-string v0, "animpos"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/views/b;->com:I

    const-string v0, "alpha"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x459c4000    # 5000.0f

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    sub-float v0, v4, v0

    invoke-direct {v1, v0, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-boolean v5, p0, Lcom/vent/views/b;->cot:Z

    const-wide/16 v0, 0x1388

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vent/views/b;->cou:J

    goto :goto_0
.end method


# virtual methods
.method public final FC()Landroid/os/Bundle;
    .locals 10

    const-wide/16 v4, 0x1388

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/vent/views/b;->com:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    sget-object v1, Lcom/vent/views/b;->col:[I

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vent/views/b;->cos:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-gez v1, :cond_1

    :goto_0
    long-to-float v1, v2

    const v2, 0x459c4000    # 5000.0f

    div-float/2addr v1, v2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "animpos"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "alpha"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v2

    :cond_1
    cmp-long v1, v6, v4

    if-lez v1, :cond_2

    move-wide v2, v4

    goto :goto_0

    :cond_2
    move-wide v2, v6

    goto :goto_0
.end method

.method public final FD()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    :cond_1
    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/vent/views/b;->con:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/views/b;->con:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/vent/views/b;->con:Landroid/view/View;

    :cond_4
    return-void
.end method

.method final c(Landroid/support/v7/app/d;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/views/b;->con:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    iget v1, p0, Lcom/vent/views/b;->com:I

    invoke-static {p1, v1}, Lcom/vent/views/b;->a(Landroid/support/v7/app/d;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    iget-object v1, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    iget-object v1, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    iget-object v1, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/views/b;->coo:Landroid/view/View;

    iput-object v0, p0, Lcom/vent/views/b;->cop:Landroid/view/View;

    iget v0, p0, Lcom/vent/views/b;->com:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/vent/views/b;->col:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/vent/views/b;->com:I

    return-void
.end method

.method final x()V
    .locals 6

    const-wide/16 v4, 0x1388

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/vent/views/b;->cor:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/views/b;->cot:Z

    return-void
.end method
