.class public Lcom/vent/a/x;
.super Lcom/vent/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/c",
        "<",
        "Lcom/vent/a/x;",
        "Lcom/vent/a/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ckN:Ljava/lang/String;

.field public ckO:Lcom/vent/a/m;

.field public ckP:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vent/a/c$a;

    const-class v1, Lcom/vent/a/x;

    const-class v2, Lcom/vent/a/y;

    invoke-direct {v0, v1, v2}, Lcom/vent/a/c$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vent/a/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vent/a/c;-><init>(Lcom/vent/a/c;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/vent/a/c;-><init>(Lorg/json/JSONObject;B)V

    :try_start_0
    iget-object v0, p0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    if-nez v0, :cond_0

    const-string v0, "user_id"

    invoke-static {p1, v0}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    :cond_0
    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    const-string v0, "current_emotion_id"

    invoke-static {p1, v0}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    const-string v0, "profile_image_url"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "profile_image_versions"

    invoke-static {p1, v0}, Lcom/vent/d/b;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/c;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    :cond_1
    const-string v0, "official_staff_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vent/a/x;->ckP:I

    iget v3, p0, Lcom/vent/a/x;->flags:I

    const-string v0, "account_is_public"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    move v2, v0

    :goto_0
    const-string v0, "you_listen_to"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    or-int/2addr v2, v0

    const-string v0, "listens_to_you"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_2
    or-int/2addr v2, v0

    const-string v0, "blocked_by_you"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    :goto_3
    or-int/2addr v2, v0

    const-string v0, "is_blocking_you"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x20

    :goto_4
    or-int/2addr v2, v0

    const-string v0, "you_requested_listen_to"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x40

    :goto_5
    or-int/2addr v2, v0

    const-string v0, "requested_listen_to_you"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x80

    :goto_6
    or-int/2addr v2, v0

    const-string v0, "you_subscribed_to"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x200

    :goto_7
    or-int/2addr v2, v0

    const-string v0, "muted"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x4000

    :goto_8
    or-int/2addr v0, v2

    or-int/2addr v0, v3

    iput v0, p0, Lcom/vent/a/x;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static eM(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "collapse"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "hide"

    goto :goto_0

    :pswitch_1
    const-string v0, "show"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f(Lorg/json/JSONObject;)Lcom/vent/a/x;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/vent/a/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vent/a/x;-><init>(Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method


# virtual methods
.method public EK()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    iget-object v4, p0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v4, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_start_0
    iget-object v2, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "profile_image_url"

    iget-object v4, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    if-eqz v2, :cond_1

    const-string v2, "current_emotion_id"

    iget-object v4, p0, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const-string v4, "account_is_public"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    move v2, v0

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const-string v4, "you_listen_to"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    move v2, v0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    const-string v4, "listens_to_you"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    move v2, v0

    :goto_2
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    const-string v4, "blocked_by_you"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_e

    move v2, v0

    :goto_3
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    const-string v4, "is_blocking_you"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_f

    move v2, v0

    :goto_4
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    const-string v4, "you_requested_listen_to"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_10

    move v2, v0

    :goto_5
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    const-string v4, "requested_listen_to_you"

    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_11

    move v2, v0

    :goto_6
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_8
    iget v2, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    const-string v2, "you_subscribed_to"

    iget v4, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_12

    :goto_7
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    iget v0, p0, Lcom/vent/a/x;->ckP:I

    if-eqz v0, :cond_a

    const-string v0, "official_staff_status"

    iget v1, p0, Lcom/vent/a/x;->ckP:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_8
    return-object v3

    :cond_b
    move v2, v1

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto :goto_1

    :cond_d
    move v2, v1

    goto :goto_2

    :cond_e
    move v2, v1

    goto :goto_3

    :cond_f
    move v2, v1

    goto :goto_4

    :cond_10
    move v2, v1

    goto :goto_5

    :cond_11
    move v2, v1

    goto :goto_6

    :cond_12
    move v0, v1

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8
.end method

.method final synthetic EL()Lcom/vent/a/c;
    .locals 1

    new-instance v0, Lcom/vent/a/x;

    invoke-direct {v0}, Lcom/vent/a/x;-><init>()V

    return-object v0
.end method

.method final synthetic EM()Lcom/vent/a/c;
    .locals 1

    new-instance v0, Lcom/vent/a/y;

    invoke-direct {v0}, Lcom/vent/a/y;-><init>()V

    return-object v0
.end method

.method public final EZ()Z
    .locals 2

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fa()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fb()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fc()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fd()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fe()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Ff()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fg()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fh()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fi()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fj()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fk()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic a(Lcom/vent/a/c;)V
    .locals 0

    check-cast p1, Lcom/vent/a/x;

    invoke-virtual {p0, p1}, Lcom/vent/a/x;->d(Lcom/vent/a/x;)V

    return-void
.end method

.method d(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/x;->ckP:I

    return-void
.end method

.method d(Lcom/vent/a/x;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/a/c;->a(Lcom/vent/a/c;)V

    iget-object v0, p1, Lcom/vent/a/x;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    iget-object v0, p1, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    iget-object v0, p1, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    iput-object v0, p0, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    return-void
.end method

.method public final eL(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBlocked()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/x;->ckP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
