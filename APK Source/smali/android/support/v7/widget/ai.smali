.class public final Landroid/support/v7/widget/ai;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ai$b;,
        Landroid/support/v7/widget/ai$a;
    }
.end annotation


# instance fields
.field final XA:Landroid/support/v7/widget/ai$a;

.field final XB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final Xz:Landroid/support/v7/widget/ai$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ai$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    new-instance v0, Landroid/support/v7/widget/ai$a;

    invoke-direct {v0}, Landroid/support/v7/widget/ai$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    if-gez p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0}, Landroid/support/v7/widget/ai$b;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v1, v0, p4}, Landroid/support/v7/widget/ai$a;->f(IZ)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ai;->ay(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v1, p1, v0, p3}, Landroid/support/v7/widget/ai$b;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ai;->bk(I)I

    move-result v0

    goto :goto_0
.end method

.method final a(Landroid/view/View;IZ)V
    .locals 2

    if-gez p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0}, Landroid/support/v7/widget/ai$b;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v1, v0, p3}, Landroid/support/v7/widget/ai$a;->f(IZ)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ai;->ay(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/ai$b;->addView(Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ai;->bk(I)I

    move-result v0

    goto :goto_0
.end method

.method final aA(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final ay(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ai$b;->aC(Landroid/view/View;)V

    return-void
.end method

.method final az(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ai$b;->aD(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final bk(I)I
    .locals 4

    const/4 v1, -0x1

    if-gez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0}, Landroid/support/v7/widget/ai$b;->getChildCount()I

    move-result v2

    move v0, p1

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai$a;->bn(I)I

    move-result v3

    sub-int v3, v0, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai$a;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final bl(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ai$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final detachViewFromParent(I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ai;->bk(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai$a;->bm(I)Z

    iget-object v1, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ai$b;->detachViewFromParent(I)V

    return-void
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ai;->bk(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ai$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getChildCount()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0}, Landroid/support/v7/widget/ai$b;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final gw()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0}, Landroid/support/v7/widget/ai$b;->getChildCount()I

    move-result v0

    return v0
.end method

.method final indexOfChild(Landroid/view/View;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ai$b;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai$a;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ai$a;->bn(I)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ai;->XB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
