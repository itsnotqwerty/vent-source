.class final Lcom/google/firebase/iid/u;
.super Ljava/lang/Object;


# instance fields
.field final bfC:Lcom/google/firebase/iid/m;

.field final bfp:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/u;->bfp:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/google/firebase/iid/u;->bfC:Lcom/google/firebase/iid/m;

    :goto_0
    return-void

    :cond_0
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/firebase/iid/m;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/m;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/u;->bfC:Lcom/google/firebase/iid/m;

    iput-object v2, p0, Lcom/google/firebase/iid/u;->bfp:Landroid/os/Messenger;

    goto :goto_0

    :cond_1
    const-string v1, "MessengerIpcClient"

    const-string v2, "Invalid interface descriptor: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
