.class final Lcom/google/firebase/iid/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field bfa:Lcom/google/firebase/iid/d;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/e;->bfa:Lcom/google/firebase/iid/d;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/iid/e;->bfa:Lcom/google/firebase/iid/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/e;->bfa:Lcom/google/firebase/iid/d;

    invoke-virtual {v0}, Lcom/google/firebase/iid/d;->uJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->uy()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity changed. Starting background sync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/e;->bfa:Lcom/google/firebase/iid/d;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/google/firebase/iid/e;->bfa:Lcom/google/firebase/iid/d;

    invoke-virtual {v0}, Lcom/google/firebase/iid/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/e;->bfa:Lcom/google/firebase/iid/d;

    goto :goto_0
.end method
