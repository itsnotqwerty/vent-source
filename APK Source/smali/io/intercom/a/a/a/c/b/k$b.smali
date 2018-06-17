.class final Lio/intercom/a/a/a/c/b/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/intercom/a/a/a/c/b/k;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v1}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v1, v0, Lio/intercom/a/a/a/c/b/k;->cIs:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/k;->Is()V

    :goto_0
    return v6

    :cond_0
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v1, v0, Lio/intercom/a/a/a/c/b/k;->cKD:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cIN:Lio/intercom/a/a/a/c/b/u;

    iget-boolean v2, v0, Lio/intercom/a/a/a/c/b/k;->cIM:Z

    new-instance v3, Lio/intercom/a/a/a/c/b/o;

    invoke-direct {v3, v1, v2, v6}, Lio/intercom/a/a/a/c/b/o;-><init>(Lio/intercom/a/a/a/c/b/u;ZZ)V

    iput-object v3, v0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    iput-boolean v6, v0, Lio/intercom/a/a/a/c/b/k;->cKD:Z

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/o;->acquire()V

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKr:Lio/intercom/a/a/a/c/b/l;

    iget-object v2, v0, Lio/intercom/a/a/a/c/b/k;->cIL:Lio/intercom/a/a/a/c/h;

    iget-object v3, v0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    invoke-interface {v1, v0, v2, v3}, Lio/intercom/a/a/a/c/b/l;->a(Lio/intercom/a/a/a/c/b/k;Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/a/a/a/g/h;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/b/k;->b(Lio/intercom/a/a/a/g/h;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    invoke-virtual {v4}, Lio/intercom/a/a/a/c/b/o;->acquire()V

    iget-object v4, v0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    iget-object v5, v0, Lio/intercom/a/a/a/c/b/k;->cJF:Lio/intercom/a/a/a/c/a;

    invoke-interface {v1, v4, v5}, Lio/intercom/a/a/a/g/h;->a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/o;->release()V

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/k;->Is()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/k;->It()V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v1}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v1, v0, Lio/intercom/a/a/a/c/b/k;->cIs:Z

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/k;->cKr:Lio/intercom/a/a/a/c/b/l;

    iget-object v2, v0, Lio/intercom/a/a/a/c/b/k;->cIL:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v0, v2}, Lio/intercom/a/a/a/c/b/l;->a(Lio/intercom/a/a/a/c/b/k;Lio/intercom/a/a/a/c/h;)V

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/k;->Is()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
