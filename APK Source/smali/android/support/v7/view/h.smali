.class public final Landroid/support/v7/view/h;
.super Ljava/lang/Object;


# instance fields
.field MO:Z

.field Qo:Landroid/support/v4/view/w;

.field private final Qp:Landroid/support/v4/view/x;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field public final qG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/v;",
            ">;"
        }
    .end annotation
.end field

.field private ug:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/view/h;->ug:J

    new-instance v0, Landroid/support/v7/view/h$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/h$1;-><init>(Landroid/support/v7/view/h;)V

    iput-object v0, p0, Landroid/support/v7/view/h;->Qp:Landroid/support/v4/view/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/v;)Landroid/support/v7/view/h;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final b(Landroid/support/v4/view/w;)Landroid/support/v7/view/h;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/h;->Qo:Landroid/support/v4/view/w;

    :cond_0
    return-object p0
.end method

.method public final b(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/h;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/h;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public final cancel()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->cancel()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    goto :goto_0
.end method

.method public final eS()Landroid/support/v7/view/h;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/view/h;->ug:J

    :cond_0
    return-object p0
.end method

.method public final start()V
    .locals 8

    iget-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/v;

    iget-wide v4, p0, Landroid/support/v7/view/h;->ug:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    iget-wide v4, p0, Landroid/support/v7/view/h;->ug:J

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/v;->e(J)Landroid/support/v4/view/v;

    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/h;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/support/v7/view/h;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, v0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/view/h;->Qo:Landroid/support/v4/view/w;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/view/h;->Qp:Landroid/support/v4/view/x;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;

    :cond_4
    iget-object v0, v0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/h;->MO:Z

    goto :goto_0
.end method
