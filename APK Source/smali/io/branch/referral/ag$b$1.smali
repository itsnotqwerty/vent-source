.class final Lio/branch/referral/ag$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/ag$b;->Bq()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bps:Ljava/util/concurrent/CountDownLatch;

.field final synthetic cBK:Lio/branch/referral/ag$b;


# direct methods
.method constructor <init>(Lio/branch/referral/ag$b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/ag$b$1;->cBK:Lio/branch/referral/ag$b;

    iput-object p2, p0, Lio/branch/referral/ag$b$1;->bps:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lio/branch/referral/ag$b$1;->cBK:Lio/branch/referral/ag$b;

    iget-object v0, v0, Lio/branch/referral/ag$b;->cBJ:Lio/branch/referral/ag;

    invoke-virtual {v0}, Lio/branch/referral/ag;->Hv()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/ag$b$1;->cBK:Lio/branch/referral/ag$b;

    iget-object v1, v1, Lio/branch/referral/ag$b;->cBJ:Lio/branch/referral/ag;

    invoke-virtual {v1, v0}, Lio/branch/referral/ag;->an(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lio/branch/referral/ag$b$1;->cBK:Lio/branch/referral/ag$b;

    iget-object v1, v1, Lio/branch/referral/ag$b;->cBJ:Lio/branch/referral/ag;

    invoke-virtual {v1, v0}, Lio/branch/referral/ag;->ao(Ljava/lang/Object;)I

    iget-object v0, p0, Lio/branch/referral/ag$b$1;->bps:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
