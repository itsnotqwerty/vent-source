.class final Landroid/support/v7/widget/z$1;
.super Landroid/support/v7/widget/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WE:Landroid/support/v7/widget/z$b;

.field final synthetic WF:Landroid/support/v7/widget/z;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z;Landroid/view/View;Landroid/support/v7/widget/z$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z$1;->WF:Landroid/support/v7/widget/z;

    iput-object p3, p0, Landroid/support/v7/widget/z$1;->WE:Landroid/support/v7/widget/z$b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/aq;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final eY()Landroid/support/v7/view/menu/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z$1;->WE:Landroid/support/v7/widget/z$b;

    return-object v0
.end method

.method public final eZ()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z$1;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/z$b;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z$1;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->a(Landroid/support/v7/widget/z;)Landroid/support/v7/widget/z$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/z$b;->show()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
