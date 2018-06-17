.class public Lcom/layer/a/b/b;
.super Lcom/layer/a/b/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/layer/a/b/a;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method
