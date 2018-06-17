.class public Lcom/layer/sdk/services/LayerFcmInstanceIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/services/LayerFcmInstanceIdService$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/services/LayerFcmInstanceIdService;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/services/LayerFcmInstanceIdService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method public static handleTokenRefresh(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Lcom/layer/sdk/internal/a;->b()Lcom/layer/sdk/internal/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/layer/sdk/internal/lsdke/h;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdke/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdke/h;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdke/h;->b()Lcom/layer/b/a/a$a;

    move-result-object v1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/layer/sdk/LayerClient$Options;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/sdk/LayerClient$Options;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2, v0}, Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/services/LayerFcmInstanceIdService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Received new FCM token but the LayerClient was not authenticated."

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/services/LayerFcmInstanceIdService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received new FCM token, updating LayerClient: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/layer/sdk/services/LayerFcmInstanceIdService$a;

    invoke-direct {v1, v0}, Lcom/layer/sdk/services/LayerFcmInstanceIdService$a;-><init>(Lcom/layer/sdk/internal/a;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/services/LayerFcmInstanceIdService;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Received new FCM token but a LayerClient was unable to be obtained."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 0

    invoke-static {p0}, Lcom/layer/sdk/services/LayerFcmInstanceIdService;->handleTokenRefresh(Landroid/content/Context;)V

    return-void
.end method
