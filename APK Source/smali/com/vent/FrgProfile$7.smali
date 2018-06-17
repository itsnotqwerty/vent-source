.class final Lcom/vent/FrgProfile$7;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->DI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/FrgProfile$7;->cfr:Lcom/vent/FrgProfile;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile$7;->cfr:Lcom/vent/FrgProfile;

    iput-boolean v3, v0, Lcom/vent/FrgProfile;->cfk:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/FrgProfile$7;->cfr:Lcom/vent/FrgProfile;

    iget-object v1, p0, Lcom/vent/FrgProfile$7;->ccV:Lorg/json/JSONObject;

    const-string v2, "listen_requests"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, v0, Lcom/vent/FrgProfile;->cfi:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgProfile$7;->cfr:Lcom/vent/FrgProfile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/FrgProfile;->cfj:J

    iget-object v0, p0, Lcom/vent/FrgProfile$7;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DJ()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/vent/FrgProfile$7;->cfr:Lcom/vent/FrgProfile;

    iput v3, v0, Lcom/vent/FrgProfile;->cfi:I

    goto :goto_0
.end method
