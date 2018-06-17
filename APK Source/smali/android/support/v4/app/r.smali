.class public abstract Landroid/support/v4/app/r;
.super Landroid/support/v4/view/o;


# instance fields
.field private yA:Landroid/support/v4/app/t;

.field private yB:Landroid/support/v4/app/i;

.field private final yz:Landroid/support/v4/app/n;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    iput-object v0, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    iput-object p1, p0, Landroid/support/v4/app/r;->yz:Landroid/support/v4/app/n;

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/r;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    :cond_0
    int-to-long v2, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/r;->a(IJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/r;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v6}, Landroid/support/v4/app/i;->setMenuVisibility(Z)V

    invoke-virtual {v0, v6}, Landroid/support/v4/app/i;->setUserVisibleHint(Z)V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v4/app/r;->ac(I)Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Landroid/support/v4/app/r;->a(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/support/v4/app/i;

    invoke-virtual {p2}, Landroid/support/v4/app/i;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract ac(I)Landroid/support/v4/app/i;
.end method

.method public final c(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewPager with adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final cU()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->commitNowAllowingStateLoss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/r;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/r;->yA:Landroid/support/v4/app/t;

    check-cast p1, Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    return-void
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Landroid/support/v4/app/i;

    iget-object v0, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setMenuVisibility(Z)V

    iget-object v0, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/i;->setMenuVisibility(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v4/app/i;->setUserVisibleHint(Z)V

    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/r;->yB:Landroid/support/v4/app/i;

    :cond_2
    return-void
.end method
