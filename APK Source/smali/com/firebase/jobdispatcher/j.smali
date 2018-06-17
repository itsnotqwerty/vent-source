.class final Lcom/firebase/jobdispatcher/j;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final axw:Lcom/firebase/jobdispatcher/GooglePlayReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/firebase/jobdispatcher/GooglePlayReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/firebase/jobdispatcher/j;->axw:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/firebase/jobdispatcher/j;->axw:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    :try_start_0
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const-string v0, "FJD.GooglePlayReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Message was not sent from GCM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    const-string v0, "FJD.GooglePlayReceiver"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Invalid start execution message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/firebase/jobdispatcher/k;

    invoke-direct {v3, v1, v2}, Lcom/firebase/jobdispatcher/k;-><init>(Landroid/os/Messenger;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a(Lcom/firebase/jobdispatcher/o;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/j;->axw:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kH()Lcom/firebase/jobdispatcher/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/firebase/jobdispatcher/d;->a(Lcom/firebase/jobdispatcher/q;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kK()Lcom/firebase/jobdispatcher/p;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/p;->g(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q$a;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "FJD.GooglePlayReceiver"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Invalid stop execution message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/q$a;->kT()Lcom/firebase/jobdispatcher/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/firebase/jobdispatcher/d;->a(Lcom/firebase/jobdispatcher/q;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
