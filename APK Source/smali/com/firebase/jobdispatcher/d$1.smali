.class final Lcom/firebase/jobdispatcher/d$1;
.super Lcom/firebase/jobdispatcher/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axl:Lcom/firebase/jobdispatcher/d;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/d;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/d$1;->axl:Lcom/firebase/jobdispatcher/d;

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;I)V
    .locals 2

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kK()Lcom/firebase/jobdispatcher/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/p;->g(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FJD.ExternalReceiver"

    const-string v1, "jobFinished: unknown invocation provided"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/d$1;->axl:Lcom/firebase/jobdispatcher/d;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/q$a;->kT()Lcom/firebase/jobdispatcher/q;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/firebase/jobdispatcher/d;->a(Lcom/firebase/jobdispatcher/d;Lcom/firebase/jobdispatcher/q;I)V

    goto :goto_0
.end method
