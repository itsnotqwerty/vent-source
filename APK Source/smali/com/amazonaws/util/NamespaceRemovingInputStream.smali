.class Lcom/amazonaws/util/NamespaceRemovingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
    }
.end annotation


# instance fields
.field private final ava:[B

.field private avb:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->ava:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->avb:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->jH()V

    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0x78

    if-ne v0, v3, :cond_4

    iget-boolean v3, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->avb:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->ava:[B

    int-to-byte v5, v0

    aput-byte v5, v3, v1

    iget-object v3, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->ava:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/io/InputStream;->mark(I)V

    iget-object v3, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->ava:[B

    iget-object v6, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->ava:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    iget-object v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->ava:[B

    add-int/lit8 v3, v3, 0x1

    sget-object v7, Lcom/amazonaws/util/StringUtils;->avd:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v1, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v6, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;

    invoke-direct {v6, v5}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;-><init>(Ljava/lang/String;)V

    const-string v3, "xmlns"

    invoke-virtual {v6, v3}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->aA(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    if-lez v2, :cond_4

    move v0, v1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v3, " "

    invoke-virtual {v6, v3}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->aB(Ljava/lang/String;)Z

    const-string v3, "="

    invoke-virtual {v6, v3}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->aA(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    invoke-virtual {v6, v3}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->aB(Ljava/lang/String;)Z

    const-string v3, "\""

    invoke-virtual {v6, v3}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->aA(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\""

    iget-object v7, v6, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_2

    move v3, v1

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v6, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    iget-object v8, v6, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    move v3, v4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput-boolean v4, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->avb:Z

    :cond_4
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_2

    if-nez v1, :cond_1

    move p3, v0

    :cond_0
    :goto_1
    return p3

    :cond_1
    move p3, v1

    goto :goto_1

    :cond_2
    add-int v3, v1, p2

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
