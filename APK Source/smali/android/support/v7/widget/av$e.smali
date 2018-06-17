.class final Landroid/support/v7/widget/av$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic adk:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-static {v0}, Landroid/support/v4/view/r;->ah(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/widget/an;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget-object v1, v1, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v1}, Landroid/support/v7/widget/an;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v0}, Landroid/support/v7/widget/an;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget v1, v1, Landroid/support/v7/widget/av;->acU:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/widget/av$e;->adk:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->show()V

    :cond_0
    return-void
.end method
