.class public final Lio/intercom/a/a/a/c/d/a/q;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/a/q$a;
    }
.end annotation


# instance fields
.field private volatile buf:[B

.field private final cIu:Lio/intercom/a/a/a/c/b/a/b;

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/a/a/a/c/d/a/q;-><init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;B)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/a/q;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    const/high16 v0, 0x10000

    const-class v1, [B

    invoke-interface {p2, v0, v1}, Lio/intercom/a/a/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    return-void
.end method

.method private static Jf()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;[B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    if-lt v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    iput v2, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    iput v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    if-nez v0, :cond_5

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    array-length v1, p2

    if-le v0, v1, :cond_5

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    array-length v1, p2

    if-ne v0, v1, :cond_5

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    :cond_3
    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    const-class v2, [B

    invoke-interface {v1, v0, v2}, Lio/intercom/a/a/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v1, p2}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    move-object p2, v0

    :cond_4
    :goto_1
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iput v3, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    iput v3, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    array-length v1, p2

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_6

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    :goto_2
    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    if-lez v0, :cond_4

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    array-length v1, p2

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    sub-int/2addr v1, v2

    invoke-static {p2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    add-int/2addr v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized Jg()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    array-length v0, v0

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    iput-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->in:Ljava/io/InputStream;

    iput-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iget v4, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    if-lt v3, v4, :cond_3

    invoke-direct {p0, v2, v1}, Lio/intercom/a/a/a/c/d/a/q;->a(Ljava/io/InputStream;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    :try_start_2
    iget-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-nez v1, :cond_4

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    aget-byte v0, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final declared-synchronized read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-nez v2, :cond_0

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p3, :cond_2

    const/4 p3, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return p3

    :cond_2
    :try_start_1
    iget-object v4, p0, Lio/intercom/a/a/a/c/d/a/q;->in:Ljava/io/InputStream;

    if-nez v4, :cond_3

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    if-ge v0, v3, :cond_7

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v0, v3

    if-lt v0, p3, :cond_5

    move v0, p3

    :goto_1
    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    if-eq v0, p3, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move p3, v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_6
    add-int/2addr p2, v0

    sub-int v3, p3, v0

    :goto_2
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    if-ne v0, v1, :cond_9

    array-length v0, v2

    if-lt v3, v0, :cond_9

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_d

    if-ne v3, p3, :cond_8

    move p3, v1

    goto :goto_0

    :cond_7
    move v3, p3

    goto :goto_2

    :cond_8
    sub-int/2addr p3, v3

    goto :goto_0

    :cond_9
    invoke-direct {p0, v4, v2}, Lio/intercom/a/a/a/c/d/a/q;->a(Ljava/io/InputStream;[B)I

    move-result v0

    if-ne v0, v1, :cond_b

    if-ne v3, p3, :cond_a

    move p3, v1

    goto :goto_0

    :cond_a
    sub-int/2addr p3, v3

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-eq v2, v0, :cond_c

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-nez v2, :cond_c

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v5, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v0, v5

    if-lt v0, v3, :cond_e

    move v0, v3

    :goto_3
    iget v5, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    :cond_d
    sub-int/2addr v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_f

    sub-int/2addr p3, v3

    goto :goto_0

    :cond_e
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v5, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v5

    goto :goto_3

    :cond_f
    add-int/2addr p2, v0

    goto :goto_2
.end method

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/d/a/q$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mark has been invalidated, pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/d/a/q$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/intercom/a/a/a/c/d/a/q;->buf:[B

    iget-object v3, p0, Lio/intercom/a/a/a/c/d/a/q;->in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 p1, 0x0

    :goto_0
    monitor-exit p0

    return-wide p1

    :cond_1
    if-nez v3, :cond_2

    :try_start_1
    invoke-static {}, Lio/intercom/a/a/a/c/d/a/q;->Jf()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_3

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v1, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v4, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iput v4, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    iget v4, p0, Lio/intercom/a/a/a/c/d/a/q;->markpos:I

    if-eq v4, v6, :cond_6

    iget v4, p0, Lio/intercom/a/a/a/c/d/a/q;->marklimit:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_6

    invoke-direct {p0, v3, v2}, Lio/intercom/a/a/a/c/d/a/q;->a(Ljava/io/InputStream;[B)I

    move-result v2

    if-ne v2, v6, :cond_4

    move-wide p1, v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iget v3, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v4, p1, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    int-to-long v2, v2

    sub-long v0, p1, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    int-to-long v2, v2

    sub-long p1, v0, v2

    iget v0, p0, Lio/intercom/a/a/a/c/d/a/q;->count:I

    iput v0, p0, Lio/intercom/a/a/a/c/d/a/q;->pos:I

    goto :goto_0

    :cond_6
    sub-long v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    add-long p1, v0, v2

    goto :goto_0
.end method
