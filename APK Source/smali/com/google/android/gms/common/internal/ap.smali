.class final Lcom/google/android/gms/common/internal/ap;
.super Landroid/os/Handler;


# instance fields
.field private synthetic aIr:Lcom/google/android/gms/common/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/al;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static a(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/aq;->unregister()V

    return-void
.end method

.method private static b(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/al;->aIo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->a(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    new-instance v1, Lcom/google/android/gms/common/a;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->c(Lcom/google/android/gms/common/internal/al;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->d(Lcom/google/android/gms/common/internal/al;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->e(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/a;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->e(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/a;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/al;->aId:Lcom/google/android/gms/common/internal/ar;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/ar;->d(Lcom/google/android/gms/common/a;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/a;

    invoke-direct {v0, v6}, Lcom/google/android/gms/common/a;-><init>(I)V

    goto :goto_1

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->e(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->e(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/a;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/al;->aId:Lcom/google/android/gms/common/internal/ar;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/ar;->d(Lcom/google/android/gms/common/a;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/a;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/a;

    invoke-direct {v0, v6}, Lcom/google/android/gms/common/a;-><init>(I)V

    goto :goto_2

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3
    new-instance v1, Lcom/google/android/gms/common/a;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/al;->aId:Lcom/google/android/gms/common/internal/ar;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/ar;->d(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/a;)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->f(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/an;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/al;->f(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/an;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/an;->cG(I)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/google/android/gms/common/internal/al;->aHU:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/common/internal/al;->aHV:J

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;IILandroid/os/IInterface;)Z

    goto/16 :goto_0

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ap;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/aq;->ou()V

    goto/16 :goto_0

    :cond_e
    const-string v0, "GmsClient"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Don\'t know how to handle message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
