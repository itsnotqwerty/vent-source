.class public final Lcom/layer/b/a/g;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/UUID;

.field b:Ljava/util/UUID;

.field buq:Ljava/security/KeyPair;

.field bur:Ljava/util/Date;

.field but:Ljava/util/Date;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/layer/b/a/g;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/layer/b/a/g;->j(Ljava/util/Date;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/layer/b/a/g;->a(J)V

    invoke-static {p2}, Lcom/layer/b/a/g;->j(Ljava/util/Date;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/layer/b/a/g;->K(J)V

    return-void
.end method

.method private K(J)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/layer/b/a/g;->but:Ljava/util/Date;

    return-void
.end method

.method private a(J)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/layer/b/a/g;->bur:Ljava/util/Date;

    return-void
.end method

.method public static dy(Ljava/lang/String;)Lcom/layer/b/a/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x6

    const-string v0, "[.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-static {v4}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Identity token does not have three parts"

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Identity token does not have three parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/f;->g()[B

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v4}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Identity token header cannot be base64 decoded"

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Identity token header cannot be base64 decoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v2

    invoke-virtual {v2}, Lb/f;->g()[B

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Identity token payload cannot be base64 decoded"

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Identity token payload cannot be base64 decoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    aget-object v3, v0, v5

    if-eqz v3, :cond_6

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    invoke-static {v6}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Identity token doesn\'t contain signature"

    invoke-static {v0}, Lcom/layer/b/e/a;->b(Ljava/lang/String;)V

    :cond_7
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/layer/b/a/g;

    invoke-direct {v2}, Lcom/layer/b/a/g;-><init>()V

    const-string v3, "kid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/a/g;->dz(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, v2, Lcom/layer/b/a/g;->b:Ljava/util/UUID;

    const-string v0, "iss"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/a/g;->dz(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, v2, Lcom/layer/b/a/g;->a:Ljava/util/UUID;

    const-string v0, "prn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/layer/b/a/g;->c:Ljava/lang/String;

    const-string v0, "nce"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/layer/b/a/g;->d:Ljava/lang/String;

    const-string v0, "iat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/layer/b/a/g;->a(J)V

    const-string v0, "exp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/layer/b/a/g;->K(J)V

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/layer/b/a/g;->buq:Ljava/security/KeyPair;

    return-object v2

    :cond_8
    const/4 v3, 0x2

    :try_start_0
    aget-object v0, v0, v3

    invoke-static {v0}, Lb/f;->fp(Ljava/lang/String;)Lb/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/f;->g()[B

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Identity token signature is null / empty"

    invoke-static {v0}, Lcom/layer/b/e/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/layer/b/e/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Identity token signature failed base64 decoding"

    invoke-static {v3, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static dz(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "layer:///"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method private static j(Ljava/util/Date;)J
    .locals 4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
