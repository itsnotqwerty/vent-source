.class final Lio/branch/referral/ag$b;
.super Lio/branch/referral/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/referral/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final cBI:Lio/branch/referral/ag$a;

.field final synthetic cBJ:Lio/branch/referral/ag;


# direct methods
.method public constructor <init>(Lio/branch/referral/ag;Lio/branch/referral/ag$a;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/ag$b;->cBJ:Lio/branch/referral/ag;

    invoke-direct {p0}, Lio/branch/referral/e;-><init>()V

    iput-object p2, p0, Lio/branch/referral/ag$b;->cBI:Lio/branch/referral/ag$a;

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 4

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/branch/referral/ag$b$1;

    invoke-direct {v2, p0, v0}, Lio/branch/referral/ag$b$1;-><init>(Lio/branch/referral/ag$b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x5dc

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lio/branch/referral/ag$b;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lio/branch/referral/e;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/branch/referral/ag$b;->cBI:Lio/branch/referral/ag$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/ag$b;->cBI:Lio/branch/referral/ag$a;

    invoke-interface {v0}, Lio/branch/referral/ag$a;->Gv()V

    :cond_0
    return-void
.end method
