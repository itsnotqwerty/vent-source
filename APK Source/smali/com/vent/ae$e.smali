.class final Lcom/vent/ae$e;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vent/ae$c;

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dm()V

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/vent/ae$c;->cdL:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vent/ae$c;->cdL:Z

    sget-object v1, Lcom/vent/ae;->cde:Ljava/util/Map;

    iget-object v2, v0, Lcom/vent/ae$c;->cdE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/vent/ae$c;->Dm()V

    iget-object v1, v0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/vent/ae$c;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
