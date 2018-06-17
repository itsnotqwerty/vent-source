.class final Lio/intercom/a/a/a/c/d/e/g$a;
.super Lio/intercom/a/a/a/g/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/g/a/f",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cOQ:J

.field cOR:Landroid/graphics/Bitmap;

.field private final handler:Landroid/os/Handler;

.field final index:I


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/a/a/g/a/f;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/g$a;->handler:Landroid/os/Handler;

    iput p2, p0, Lio/intercom/a/a/a/c/d/e/g$a;->index:I

    iput-wide p3, p0, Lio/intercom/a/a/a/c/d/e/g$a;->cOQ:J

    return-void
.end method


# virtual methods
.method public final synthetic onResourceReady(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d;)V
    .locals 4

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/g$a;->cOR:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g$a;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/g$a;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lio/intercom/a/a/a/c/d/e/g$a;->cOQ:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
