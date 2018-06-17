.class Landroid/support/transition/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/transition/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ai$a;
    }
.end annotation


# instance fields
.field protected vr:Landroid/support/transition/ai$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/transition/ai$a;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/transition/ai$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ai;)V

    iput-object v0, p0, Landroid/support/transition/ai;->vr:Landroid/support/transition/ai$a;

    return-void
.end method

.method static z(Landroid/view/View;)Landroid/support/transition/ai;
    .locals 5

    const/4 v1, 0x0

    move-object v0, p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/support/transition/ai$a;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/support/transition/ai$a;

    iget-object v0, v0, Landroid/support/transition/ai$a;->vw:Landroid/support/transition/ai;

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/support/transition/ab;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Landroid/support/transition/ab;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final add(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/ai;->vr:Landroid/support/transition/ai$a;

    iget-object v1, v0, Landroid/support/transition/ai$a;->vv:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/ai$a;->vv:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, v0, Landroid/support/transition/ai$a;->vv:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/support/transition/ai$a;->vv:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/transition/ai$a;->invalidate(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public final remove(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/ai;->vr:Landroid/support/transition/ai$a;

    iget-object v1, v0, Landroid/support/transition/ai$a;->vv:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/ai$a;->vv:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/transition/ai$a;->invalidate(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method
