.class final Lcom/google/android/gms/common/c$a;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final aCq:Landroid/content/Context;

.field private synthetic aCr:Lcom/google/android/gms/common/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/c;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/c$a;->aCr:Lcom/google/android/gms/common/c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/c$a;->aCq:Landroid/content/Context;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiAvailability"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Don\'t know how to handle this message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/c$a;->aCr:Lcom/google/android/gms/common/c;

    iget-object v1, p0, Lcom/google/android/gms/common/c$a;->aCq:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/m;->w(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/c$a;->aCr:Lcom/google/android/gms/common/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/m;->cC(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/c$a;->aCr:Lcom/google/android/gms/common/c;

    iget-object v2, p0, Lcom/google/android/gms/common/c$a;->aCq:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "n"

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/m;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
