.class public final Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;

.field private static final and:[B


# instance fields
.field private final amU:Ljava/lang/String;

.field private final amW:[B

.field private ane:Ljava/io/InputStream;

.field private final anf:I

.field private final ang:Ljava/lang/String;

.field private final anh:Ljava/lang/String;

.field private ani:Ljava/lang/String;

.field private final anj:Lcom/amazonaws/auth/AWS4Signer;

.field private ank:Lcom/amazonaws/auth/ChunkContentIterator;

.field private anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

.field private anm:Z

.field private ann:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->and:[B

    const-class v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anm:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ann:Z

    instance-of v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    iget v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anf:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    iget-object v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    :goto_0
    const/high16 v0, 0x20000

    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max buffer size should not be less than chunk size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anf:I

    iput-object p3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->amW:[B

    iput-object p4, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->amU:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ang:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anh:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ani:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anj:Lcom/amazonaws/auth/AWS4Signer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .locals 8

    const/high16 v2, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    return-void
.end method

.method private f([B)[B
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AWS4-HMAC-SHA256-PAYLOAD\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->amU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ani:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/amazonaws/auth/AWS4Signer;->P(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->h([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/amazonaws/auth/AWS4Signer;->e([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->h([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->amW:[B

    sget-object v4, Lcom/amazonaws/auth/SigningAlgorithm;->anE:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-static {v2, v3, v4}, Lcom/amazonaws/auth/AWS4Signer;->a(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->h([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ani:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";chunk-signature="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->avd:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "\r\n"

    sget-object v2, Lcom/amazonaws/util/StringUtils;->avd:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v4, v0

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, p1

    add-int/2addr v0, v4

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to sign the chunked data. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static h(J)J
    .locals 8

    const-wide/32 v6, 0x20000

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nonnegative content length expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    div-long v0, p0, v6

    rem-long v4, p0, v6

    invoke-static {v6, v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->i(J)J

    move-result-wide v6

    mul-long/2addr v6, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    invoke-static {v4, v5}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->i(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v6

    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->i(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private static i(J)J
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private jC()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x20000

    const/4 v2, 0x0

    new-array v1, v9, [B

    move v4, v2

    :goto_0
    if-ge v4, v9, :cond_5

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget v5, v3, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    if-eq v5, v10, :cond_0

    iget v5, v3, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    iget v3, v3, Lcom/amazonaws/auth/DecodedStreamBuffer;->anw:I

    if-ge v5, v3, :cond_0

    move v3, v0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget-object v6, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anv:[B

    iget v7, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    aget-byte v5, v6, v7

    aput-byte v5, v1, v4

    move v4, v3

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    sub-int v3, v9, v4

    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    invoke-virtual {v5, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v10, :cond_5

    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iput v10, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I

    iget v6, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anw:I

    add-int/2addr v6, v3

    iget v7, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anf:I

    if-le v6, v7, :cond_4

    sget-object v6, Lcom/amazonaws/auth/DecodedStreamBuffer;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/amazonaws/auth/DecodedStreamBuffer;->alS:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Buffer size "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anf:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iput-boolean v0, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anx:Z

    :cond_3
    :goto_2
    add-int/2addr v3, v4

    move v4, v3

    goto :goto_0

    :cond_4
    iget-object v6, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anv:[B

    iget v7, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anw:I

    invoke-static {v1, v4, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anw:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->anw:I

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->and:[B

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->f([B)[B

    move-result-object v1

    new-instance v2, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v2, v1}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    :goto_3
    return v0

    :cond_6
    if-ge v4, v9, :cond_7

    new-array v0, v4, [B

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->f([B)[B

    move-result-object v0

    new-instance v1, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v1, v0}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    move v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->jH()V

    iget-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anm:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chunk-encoded stream only supports mark() at the start of the stream."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it\'s mark-supported)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    new-instance v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anf:I

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/DecodedStreamBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v3, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    const-string v2, "One byte read from the stream."

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    :cond_1
    return v0
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->jH()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-virtual {v2}, Lcom/amazonaws/auth/ChunkContentIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ann:Z

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->jC()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ann:Z

    :cond_6
    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    if-nez p3, :cond_9

    move v1, v0

    :cond_7
    :goto_1
    if-lez v1, :cond_8

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anm:Z

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte read from the stream."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/amazonaws/auth/ChunkContentIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, v2, Lcom/amazonaws/auth/ChunkContentIterator;->ans:[B

    array-length v1, v1

    iget v3, v2, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    sub-int/2addr v1, v3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v2, Lcom/amazonaws/auth/ChunkContentIterator;->ans:[B

    iget v4, v2, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v2, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    goto :goto_1
.end method

.method public final declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->jH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anh:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ani:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ane:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ank:Lcom/amazonaws/auth/ChunkContentIterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anm:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->ann:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->alS:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset the stream because the mark is not set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->anl:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget-boolean v1, v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->anx:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The input stream is not repeatable since the buffer size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->anf:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has been exceeded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x0

    iput v1, v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v4, v2

    new-array v5, v4, [B

    move-wide v2, p1

    :goto_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    int-to-long v6, v6

    sub-long/2addr v2, v6

    goto :goto_1

    :cond_1
    sub-long v0, p1, v2

    goto :goto_0
.end method
