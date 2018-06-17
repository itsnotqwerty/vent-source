.class public Lcom/vent/a/y;
.super Lcom/vent/a/x;


# instance fields
.field public ceB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public cjA:Ljava/util/Date;

.field public cjB:Ljava/util/Date;

.field public cjE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public ckQ:Ljava/lang/String;

.field public ckR:Ljava/util/Date;

.field public ckS:Lcom/vent/a/m;

.field public ckT:I

.field public ckU:I

.field public ckV:I

.field public ckW:I

.field public ckj:I

.field public ckk:I

.field public ckm:Ljava/lang/String;

.field public ckn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/x;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vent/a/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vent/a/x;-><init>(Lcom/vent/a/x;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vent/a/y;-><init>(Lorg/json/JSONObject;ZB)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vent/a/y;-><init>(Lorg/json/JSONObject;ZB)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;ZB)V
    .locals 7

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/vent/a/x;-><init>(Lorg/json/JSONObject;Z)V

    if-eqz p2, :cond_8

    :try_start_0
    iget v2, p0, Lcom/vent/a/y;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vent/a/y;->flags:I

    const-string v2, "first_vented_at"

    invoke-static {p1, v2}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    const-string v2, "created_at"

    invoke-static {p1, v2}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    const-string v2, "updated_at"

    invoke-static {p1, v2}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/vent/a/y;->cjB:Ljava/util/Date;

    iget v5, p0, Lcom/vent/a/y;->flags:I

    const-string v2, "confirmed_email"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x100

    move v4, v2

    :goto_0
    const-string v2, "messages_enabled"

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x400

    :goto_1
    or-int/2addr v4, v2

    const-string v2, "typing_indicators_enabled"

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x800

    :goto_2
    or-int/2addr v4, v2

    const-string v2, "read_receipts_enabled"

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x1000

    :goto_3
    or-int/2addr v2, v4

    or-int/2addr v2, v5

    iput v2, p0, Lcom/vent/a/y;->flags:I

    const-string v2, "nsfw_setting"

    const-string v4, "collapse"

    invoke-static {p1, v2, v4}, Lcom/vent/d/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_4
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/vent/a/y;->ckU:I

    :goto_5
    iget v3, p0, Lcom/vent/a/y;->flags:I

    const-string v2, "has_private_bio"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x2000

    :goto_6
    or-int/2addr v2, v3

    iput v2, p0, Lcom/vent/a/y;->flags:I

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/vent/a/y;->Fb()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "bio"

    invoke-static {p1, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    const-class v1, Lcom/vent/a/x;

    const-string v2, "mentioned_users"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    const-string v1, "links"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/r;->b(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/vent/a/y;->Fa()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "invite_tier_id"

    invoke-static {p1, v1}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    const-string v1, "vent_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vent/a/y;->ckk:I

    const-string v1, "listening_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vent/a/y;->ckT:I

    const-string v1, "listener_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vent/a/y;->ckj:I

    :cond_6
    const-string v1, "interests"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/m;->a(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    :cond_7
    const-string v1, "yob"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vent/a/y;->ckV:I

    const-string v1, "suggestion_reason"

    invoke-static {p1, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "last_vented_to"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "privacy_setting"

    invoke-static {v0, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/vent/a/z;->ei(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckW:I

    :cond_8
    :goto_7
    return-void

    :cond_9
    move v4, v0

    goto/16 :goto_0

    :cond_a
    move v2, v0

    goto/16 :goto_1

    :cond_b
    move v2, v0

    goto/16 :goto_2

    :cond_c
    move v2, v0

    goto/16 :goto_3

    :sswitch_0
    const-string v3, "show"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto/16 :goto_4

    :sswitch_1
    const-string v3, "hide"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto/16 :goto_4

    :sswitch_2
    const-string v5, "collapse"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto/16 :goto_4

    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/vent/a/y;->ckU:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :pswitch_1
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Lcom/vent/a/y;->ckU:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_d
    move v2, v0

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        -0x25acdc53 -> :sswitch_2
        0x30dd42 -> :sswitch_1
        0x35dafd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final EK()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/vent/a/x;->EK()Lorg/json/JSONObject;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/vent/a/y;->Fd()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v4, "has_private_bio"

    iget v2, p0, Lcom/vent/a/y;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_7

    move v2, v0

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "messages_enabled"

    iget v2, p0, Lcom/vent/a/y;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_8

    move v2, v0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "typing_indicators_enabled"

    iget v2, p0, Lcom/vent/a/y;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_9

    move v2, v0

    :goto_2
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "read_receipts_enabled"

    iget v2, p0, Lcom/vent/a/y;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_a

    move v2, v0

    :goto_3
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "confirmed_email"

    iget v4, p0, Lcom/vent/a/y;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_b

    :goto_4
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "created_at"

    iget-object v1, p0, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    invoke-static {v1}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "updated_at"

    iget-object v1, p0, Lcom/vent/a/y;->cjB:Ljava/util/Date;

    invoke-static {v1}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "first_vented_at"

    iget-object v1, p0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    invoke-static {v1}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vent_count"

    iget v1, p0, Lcom/vent/a/y;->ckk:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "listening_count"

    iget v1, p0, Lcom/vent/a/y;->ckT:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "listener_count"

    iget v1, p0, Lcom/vent/a/y;->ckj:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bio"

    iget-object v1, p0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mentioned_users"

    iget-object v1, p0, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    invoke-static {v1}, Lcom/vent/d/b;->k(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "links"

    iget-object v1, p0, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/vent/d/b;->k(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "suggestion_reason"

    iget-object v1, p0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    if-eqz v0, :cond_4

    const-string v0, "invite_tier_id"

    iget-object v1, p0, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "nsfw_setting"

    iget v1, p0, Lcom/vent/a/y;->ckU:I

    invoke-static {v1}, Lcom/vent/a/y;->eM(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/vent/a/y;->ckV:I

    if-lez v0, :cond_5

    const-string v0, "yob"

    iget v1, p0, Lcom/vent/a/y;->ckV:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "privacy_setting"

    iget v2, p0, Lcom/vent/a/y;->ckW:I

    invoke-static {v2}, Lcom/vent/a/z;->eN(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_vented_to"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "interests"

    iget-object v1, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/vent/a/m;->h(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_5
    return-object v3

    :cond_7
    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto/16 :goto_1

    :cond_9
    move v2, v1

    goto/16 :goto_2

    :cond_a
    move v2, v1

    goto/16 :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method final synthetic a(Lcom/vent/a/c;)V
    .locals 0

    check-cast p1, Lcom/vent/a/x;

    invoke-virtual {p0, p1}, Lcom/vent/a/y;->d(Lcom/vent/a/x;)V

    return-void
.end method

.method final d(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/vent/a/x;->d(Landroid/os/Parcel;)V

    iget v0, p0, Lcom/vent/a/y;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->cjB:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckU:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    sget-object v0, Lcom/vent/a/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->d(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckT:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckj:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckV:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/y;->ckW:I

    invoke-static {p1}, Lcom/vent/d/d;->h(Landroid/os/Parcel;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method final d(Lcom/vent/a/x;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/a/x;->d(Lcom/vent/a/x;)V

    instance-of v0, p1, Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/vent/a/x;->flags:I

    iput v0, p0, Lcom/vent/a/y;->flags:I

    check-cast p1, Lcom/vent/a/y;

    iget-object v0, p1, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    iget-object v0, p1, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    iput-object v0, p0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    iget-object v0, p1, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    iput-object v0, p0, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    iget-object v0, p1, Lcom/vent/a/y;->cjB:Ljava/util/Date;

    iput-object v0, p0, Lcom/vent/a/y;->cjB:Ljava/util/Date;

    iget-object v0, p1, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    iget-object v0, p1, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    iget-object v0, p1, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    iput-object v0, p0, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    iget v0, p1, Lcom/vent/a/y;->ckk:I

    iput v0, p0, Lcom/vent/a/y;->ckk:I

    iget v0, p1, Lcom/vent/a/y;->ckT:I

    iput v0, p0, Lcom/vent/a/y;->ckT:I

    iget v0, p1, Lcom/vent/a/y;->ckj:I

    iput v0, p0, Lcom/vent/a/y;->ckj:I

    iget v0, p1, Lcom/vent/a/y;->ckU:I

    iput v0, p0, Lcom/vent/a/y;->ckU:I

    iget v0, p1, Lcom/vent/a/y;->ckV:I

    iput v0, p0, Lcom/vent/a/y;->ckV:I

    iget v0, p1, Lcom/vent/a/y;->ckU:I

    iput v0, p0, Lcom/vent/a/y;->ckU:I

    iget v0, p1, Lcom/vent/a/y;->ckP:I

    iput v0, p0, Lcom/vent/a/y;->ckP:I

    iget-object v0, p1, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    if-nez v0, :cond_3

    :goto_2
    iput-object v1, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/x;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/y;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/vent/a/y;->cjB:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    iget v0, p0, Lcom/vent/a/y;->ckU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/y;->ckk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/y;->ckT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/y;->ckj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/y;->ckV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vent/a/y;->ckW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Collection;)V

    :cond_0
    return-void
.end method
