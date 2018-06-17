.class public Lcom/layer/sdk/internal/lsdkk/q$b;
.super Lcom/layer/a/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/layer/a/b/c;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V

    iput p6, p0, Lcom/layer/sdk/internal/lsdkk/q$b;->a:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkk/q$b;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0, p1}, Lcom/layer/a/b/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
