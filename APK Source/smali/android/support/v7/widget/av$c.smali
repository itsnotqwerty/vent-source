.class final Landroid/support/v7/widget/av$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic adk:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/av$c;->adk:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$c;->adk:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$c;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av$c;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/av$c;->adk:Landroid/support/v7/widget/av;

    iget-object v1, v1, Landroid/support/v7/widget/av;->adc:Landroid/support/v7/widget/av$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v7/widget/av$c;->adk:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/av;->adc:Landroid/support/v7/widget/av$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/av$e;->run()V

    :cond_0
    return-void
.end method
