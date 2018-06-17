.class final Lokhttp3/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field final cWp:Lokhttp3/p;

.field final cWq:Lokhttp3/u;

.field final cWr:Lokhttp3/p;

.field final cWs:Lokhttp3/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final code:I

.field final message:Ljava/lang/String;

.field final receivedResponseMillis:J

.field final requestMethod:Ljava/lang/String;

.field final sentRequestMillis:J

.field final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    invoke-static {}, Lokhttp3/internal/g/f;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/c$c;->SENT_MILLIS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    invoke-static {}, Lokhttp3/internal/g/f;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/c$c;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ld/s;)V
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
    invoke-static {p1}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v4

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/c$c;->url:Ljava/lang/String;

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/c$c;->requestMethod:Ljava/lang/String;

    new-instance v5, Lokhttp3/p$a;

    invoke-direct {v5}, Lokhttp3/p$a;-><init>()V

    invoke-static {v4}, Lokhttp3/c;->a(Ld/e;)I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lokhttp3/p$a;->fr(Ljava/lang/String;)Lokhttp3/p$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/c/k;->fD(Ljava/lang/String;)Lokhttp3/internal/c/k;

    move-result-object v3

    iget-object v5, v3, Lokhttp3/internal/c/k;->cWq:Lokhttp3/u;

    iput-object v5, p0, Lokhttp3/c$c;->cWq:Lokhttp3/u;

    iget v5, v3, Lokhttp3/internal/c/k;->code:I

    iput v5, p0, Lokhttp3/c$c;->code:I

    iget-object v3, v3, Lokhttp3/internal/c/k;->message:Ljava/lang/String;

    iput-object v3, p0, Lokhttp3/c$c;->message:Ljava/lang/String;

    new-instance v5, Lokhttp3/p$a;

    invoke-direct {v5}, Lokhttp3/p$a;-><init>()V

    invoke-static {v4}, Lokhttp3/c;->a(Ld/e;)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/p$a;->fr(Ljava/lang/String;)Lokhttp3/p$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lokhttp3/c$c;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lokhttp3/p$a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lokhttp3/c$c;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lokhttp3/p$a;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lokhttp3/c$c;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lokhttp3/p$a;->fs(Ljava/lang/String;)Lokhttp3/p$a;

    sget-object v3, Lokhttp3/c$c;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lokhttp3/p$a;->fs(Ljava/lang/String;)Lokhttp3/p$a;

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lokhttp3/c$c;->sentRequestMillis:J

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_2
    iput-wide v0, p0, Lokhttp3/c$c;->receivedResponseMillis:J

    invoke-virtual {v5}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    invoke-direct {p0}, Lokhttp3/c$c;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

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

    invoke-interface {p1}, Ld/s;->close()V

    throw v0

    :cond_3
    move-wide v2, v0

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/g;->fq(Ljava/lang/String;)Lokhttp3/g;

    move-result-object v1

    invoke-static {v4}, Lokhttp3/c$c;->b(Ld/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4}, Lokhttp3/c$c;->b(Ld/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4}, Ld/e;->Kr()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/ab;->fA(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lokhttp3/ab;->cZE:Lokhttp3/ab;

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v4, Lokhttp3/o;

    invoke-static {v2}, Lokhttp3/internal/c;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Lokhttp3/internal/c;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lokhttp3/o;-><init>(Lokhttp3/ab;Lokhttp3/g;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-interface {p1}, Ld/s;->close()V

    return-void

    :cond_8
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method constructor <init>(Lokhttp3/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v0}, Lokhttp3/q;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->url:Ljava/lang/String;

    invoke-static {p1}, Lokhttp3/internal/c/e;->h(Lokhttp3/y;)Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    iget-object v0, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/c$c;->requestMethod:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/y;->cWq:Lokhttp3/u;

    iput-object v0, p0, Lokhttp3/c$c;->cWq:Lokhttp3/u;

    iget v0, p1, Lokhttp3/y;->code:I

    iput v0, p0, Lokhttp3/c$c;->code:I

    iget-object v0, p1, Lokhttp3/y;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/c$c;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/y;->cZo:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    iget-object v0, p1, Lokhttp3/y;->cWs:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;

    iget-wide v0, p1, Lokhttp3/y;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/c$c;->sentRequestMillis:J

    iget-wide v0, p1, Lokhttp3/y;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/c$c;->receivedResponseMillis:J

    return-void
.end method

.method private static a(Ld/d;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d;",
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
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Ld/d;->aD(J)Ld/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ld/f;->R([B)Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->KF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v3, 0xa

    invoke-interface {v0, v3}, Ld/d;->gb(I)Ld/d;
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

.method private static b(Ld/e;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/e;",
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

    invoke-static {p0}, Lokhttp3/c;->a(Ld/e;)I

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

    invoke-interface {p0}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ld/c;

    invoke-direct {v5}, Ld/c;-><init>()V

    invoke-static {v4}, Ld/f;->fI(Ljava/lang/String;)Ld/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Ld/c;->d(Ld/f;)Ld/c;

    invoke-virtual {v5}, Ld/c;->Ks()Ljava/io/InputStream;

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

.method private isHttps()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/c$c;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(Lokhttp3/internal/a/d$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v6, 0xa

    invoke-virtual {p1, v0}, Lokhttp3/internal/a/d$a;->fP(I)Ld/r;

    move-result-object v1

    invoke-static {v1}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v2

    iget-object v1, p0, Lokhttp3/c$c;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v1

    invoke-interface {v1, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v1, p0, Lokhttp3/c$c;->requestMethod:Ljava/lang/String;

    invoke-interface {v2, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v1

    invoke-interface {v1, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v1, p0, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    iget-object v1, v1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Ld/d;->aD(J)Ld/d;

    move-result-object v1

    invoke-interface {v1, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v1, p0, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    iget-object v1, v1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    invoke-virtual {v4, v1}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v4

    const-string v5, ": "

    invoke-interface {v4, v5}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    invoke-virtual {v5, v1}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v4

    invoke-interface {v4, v6}, Ld/d;->gb(I)Ld/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/internal/c/k;

    iget-object v3, p0, Lokhttp3/c$c;->cWq:Lokhttp3/u;

    iget v4, p0, Lokhttp3/c$c;->code:I

    iget-object v5, p0, Lokhttp3/c$c;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lokhttp3/internal/c/k;-><init>(Lokhttp3/u;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/internal/c/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v1

    invoke-interface {v1, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v1, p0, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    iget-object v1, v1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Ld/d;->aD(J)Ld/d;

    move-result-object v1

    invoke-interface {v1, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v1, p0, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    iget-object v1, v1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    invoke-virtual {v3, v0}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    invoke-virtual {v4, v0}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v3

    invoke-interface {v3, v6}, Ld/d;->gb(I)Ld/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lokhttp3/c$c;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const-string v1, ": "

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    iget-wide v4, p0, Lokhttp3/c$c;->sentRequestMillis:J

    invoke-interface {v0, v4, v5}, Ld/d;->aD(J)Ld/d;

    move-result-object v0

    invoke-interface {v0, v6}, Ld/d;->gb(I)Ld/d;

    sget-object v0, Lokhttp3/c$c;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const-string v1, ": "

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    iget-wide v4, p0, Lokhttp3/c$c;->receivedResponseMillis:J

    invoke-interface {v0, v4, v5}, Ld/d;->aD(J)Ld/d;

    move-result-object v0

    invoke-interface {v0, v6}, Ld/d;->gb(I)Ld/d;

    invoke-direct {p0}, Lokhttp3/c$c;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v0, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;

    iget-object v0, v0, Lokhttp3/o;->cYR:Lokhttp3/g;

    iget-object v0, v0, Lokhttp3/g;->javaName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    invoke-interface {v0, v6}, Ld/d;->gb(I)Ld/d;

    iget-object v0, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;

    iget-object v0, v0, Lokhttp3/o;->peerCertificates:Ljava/util/List;

    invoke-static {v2, v0}, Lokhttp3/c$c;->a(Ld/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;

    iget-object v0, v0, Lokhttp3/o;->localCertificates:Ljava/util/List;

    invoke-static {v2, v0}, Lokhttp3/c$c;->a(Ld/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/c$c;->cWs:Lokhttp3/o;

    iget-object v0, v0, Lokhttp3/o;->cYQ:Lokhttp3/ab;

    iget-object v0, v0, Lokhttp3/ab;->javaName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    invoke-interface {v0, v6}, Ld/d;->gb(I)Ld/d;

    :cond_2
    invoke-interface {v2}, Ld/d;->close()V

    return-void
.end method
