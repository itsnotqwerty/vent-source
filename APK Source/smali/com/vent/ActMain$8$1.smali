.class final Lcom/vent/ActMain$8$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain$8;->a(Lorg/json/JSONObject;Lio/branch/referral/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXc:Ljava/lang/String;

.field final synthetic bXd:Lcom/vent/ActMain$8;


# direct methods
.method constructor <init>(Lcom/vent/ActMain$8;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iput-object p5, p0, Lcom/vent/ActMain$8$1;->bXc:Ljava/lang/String;

    const v6, 0x7f0f00e1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v2, v0, Lcom/vent/ActMain;->bWI:Z

    iget v0, p0, Lcom/vent/ActMain$8$1;->ccY:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/vent/ActMain$8$1;->ccY:I

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_0

    :try_start_0
    const-class v0, Lcom/vent/a/x;

    iget-object v2, p0, Lcom/vent/ActMain$8$1;->ccV:Lorg/json/JSONObject;

    const-string v3, "inviters"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-static {v0, v2, v3, v4}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;ZI)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vent/ActMain$8$1;->ccV:Lorg/json/JSONObject;

    const-string v3, "invite_tiers"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/vent/a/q;

    iget-object v3, p0, Lcom/vent/ActMain$8$1;->ccV:Lorg/json/JSONObject;

    const-string v4, "invite_tiers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vent/d/b;->b(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/HashMap;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v3, v3, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-object v3, v3, Lcom/vent/ActMain;->bTv:Landroid/support/v4/app/h;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v3, v3, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    invoke-static {v3, v1, v2, v0}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-boolean v0, v0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-boolean v0, v0, Lcom/vent/ActMain;->bWJ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v5, v0, Lcom/vent/ActMain;->bWJ:Z

    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iput-boolean v5, v0, Lcom/vent/ActMain;->bWJ:Z

    iget-object v0, p0, Lcom/vent/ActMain$8$1;->bXd:Lcom/vent/ActMain$8;

    iget-object v0, v0, Lcom/vent/ActMain$8;->bXa:Lcom/vent/ActMain;

    iget-object v1, p0, Lcom/vent/ActMain$8$1;->bXc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method
