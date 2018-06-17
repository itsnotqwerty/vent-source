.class final Lcom/vent/ba$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba;->onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic chs:Lcom/vent/ba;


# direct methods
.method constructor <init>(Lcom/vent/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$7;->chs:Lcom/vent/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ba$7;->chs:Lcom/vent/ba;

    iget-boolean v0, v0, Lcom/vent/ba;->cha:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$7;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->state:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$7;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$7;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->getAuthenticatedUser()Lcom/layer/sdk/messaging/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vent/a/m;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$7;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->En()V

    :cond_0
    return-void
.end method
