.class final Landroid/support/v7/widget/RecyclerView$r;
.super Landroid/support/v7/widget/RecyclerView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "r"
.end annotation


# instance fields
.field final synthetic aeU:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    return-void
.end method

.method private iq()V
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->adB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->adW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->adV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adN:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->aee:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final aa(II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->F(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    if-lez p2, :cond_1

    iget-object v2, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1, p2, v3}, Landroid/support/v7/widget/f;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/f$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Landroid/support/v7/widget/f;->VE:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/v7/widget/f;->VE:I

    iget-object v1, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$r;->iq()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ab(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->F(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    if-lez p2, :cond_1

    iget-object v2, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, p2, v4}, Landroid/support/v7/widget/f;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/f$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Landroid/support/v7/widget/f;->VE:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/support/v7/widget/f;->VE:I

    iget-object v1, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$r;->iq()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ac(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->F(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    if-eq p1, p2, :cond_1

    iget-object v2, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, p1, p2, v4}, Landroid/support/v7/widget/f;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/f$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Landroid/support/v7/widget/f;->VE:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/support/v7/widget/f;->VE:I

    iget-object v1, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$r;->iq()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(IILjava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->F(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    if-lez p2, :cond_1

    iget-object v2, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, p1, p2, p3}, Landroid/support/v7/widget/f;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/f$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Landroid/support/v7/widget/f;->VE:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/support/v7/widget/f;->VE:I

    iget-object v1, v1, Landroid/support/v7/widget/f;->Vy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$r;->iq()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->F(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$u;->afY:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->ac(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adJ:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->ga()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method
