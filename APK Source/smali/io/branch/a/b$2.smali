.class final Lio/branch/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cvc:Lio/branch/a/b;


# direct methods
.method constructor <init>(Lio/branch/a/b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    iget-object v1, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    iget-object v1, v1, Lio/branch/a/b;->cvb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    iget v0, v0, Lio/branch/a/b;->cuU:I

    iget-object v1, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    iget v1, v1, Lio/branch/a/b;->cuT:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    iget-object v1, p0, Lio/branch/a/b$2;->cvc:Lio/branch/a/b;

    iget-object v1, v1, Lio/branch/a/b;->cvb:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
