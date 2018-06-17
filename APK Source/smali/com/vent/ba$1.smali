.class final Lcom/vent/ba$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba;-><init>(Lcom/vent/MyApplication;)V
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
.field chq:J

.field final synthetic chr:Lcom/vent/MyApplication;

.field final synthetic chs:Lcom/vent/ba;


# direct methods
.method constructor <init>(Lcom/vent/ba;Lcom/vent/MyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iput-object p2, p0, Lcom/vent/ba$1;->chr:Lcom/vent/MyApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/ba$1;->chq:J

    new-instance v0, Lcom/layer/sdk/LayerClient$Options;

    invoke-direct {v0}, Lcom/layer/sdk/LayerClient$Options;-><init>()V

    sget-object v1, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_EARLIEST_UNREAD_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient$Options;->historicSyncPolicy(Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;)Lcom/layer/sdk/LayerClient$Options;

    const-wide/32 v2, 0xa00000

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/LayerClient$Options;->diskCapacity(J)Lcom/layer/sdk/LayerClient$Options;

    sget-boolean v1, Lcom/vent/MyApplication;->cgw:Z

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient$Options;->useFirebaseCloudMessaging(Z)Lcom/layer/sdk/LayerClient$Options;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient$Options;->setTelemetryEnabled(Z)Lcom/layer/sdk/LayerClient$Options;

    :try_start_0
    iget-object v1, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget-object v2, p0, Lcom/vent/ba$1;->chr:Lcom/vent/MyApplication;

    invoke-static {}, Lcom/vent/bb;->Es()Z

    const-string v3, "layer:///apps/production/326cf64c-d8f4-11e5-b6a9-c01d00006542"

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/LayerClient;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v0, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->registerConnectionListener(Lcom/layer/sdk/listeners/LayerConnectionListener;)Lcom/layer/sdk/LayerClient;

    iget-object v0, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->registerAuthenticationListener(Lcom/layer/sdk/listeners/LayerAuthenticationListener;)Lcom/layer/sdk/LayerClient;

    iget-object v0, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->registerSyncListener(Lcom/layer/sdk/listeners/LayerSyncListener;)Lcom/layer/sdk/LayerClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/ba$1;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iput v0, v2, Lcom/vent/ba;->chd:I

    iget-object v2, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget-object v3, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget v3, v3, Lcom/vent/ba;->chd:I

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/vent/ba;->aZ(Z)V

    iget-object v0, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    iget-boolean v2, v0, Lcom/vent/ba;->chg:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v2, v0}, Lcom/layer/sdk/LayerClient;->registerEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    iput-boolean v1, v0, Lcom/vent/ba;->chg:Z

    :cond_1
    iget-object v0, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    const/4 v1, 0x2

    iput v1, v0, Lcom/vent/ba;->state:I

    iget-object v0, p0, Lcom/vent/ba$1;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Ej()V

    iget-wide v0, p0, Lcom/vent/ba$1;->chq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/vent/ba$1;->chq:J

    sput-wide v0, Lcom/vent/bb;->ciX:J

    invoke-static {}, Lcom/vent/bb;->EB()V

    :cond_2
    return-void
.end method
