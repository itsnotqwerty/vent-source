.class final Lio/intercom/okhttp3/Cache$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lio/intercom/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final protocol:Lio/intercom/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lio/intercom/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lio/intercom/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/intercom/okhttp3/internal/platform/Platform;->get()Lio/intercom/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/intercom/b/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v4

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    new-instance v5, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v5}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    invoke-static {v4}, Lio/intercom/okhttp3/Cache;->readInt(Lio/intercom/b/e;)I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/intercom/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v3

    iput-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/intercom/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/internal/http/StatusLine;

    move-result-object v3

    iget-object v5, v3, Lio/intercom/okhttp3/internal/http/StatusLine;->protocol:Lio/intercom/okhttp3/Protocol;

    iput-object v5, p0, Lio/intercom/okhttp3/Cache$Entry;->protocol:Lio/intercom/okhttp3/Protocol;

    iget v5, v3, Lio/intercom/okhttp3/internal/http/StatusLine;->code:I

    iput v5, p0, Lio/intercom/okhttp3/Cache$Entry;->code:I

    iget-object v3, v3, Lio/intercom/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    new-instance v5, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v5}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    invoke-static {v4}, Lio/intercom/okhttp3/Cache;->readInt(Lio/intercom/b/e;)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/intercom/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lio/intercom/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lio/intercom/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/intercom/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lio/intercom/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lio/intercom/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lio/intercom/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    sget-object v3, Lio/intercom/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lio/intercom/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lio/intercom/okhttp3/Cache$Entry;->sentRequestMillis:J

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_2
    iput-wide v0, p0, Lio/intercom/okhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {v5}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-direct {p0}, Lio/intercom/okhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lio/intercom/b/s;->close()V

    throw v0

    :cond_3
    move-wide v2, v0

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lio/intercom/okhttp3/CipherSuite;

    move-result-object v1

    invoke-direct {p0, v4}, Lio/intercom/okhttp3/Cache$Entry;->readCertificateList(Lio/intercom/b/e;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v4}, Lio/intercom/okhttp3/Cache$Entry;->readCertificateList(Lio/intercom/b/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4}, Lio/intercom/b/e;->Kr()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lio/intercom/okhttp3/TlsVersion;

    move-result-object v0

    :goto_3
    invoke-static {v0, v1, v2, v3}, Lio/intercom/okhttp3/Handshake;->get(Lio/intercom/okhttp3/TlsVersion;Lio/intercom/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lio/intercom/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-interface {p1}, Lio/intercom/b/s;->close()V

    return-void

    :cond_5
    :try_start_2
    sget-object v0, Lio/intercom/okhttp3/TlsVersion;->SSL_3_0:Lio/intercom/okhttp3/TlsVersion;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method constructor <init>(Lio/intercom/okhttp3/Response;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->protocol()Lio/intercom/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->protocol:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/Cache$Entry;->code:I

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->handshake()Lio/intercom/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/okhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/okhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method private isHttps()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lio/intercom/b/e;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/b/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/okhttp3/Cache;->readInt(Lio/intercom/b/e;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Lio/intercom/b/e;->Kz()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/intercom/b/c;

    invoke-direct {v5}, Lio/intercom/b/c;-><init>()V

    invoke-static {v4}, Lio/intercom/b/f;->fj(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/intercom/b/c;->a(Lio/intercom/b/f;)Lio/intercom/b/c;

    invoke-virtual {v5}, Lio/intercom/b/c;->Ks()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeCertList(Lio/intercom/b/d;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/b/d;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lio/intercom/b/d;->am(J)Lio/intercom/b/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lio/intercom/b/f;->H([B)Lio/intercom/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/f;->KF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    const/16 v3, 0xa

    invoke-interface {v0, v3}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public final matches(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)Z
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-static {p2, v0, p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyMatches(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final response(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lio/intercom/okhttp3/Response;
    .locals 5

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v2}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Request$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v2

    new-instance v3, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v3}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->protocol:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lio/intercom/okhttp3/Cache$Entry;->code:I

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lio/intercom/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lio/intercom/okhttp3/Cache$CacheResponseBody;-><init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/intercom/okhttp3/Response$Builder;->body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->handshake(Lio/intercom/okhttp3/Handshake;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/okhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {v0, v2, v3}, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/okhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {v0, v2, v3}, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v6, 0xa

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lio/intercom/b/r;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v2

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v1

    invoke-interface {v1, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v2, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v1

    invoke-interface {v1, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lio/intercom/b/d;->am(J)Lio/intercom/b/d;

    move-result-object v1

    invoke-interface {v1, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v4, v1}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v4

    const-string v5, ": "

    invoke-interface {v4, v5}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/okhttp3/Cache$Entry;->varyHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v5, v1}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v4

    invoke-interface {v4, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lio/intercom/okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->protocol:Lio/intercom/okhttp3/Protocol;

    iget v4, p0, Lio/intercom/okhttp3/Cache$Entry;->code:I

    iget-object v5, p0, Lio/intercom/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lio/intercom/okhttp3/internal/http/StatusLine;-><init>(Lio/intercom/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v1

    invoke-interface {v1, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lio/intercom/b/d;->am(J)Lio/intercom/b/d;

    move-result-object v1

    invoke-interface {v1, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v1, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v3, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/okhttp3/Cache$Entry;->responseHeaders:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v4, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v3

    invoke-interface {v3, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lio/intercom/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    const-string v1, ": "

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    iget-wide v4, p0, Lio/intercom/okhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-interface {v0, v4, v5}, Lio/intercom/b/d;->am(J)Lio/intercom/b/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    sget-object v0, Lio/intercom/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    const-string v1, ": "

    invoke-interface {v0, v1}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    iget-wide v4, p0, Lio/intercom/okhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-interface {v0, v4, v5}, Lio/intercom/b/d;->am(J)Lio/intercom/b/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    invoke-direct {p0}, Lio/intercom/okhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Handshake;->cipherSuite()Lio/intercom/okhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lio/intercom/okhttp3/Cache$Entry;->writeCertList(Lio/intercom/b/d;Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lio/intercom/okhttp3/Cache$Entry;->writeCertList(Lio/intercom/b/d;Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$Entry;->handshake:Lio/intercom/okhttp3/Handshake;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Handshake;->tlsVersion()Lio/intercom/okhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    invoke-interface {v0, v6}, Lio/intercom/b/d;->fB(I)Lio/intercom/b/d;

    :cond_2
    invoke-interface {v2}, Lio/intercom/b/d;->close()V

    return-void
.end method
