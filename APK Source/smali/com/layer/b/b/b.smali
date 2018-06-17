.class public abstract Lcom/layer/b/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/layer/b/d/a;

.field private f:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "certification_url"

    sput-object v0, Lcom/layer/b/b/b;->a:Ljava/lang/String;

    const-string v0, "authentication_url"

    sput-object v0, Lcom/layer/b/b/b;->b:Ljava/lang/String;

    const-string v0, "messaging_url"

    sput-object v0, Lcom/layer/b/b/b;->c:Ljava/lang/String;

    const-string v0, "telemetry_url"

    sput-object v0, Lcom/layer/b/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/a;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/b/b/b;->e:Lcom/layer/b/d/a;

    iput-object p2, p0, Lcom/layer/b/b/b;->f:Ljava/net/URL;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/layer/b/b/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/layer/b/b/b;->c()Lcom/b/a/x;

    move-result-object v4

    :try_start_0
    new-instance v0, Lcom/b/a/aa$a;

    invoke-direct {v0}, Lcom/b/a/aa$a;-><init>()V

    const-string v1, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v1, v3}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/b/b;->e:Lcom/layer/b/d/a;

    invoke-virtual {v1, v0}, Lcom/layer/b/d/a;->a(Lcom/b/a/aa$a;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->Am()Lcom/b/a/aa$a;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/b/b;->f:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/b/a/aa$a;->g(Ljava/net/URL;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Lcom/b/a/h;->xb()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac;->Ap()Lcom/b/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_5

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Error when fetching config: Url: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/layer/b/b/b;->f:Ljava/net/URL;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ". Response: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error when fetching config: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/b/a/b;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lcom/b/a/h;->c()V

    :cond_2
    invoke-virtual {v4}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/b/a/o;->d()V

    :cond_3
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in getLatestConfig for Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/b/b/b;->f:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad Json for URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/b/b/b;->f:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/b/a/b;->yf()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Lcom/b/a/b;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Lcom/b/a/h;->c()V

    invoke-virtual {v4}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/b/a/o;->d()V

    :cond_7
    sget-object v1, Lcom/layer/b/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/layer/b/b/b;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    sget-object v1, Lcom/layer/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/layer/b/b/b;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    sget-object v1, Lcom/layer/b/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/layer/b/b/b;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    sget-object v1, Lcom/layer/b/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/b/b/b;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    new-instance v0, Lcom/layer/b/b/b$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/b/b$2;-><init>(Lcom/layer/b/b/b;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V

    return-object v0

    :catch_1
    move-exception v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0
.end method

.method public a(Lcom/layer/b/b/a;Lcom/layer/b/b/a;)Lcom/layer/b/b/a;
    .locals 6

    invoke-interface {p2}, Lcom/layer/b/b/a;->wD()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/layer/b/b/a;->wD()Ljava/net/URL;

    move-result-object v3

    :goto_0
    invoke-interface {p2}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v4

    :goto_1
    invoke-interface {p2}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v2

    :goto_2
    invoke-interface {p2}, Lcom/layer/b/b/a;->wF()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/layer/b/b/a;->wF()Ljava/net/URL;

    move-result-object v5

    :goto_3
    new-instance v0, Lcom/layer/b/b/b$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/b/b$3;-><init>(Lcom/layer/b/b/b;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V

    return-object v0

    :cond_0
    invoke-interface {p2}, Lcom/layer/b/b/a;->wD()Ljava/net/URL;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lcom/layer/b/b/a;->wF()Ljava/net/URL;

    move-result-object v5

    goto :goto_3
.end method

.method protected a(Ljava/util/Map;)Lcom/layer/b/b/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/layer/b/b/a;"
        }
    .end annotation

    sget-object v0, Lcom/layer/b/b/b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    sget-object v0, Lcom/layer/b/b/b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    sget-object v0, Lcom/layer/b/b/b;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    sget-object v0, Lcom/layer/b/b/b;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    new-instance v0, Lcom/layer/b/b/b$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/b/b$4;-><init>(Lcom/layer/b/b/b;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V

    return-object v0
.end method

.method public abstract a(Lcom/layer/b/b/a;)V
.end method

.method public abstract b()Lcom/layer/b/b/a;
.end method

.method protected b(Lcom/layer/b/b/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/b/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/layer/b/b/b;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/layer/b/b/a;->wD()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/b/b;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/b/b;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/b/b;->d:Ljava/lang/String;

    invoke-interface {p1}, Lcom/layer/b/b/a;->wF()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Lcom/layer/b/b/a;Lcom/layer/b/b/a;)Z
    .locals 2

    invoke-interface {p1}, Lcom/layer/b/b/a;->wD()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p2}, Lcom/layer/b/b/a;->wD()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/layer/b/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p2}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/layer/b/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p2}, Lcom/layer/b/b/a;->wC()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/layer/b/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Lcom/b/a/x;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x4e20

    const/4 v2, 0x1

    new-instance v0, Lcom/b/a/o;

    invoke-direct {v0, v2, v4, v5}, Lcom/b/a/o;-><init>(IJ)V

    new-instance v1, Lcom/b/a/x;

    invoke-direct {v1}, Lcom/b/a/x;-><init>()V

    invoke-virtual {v1, v0}, Lcom/b/a/x;->b(Lcom/b/a/o;)Lcom/b/a/x;

    move-result-object v0

    new-instance v1, Lcom/layer/b/a/c;

    invoke-direct {v1}, Lcom/layer/b/a/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/x;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;

    move-result-object v0

    new-instance v1, Lcom/layer/b/b/b$1;

    invoke-direct {v1, p0}, Lcom/layer/b/b/b$1;-><init>(Lcom/layer/b/b/b;)V

    invoke-virtual {v0, v1}, Lcom/b/a/x;->b(Ljavax/net/ssl/HostnameVerifier;)Lcom/b/a/x;

    move-result-object v0

    new-array v1, v2, [Lcom/b/a/y;

    const/4 v2, 0x0

    sget-object v3, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/x;->x(Ljava/util/List;)Lcom/b/a/x;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/b/a/x;->a(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
