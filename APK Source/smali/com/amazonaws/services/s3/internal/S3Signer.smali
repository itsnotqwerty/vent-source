.class public Lcom/amazonaws/services/s3/internal/S3Signer;
.super Lcom/amazonaws/auth/AbstractAWSSigner;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field private final amz:Ljava/lang/String;

.field private final apZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3Signer;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->apZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->amz:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/auth/AbstractAWSSigner;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->apZ:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->amz:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter resourcePath is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->amz:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot sign a request using a dummy S3Signer instance with no resource path"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSCredentials;->jx()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/internal/S3Signer;->alS:Lorg/apache/commons/logging/Log;

    const-string v1, "Canonical string will not be signed, as no AWS Secret Key was provided"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/S3Signer;->a(Lcom/amazonaws/auth/AWSCredentials;)Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    instance-of v0, v1, Lcom/amazonaws/auth/AWSSessionCredentials;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/amazonaws/auth/AWSSessionCredentials;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/S3Signer;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V

    :cond_3
    invoke-interface {p1}, Lcom/amazonaws/Request;->jt()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->amz:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/amazonaws/util/HttpUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/S3Signer;->j(Lcom/amazonaws/Request;)I

    move-result v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/S3Signer;->cn(I)Ljava/util/Date;

    move-result-object v2

    const-string v3, "Date"

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->g(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/S3Signer;->apZ:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/amazonaws/services/s3/internal/RestUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazonaws/services/s3/internal/S3Signer;->alS:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calculated string to sign:\n\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentials;->jx()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/auth/SigningAlgorithm;->anD:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-static {v0, v2, v3}, Lcom/amazonaws/auth/AbstractAWSSigner;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/SigningAlgorithm;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AWS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentials;->jw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSSessionCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWSSessionCredentials;",
            ")V"
        }
    .end annotation

    const-string v0, "x-amz-security-token"

    invoke-interface {p2}, Lcom/amazonaws/auth/AWSSessionCredentials;->jz()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
