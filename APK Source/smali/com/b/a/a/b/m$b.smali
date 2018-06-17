.class final Lcom/b/a/a/b/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final bKK:Lb/d;

.field private final bKW:Lb/c;

.field private final bKX:Lb/d;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lb/d;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    iput-boolean p2, p0, Lcom/b/a/a/b/m$b;->d:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lcom/b/a/a/b/m;->bIG:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    iput-object v1, p0, Lcom/b/a/a/b/m$b;->bKW:Lb/c;

    new-instance v1, Lb/g;

    iget-object v2, p0, Lcom/b/a/a/b/m$b;->bKW:Lb/c;

    invoke-direct {v1, v2, v0}, Lb/g;-><init>(Lb/r;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lb/m;->b(Lb/r;)Lb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKW:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    iget-object v3, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    iget-object v4, v0, Lb/f;->bMw:[B

    array-length v4, v4

    invoke-interface {v3, v4}, Lb/d;->fJ(I)Lb/d;

    iget-object v3, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    invoke-interface {v3, v0}, Lb/d;->d(Lb/f;)Lb/d;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    iget-object v3, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    iget-object v4, v0, Lb/f;->bMw:[B

    array-length v4, v4

    invoke-interface {v3, v4}, Lb/d;->fJ(I)Lb/d;

    iget-object v3, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    invoke-interface {v3, v0}, Lb/d;->d(Lb/f;)Lb/d;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILcom/b/a/a/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p2, Lcom/b/a/a/b/a;->bKl:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    iget v1, p2, Lcom/b/a/a/b/a;->bKl:I

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILcom/b/a/a/b/a;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p2, Lcom/b/a/a/b/a;->bKm:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0, p1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    iget v1, p2, Lcom/b/a/a/b/a;->bKm:I

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/b/a/a/b/l;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/b/a/a/b/m$b;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0, p2}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILb/c;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    int-to-long v2, p4

    const-wide/32 v4, 0xffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-interface {v1, v2}, Lb/d;->fJ(I)Lb/d;

    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lb/d;->fJ(I)Lb/d;

    if-lez p4, :cond_3

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lb/d;->a(Lb/c;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/b/a/a/b/m$b;->a(Ljava/util/List;)V

    const-wide/16 v2, 0xa

    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKW:Lb/c;

    iget-wide v4, v1, Lb/c;->b:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v3, -0x7ffcffff

    invoke-interface {v2, v3}, Lb/d;->fJ(I)Lb/d;

    iget-object v2, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/d;->fK(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKW:Lb/c;

    invoke-interface {v0, v1}, Lb/d;->a(Lb/s;)J

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Lcom/b/a/a/b/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v4, 0xffffff

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p1, Lcom/b/a/a/b/l;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lb/d;->fJ(I)Lb/d;

    iget-object v2, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v1, v0}, Lb/d;->fJ(I)Lb/d;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/b/a/a/b/l;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/b/a/a/b/l;->dQ(I)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    iget-object v2, p1, Lcom/b/a/a/b/l;->brd:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lb/d;->fJ(I)Lb/d;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public final declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/b/m$b;->e:Z

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    iget-object v1, p0, Lcom/b/a/a/b/m$b;->bKX:Lb/d;

    invoke-static {v0, v1}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/b/m$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0, p1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lb/d;->fJ(I)Lb/d;

    iget-object v0, p0, Lcom/b/a/a/b/m$b;->bKK:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
