.class public final Lcom/c/a/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/aa$a;
    }
.end annotation


# instance fields
.field final bMY:Lcom/c/a/d;

.field final bOX:Landroid/os/HandlerThread;

.field bOY:J

.field bOZ:J

.field bPa:J

.field bPb:J

.field bPc:J

.field bPd:J

.field bPe:J

.field bPf:J

.field bPg:I

.field bPh:I

.field bPi:I

.field final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/c/a/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/aa;->bMY:Lcom/c/a/d;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Picasso-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/c/a/aa;->bOX:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/c/a/aa;->bOX:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/c/a/aa;->bOX:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/ag;->a(Landroid/os/Looper;)V

    new-instance v0, Lcom/c/a/aa$a;

    iget-object v1, p0, Lcom/c/a/aa;->bOX:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/c/a/aa$a;-><init>(Landroid/os/Looper;Lcom/c/a/aa;)V

    iput-object v0, p0, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final AB()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method final a(Landroid/graphics/Bitmap;I)V
    .locals 4

    invoke-static {p1}, Lcom/c/a/ag;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
