.class public final Lcom/vent/MyFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTokenRefresh()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V

    invoke-virtual {p0}, Lcom/vent/MyFirebaseInstanceIDService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/MyApplication;

    if-nez v0, :cond_0

    const-string v0, "Android is buggy (4)"

    invoke-static {v2, v0}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/layer/sdk/services/LayerFcmInstanceIdService;->handleTokenRefresh(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    sput-boolean v2, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/bb;->ee(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
