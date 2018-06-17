.class final Lcom/firebase/jobdispatcher/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final axS:Lcom/firebase/jobdispatcher/r;

.field final axT:Lcom/firebase/jobdispatcher/l;


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/r;Lcom/firebase/jobdispatcher/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/s$a;->axS:Lcom/firebase/jobdispatcher/r;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/s$a;->axT:Lcom/firebase/jobdispatcher/l;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/r;Lcom/firebase/jobdispatcher/l;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/s$a;-><init>(Lcom/firebase/jobdispatcher/r;Lcom/firebase/jobdispatcher/l;)V

    return-void
.end method


# virtual methods
.method final cu(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/s$a;->axT:Lcom/firebase/jobdispatcher/l;

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kK()Lcom/firebase/jobdispatcher/p;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/jobdispatcher/s$a;->axS:Lcom/firebase/jobdispatcher/r;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/firebase/jobdispatcher/p;->a(Lcom/firebase/jobdispatcher/r;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/firebase/jobdispatcher/l;->a(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FJD.JobService"

    const-string v2, "Failed to send result to driver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
