.class final Landroid/support/v7/view/menu/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ry:Landroid/support/v7/view/menu/e;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/av;->adi:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->dismiss()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/e$1;->Ry:Landroid/support/v7/view/menu/e;

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->show()V

    goto :goto_0
.end method
