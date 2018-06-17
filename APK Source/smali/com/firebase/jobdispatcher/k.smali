.class final Lcom/firebase/jobdispatcher/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/o;


# instance fields
.field private final axx:Landroid/os/Messenger;

.field private final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/k;->axx:Landroid/os/Messenger;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/k;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ct(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/k;->axx:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "tag"

    iget-object v4, p0, Lcom/firebase/jobdispatcher/k;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
