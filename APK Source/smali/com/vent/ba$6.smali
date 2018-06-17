.class final Lcom/vent/ba$6;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba;->Ep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic chs:Lcom/vent/ba;

.field final synthetic chv:Lcom/layer/sdk/LayerClient;


# direct methods
.method constructor <init>(Lcom/vent/ba;Lcom/layer/sdk/LayerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$6;->chs:Lcom/vent/ba;

    iput-object p2, p0, Lcom/vent/ba$6;->chv:Lcom/layer/sdk/LayerClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vent/ba$6;->chv:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$6;->chv:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->close()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/ba$6;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->chm:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$6;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->chm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/vent/ba$6;->chs:Lcom/vent/ba;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/ba;->chm:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
