.class public abstract Landroid/support/design/widget/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/b$a;,
        Landroid/support/design/widget/b$e;,
        Landroid/support/design/widget/b$c;,
        Landroid/support/design/widget/b$d;,
        Landroid/support/design/widget/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/b",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final je:Landroid/os/Handler;

.field private static final jf:Z


# instance fields
.field final jg:Landroid/view/ViewGroup;

.field public final jh:Landroid/support/design/widget/b$e;

.field private final ji:Landroid/support/design/widget/b$b;

.field jj:I

.field private jk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final jl:Landroid/view/accessibility/AccessibilityManager;

.field final jm:Landroid/support/design/widget/m$a;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/b;->jf:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/b$1;

    invoke-direct {v2}, Landroid/support/design/widget/b$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/b;->je:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/b$b;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/design/widget/b$6;

    invoke-direct {v0, p0}, Landroid/support/design/widget/b$6;-><init>(Landroid/support/design/widget/b;)V

    iput-object v0, p0, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/support/design/widget/b;->jg:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/design/widget/b;->ji:Landroid/support/design/widget/b$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/b;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/design/widget/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/design/widget/p;->d(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/a$h;->design_layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/b;->jg:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/b$e;

    iput-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/b$e;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-static {v0}, Landroid/support/v4/view/r;->L(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-static {v0, v4}, Landroid/support/v4/view/r;->l(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-static {v0, v4}, Landroid/support/v4/view/r;->e(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    new-instance v1, Landroid/support/design/widget/b$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$5;-><init>(Landroid/support/design/widget/b;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    iget-object v0, p0, Landroid/support/design/widget/b;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/design/widget/b;->jl:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/b;)Landroid/support/design/widget/b$b;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/b;->ji:Landroid/support/design/widget/b$b;

    return-object v0
.end method

.method static synthetic bk()Z
    .locals 1

    sget-boolean v0, Landroid/support/design/widget/b;->jf:Z

    return v0
.end method


# virtual methods
.method final bg()V
    .locals 8

    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0}, Landroid/support/design/widget/b$e;->getHeight()I

    move-result v0

    sget-boolean v1, Landroid/support/design/widget/b;->jf:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-static {v1, v0}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v2, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/b$10;

    invoke-direct {v2, p0}, Landroid/support/design/widget/b$10;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/support/design/widget/b$11;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/b$11;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/b$e;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0}, Landroid/support/design/widget/b$e;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/support/design/widget/b$12;

    invoke-direct {v1, p0}, Landroid/support/design/widget/b$12;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b$e;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method final bh()V
    .locals 3

    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    iget-object v2, v0, Landroid/support/design/widget/m;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->d(Landroid/support/design/widget/m$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$b;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/design/widget/b;->jk:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/b;->jk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/b;->jk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method final bi()V
    .locals 3

    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    iget-object v2, v0, Landroid/support/design/widget/m;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->d(Landroid/support/design/widget/m$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    iget-object v1, v0, Landroid/support/design/widget/m;->nE:Landroid/support/design/widget/m$b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/m;->bO()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/design/widget/b;->jk:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/b;->jk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/b;->jk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b$e;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0}, Landroid/support/design/widget/b$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method final bj()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/b;->jl:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s(I)V
    .locals 4

    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    iget-object v2, v0, Landroid/support/design/widget/m;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->d(Landroid/support/design/widget/m$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$b;I)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->e(Landroid/support/design/widget/m$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/m;->nE:Landroid/support/design/widget/m$b;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$b;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final show()V
    .locals 5

    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/b;->jj:I

    iget-object v2, p0, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    iget-object v3, v0, Landroid/support/design/widget/m;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/support/design/widget/m;->d(Landroid/support/design/widget/m$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    iput v1, v2, Landroid/support/design/widget/m$b;->duration:I

    iget-object v1, v0, Landroid/support/design/widget/m;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$b;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/design/widget/m;->e(Landroid/support/design/widget/m$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v0, Landroid/support/design/widget/m;->nE:Landroid/support/design/widget/m$b;

    iput v1, v2, Landroid/support/design/widget/m$b;->duration:I

    :goto_1
    iget-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$b;I)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v4, Landroid/support/design/widget/m$b;

    invoke-direct {v4, v1, v2}, Landroid/support/design/widget/m$b;-><init>(ILandroid/support/design/widget/m$a;)V

    iput-object v4, v0, Landroid/support/design/widget/m;->nE:Landroid/support/design/widget/m$b;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/m;->nD:Landroid/support/design/widget/m$b;

    invoke-virtual {v0}, Landroid/support/design/widget/m;->bO()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
