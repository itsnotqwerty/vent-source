.class public Lcom/amazonaws/http/HttpRequest;
.super Ljava/lang/Object;


# instance fields
.field final amE:Ljava/io/InputStream;

.field aoe:Ljava/net/URI;

.field aof:Z

.field final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/http/HttpRequest;->method:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/http/HttpRequest;->aoe:Ljava/net/URI;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazonaws/http/HttpRequest;->amE:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getContentLength()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
