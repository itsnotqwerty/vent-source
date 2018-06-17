.class final Lcom/vent/ae$d;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "bmpcache"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Lcom/vent/ae$f;

    invoke-direct {v0}, Lcom/vent/ae$f;-><init>()V

    sput-object v0, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    sget-object v0, Lcom/vent/ae;->cdh:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
