.class public Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
.super Lcom/amazonaws/auth/AWS4Signer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>(Z)V

    return-void
.end method

.method private static k(Lcom/amazonaws/Request;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/amazonaws/Request;->jq()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/amazonaws/Request;->jq()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected final a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->k(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iget-object v3, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amU:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amV:Ljava/lang/String;

    iget-object v0, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amW:[B

    array-length v0, v0

    new-array v2, v0, [B

    iget-object v0, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amW:[B

    iget-object v5, p2, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->amW:[B

    array-length v5, v5

    invoke-static {v0, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getSignature()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->h([B)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method protected final f(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, -0x1

    const-string v0, "x-amz-content-sha256"

    const-string v1, "required"

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->k(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    const-string v2, "x-amz-decoded-content-length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->h(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Failed to get content length"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Cannot get the content-lenght of the request content."

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-wide/16 v0, 0x0

    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v6, :cond_2

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWS4Signer;->f(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
