.class public Lcom/layer/sdk/internal/lsdkk/q$a;
.super Lcom/layer/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/layer/a/b/b;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    iput p5, p0, Lcom/layer/sdk/internal/lsdkk/q$a;->a:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkk/q$a;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0, p1}, Lcom/layer/a/b/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
