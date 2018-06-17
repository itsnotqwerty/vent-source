.class final Lcom/c/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final bMH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final bNo:Lcom/c/a/x;

.field bNp:Lcom/c/a/e;


# direct methods
.method constructor <init>(Lcom/c/a/x;Landroid/widget/ImageView;Lcom/c/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/h;->bNo:Lcom/c/a/x;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/a/h;->bMH:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/c/a/h;->bNp:Lcom/c/a/e;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/c/a/h;->bMH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/c/a/h;->bNo:Lcom/c/a/x;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/c/a/x;->bOS:Z

    invoke-virtual {v1, v2, v3}, Lcom/c/a/x;->aE(II)Lcom/c/a/x;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/h;->bNp:Lcom/c/a/e;

    invoke-virtual {v1, v0, v2}, Lcom/c/a/x;->a(Landroid/widget/ImageView;Lcom/c/a/e;)V

    goto :goto_0
.end method
