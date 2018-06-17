.class final Landroid/support/transition/ab;
.super Landroid/support/transition/ai;

# interfaces
.implements Landroid/support/transition/ad;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ai;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final add(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/ab;->vr:Landroid/support/transition/ai$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/ai$a;->add(Landroid/view/View;)V

    return-void
.end method

.method public final remove(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/ab;->vr:Landroid/support/transition/ai$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/ai$a;->remove(Landroid/view/View;)V

    return-void
.end method
