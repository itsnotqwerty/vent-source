.class public final Lcom/layer/sdk/LayerClient$Options;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/LayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

.field private transient i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private transient r:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    sget-object v0, Lcom/layer/sdk/internal/a;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    const-wide/16 v0, 0x800

    iput-wide v0, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    sget-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_EARLIEST_UNREAD_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->i:Z

    const-string v0, "https://conf.lyr8.net/conf"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    const-string v0, "https://certs.lyr8.net/certificates"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    const-string v0, "https://sync.lyr8.net"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    const-string v0, "https://sync.lyr8.net/"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    const-string v0, "https://telemetry.layer.com/"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    sget-object v0, Lcom/layer/sdk/internal/a;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    const-wide/16 v0, 0x800

    iput-wide v0, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    sget-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_EARLIEST_UNREAD_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->i:Z

    const-string v0, "https://conf.lyr8.net/conf"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    const-string v0, "https://certs.lyr8.net/certificates"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    const-string v0, "https://sync.lyr8.net"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    const-string v0, "https://sync.lyr8.net/"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    const-string v0, "https://telemetry.layer.com/"

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    iput-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->r:Z

    const-string v0, "layer_client_options"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "skipConfigCheck"

    iget-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    const-string v1, "broadcastPushForeground"

    iget-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    const-string v1, "useFcm"

    iget-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->c:Z

    const-string v1, "alternateFcmSenderId"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->d:Ljava/lang/String;

    const-string v1, "autoDownloadMimeTypes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    const-string v1, "autoDownloadSizeThreshold"

    iget-wide v2, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    const-string v1, "diskCapacity"

    iget-wide v2, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    const-string v1, "historicSyncPolicy"

    iget-object v2, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v2}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->valueOf(Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    const-string v1, "customEndpointConf"

    iget-object v2, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    const-string v1, "customEndpointCert"

    iget-object v2, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    const-string v1, "customEndpointAuth"

    iget-object v2, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    const-string v1, "customEndpointSync"

    iget-object v2, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    const-string v1, "customEndpointTelemetry"

    iget-object v2, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    const-string v1, "isTelemetryEnabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    const-string v1, "uiSdkVersion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->p:Ljava/lang/String;

    const-string v1, "layerMessengerVersion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->q:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/LayerClient;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "No saved Options exist, using default Options"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final alternateFcmSenderId(Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/LayerClient$Options;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final autoDownloadMimeTypes(Ljava/util/Collection;)Lcom/layer/sdk/LayerClient$Options;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/LayerClient$Options;"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    return-object p0
.end method

.method public final autoDownloadSizeThreshold(J)Lcom/layer/sdk/LayerClient$Options;
    .locals 1

    iput-wide p1, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    return-object p0
.end method

.method public final broadcastPushInForeground(Z)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-boolean p1, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    return-object p0
.end method

.method public final clone()Lcom/layer/sdk/LayerClient$Options;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/LayerClient$Options;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Options is not cloneable?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/layer/sdk/LayerClient$Options;->clone()Lcom/layer/sdk/LayerClient$Options;

    move-result-object v0

    return-object v0
.end method

.method public final customEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/layer/sdk/LayerClient$Options;->customEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options;

    move-result-object v0

    return-object v0
.end method

.method public final customEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "`certUrl` cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "`authUrl` cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "`syncUrl` cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p5, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->i:Z

    return-object p0
.end method

.method public final diskCapacity(J)Lcom/layer/sdk/LayerClient$Options;
    .locals 1

    iput-wide p1, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    return-object p0
.end method

.method public final getAlternateFcmSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoDownloadMimeTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    return-object v0
.end method

.method public final getAutoDownloadSizeThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    return-wide v0
.end method

.method public final getCustomEndpointAuth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEndpointCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEndpointConf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEndpointSync()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEndpointTelemetry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiskCapacity()J
    .locals 2

    iget-wide v0, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    return-wide v0
.end method

.method public final getHistoricSyncPolicy()Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    return-object v0
.end method

.method public final getLayerMessengerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getUiSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/LayerClient$Options;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final historicSyncPolicy(Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    return-object p0
.end method

.method public final isBroadcastPushInForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    return v0
.end method

.method public final isConfigurationCheckSkipped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    return v0
.end method

.method public final isCustomEndpointSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->i:Z

    return v0
.end method

.method public final isTelemetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    return v0
.end method

.method public final isTelemetryEnabledSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->r:Z

    return v0
.end method

.method public final isUsingFirebaseCloudMessaging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->c:Z

    return v0
.end method

.method public final persist(Landroid/content/Context;)V
    .locals 6

    const-string v0, "layer_client_options"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skipConfigCheck"

    iget-boolean v2, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "broadcastPushForeground"

    iget-boolean v3, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "useFcm"

    iget-boolean v3, p0, Lcom/layer/sdk/LayerClient$Options;->c:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "alternateFcmSenderId"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "autoDownloadSizeThreshold"

    iget-wide v4, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "diskCapacity"

    iget-wide v4, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "historicSyncPolicy"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v3}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "customEndpointConf"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "customEndpointCert"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "customEndpointAuth"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "customEndpointSync"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "customEndpointTelemetry"

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isTelemetryEnabled"

    iget-boolean v3, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    if-nez v1, :cond_0

    const-string v1, "autoDownloadMimeTypes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v1, "autoDownloadMimeTypes"

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final setLayerMessengerVersion(Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/LayerClient$Options;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final setTelemetryEnabled(Z)Lcom/layer/sdk/LayerClient$Options;
    .locals 1

    iput-boolean p1, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/LayerClient$Options;->r:Z

    return-object p0
.end method

.method public final setUiSdkVersion(Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/LayerClient$Options;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final skipConfigurationCheck(Z)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-boolean p1, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayerClient.Options{skipConfigurationCheck="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", broadcastPushForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useFcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alternateFcmSenderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoDownloadMimeTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->e:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoDownloadSizeThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/layer/sdk/LayerClient$Options;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diskCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/layer/sdk/LayerClient$Options;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", historicSyncPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->h:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telemetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTelemetryEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/sdk/LayerClient$Options;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiSdkVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layerMessengerVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/LayerClient$Options;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final useFirebaseCloudMessaging(Z)Lcom/layer/sdk/LayerClient$Options;
    .locals 0

    iput-boolean p1, p0, Lcom/layer/sdk/LayerClient$Options;->c:Z

    return-object p0
.end method
