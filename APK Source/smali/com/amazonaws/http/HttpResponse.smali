.class public Lcom/amazonaws/http/HttpResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private amE:Ljava/io/InputStream;

.field public final aog:Ljava/lang/String;

.field final aoh:Ljava/io/InputStream;

.field public final headers:Ljava/util/Map;
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

.field public final statusCode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
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

    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse;->aog:Ljava/lang/String;

    iput p2, p0, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    iput-object p3, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V

    return-void
.end method

.method public static jE()Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 1

    new-instance v0, Lcom/amazonaws/http/HttpResponse$Builder;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpResponse$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->amE:Ljava/io/InputStream;

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->amE:Ljava/io/InputStream;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->amE:Ljava/io/InputStream;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->aoh:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->amE:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
