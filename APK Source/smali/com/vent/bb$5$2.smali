.class final Lcom/vent/bb$5$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/bb$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cjv:Lcom/vent/bb$5;

.field final synthetic cjw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vent/bb$5;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/bb$5$2;->cjv:Lcom/vent/bb$5;

    iput-object p4, p0, Lcom/vent/bb$5$2;->cjw:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/bb$5$2;->ccV:Lorg/json/JSONObject;

    const-string v2, "device"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/bb$5$2;->ccV:Lorg/json/JSONObject;

    const-string v2, "device"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/vent/bb$5$2;->cjw:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    :cond_0
    :goto_1
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vent/bb$5$2;->cjw:Ljava/lang/String;

    sget-object v2, Lcom/vent/bb;->ciH:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object v1, Lcom/vent/bb;->ciH:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciI:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    goto :goto_1
.end method
