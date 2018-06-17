.class final Lcom/vent/ba$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ba;->onAuthenticationChallenge(Lcom/layer/sdk/LayerClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic chs:Lcom/vent/ba;


# direct methods
.method constructor <init>(Lcom/vent/ba;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/ba$2;->bYn:Lorg/json/JSONObject;

    const-string v1, "nonce"

    invoke-static {v0, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->cho:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget-boolean v0, v0, Lcom/vent/ba;->cha:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/ba$2;->ccV:Lorg/json/JSONObject;

    const-string v1, "identity_token"

    invoke-static {v0, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget-object v1, v1, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/LayerClient;->answerAuthenticationChallenge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vent/bb;->ciH:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_3
    iget-object v0, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0}, Lcom/layer/sdk/LayerClient;->deauthenticate()Lcom/layer/sdk/LayerClient;

    :cond_4
    iget v0, p0, Lcom/vent/ba$2;->ccY:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/vent/ba$2;->ccY:I

    const/16 v1, 0x257

    if-le v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    const/4 v1, 0x0

    iput v1, v0, Lcom/vent/ba;->chn:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->state:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/vent/ba$2;->chs:Lcom/vent/ba;

    iput v2, v0, Lcom/vent/ba;->state:I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
