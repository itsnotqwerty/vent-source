.class final Landroid/support/design/widget/b$a;
.super Landroid/support/design/widget/SwipeDismissBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior",
        "<",
        "Landroid/support/design/widget/b$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jo:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/b$a;->jo:Landroid/support/design/widget/b;

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/b$e;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b$a;->jo:Landroid/support/design/widget/b;

    iget-object v1, v1, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$a;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b$a;->jo:Landroid/support/design/widget/b;

    iget-object v1, v1, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->b(Landroid/support/design/widget/m$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/b$e;

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/b$a;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/b$e;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final h(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/b$e;

    return v0
.end method
