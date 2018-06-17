.class final Landroid/support/design/widget/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jo:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/b$7;->jo:Landroid/support/design/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/b$7;->jo:Landroid/support/design/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b;->s(I)V

    return-void
.end method

.method public final u(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b$7;->jo:Landroid/support/design/widget/b;

    iget-object v1, v1, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->a(Landroid/support/design/widget/m$a;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/m;->bN()Landroid/support/design/widget/m;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/b$7;->jo:Landroid/support/design/widget/b;

    iget-object v1, v1, Landroid/support/design/widget/b;->jm:Landroid/support/design/widget/m$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/m;->b(Landroid/support/design/widget/m$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
