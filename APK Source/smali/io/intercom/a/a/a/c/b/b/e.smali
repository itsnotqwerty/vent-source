.class public final Lio/intercom/a/a/a/c/b/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/b/a;


# static fields
.field private static cLN:Lio/intercom/a/a/a/c/b/b/e;


# instance fields
.field private final cLO:Lio/intercom/a/a/a/c/b/b/j;

.field private final cLP:Lio/intercom/a/a/a/c/b/b/c;

.field private final directory:Ljava/io/File;

.field private diskLruCache:Lio/intercom/a/a/a/a/a;

.field private final maxSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/intercom/a/a/a/c/b/b/e;->cLN:Lio/intercom/a/a/a/c/b/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/b/c;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/b/c;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->cLP:Lio/intercom/a/a/a/c/b/b/c;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/e;->directory:Ljava/io/File;

    iput-wide p2, p0, Lio/intercom/a/a/a/c/b/b/e;->maxSize:J

    new-instance v0, Lio/intercom/a/a/a/c/b/b/j;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/b/j;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->cLO:Lio/intercom/a/a/a/c/b/b/j;

    return-void
.end method

.method public static b(Ljava/io/File;J)Lio/intercom/a/a/a/c/b/b/a;
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/b/b/e;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/a/a/a/c/b/b/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized getDiskCache()Lio/intercom/a/a/a/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->diskLruCache:Lio/intercom/a/a/a/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->directory:Ljava/io/File;

    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/b/e;->maxSize:J

    invoke-static {v0, v2, v3}, Lio/intercom/a/a/a/a/a;->a(Ljava/io/File;J)Lio/intercom/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->diskLruCache:Lio/intercom/a/a/a/a/a;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->diskLruCache:Lio/intercom/a/a/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/h;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->cLO:Lio/intercom/a/a/a/c/b/b/j;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/b/j;->c(Lio/intercom/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/b/e;->getDiskCache()Lio/intercom/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/intercom/a/a/a/a/a;->eU(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lio/intercom/a/a/a/a/a$d;->cGO:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to get from disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/b/a$b;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->cLO:Lio/intercom/a/a/a/c/b/b/j;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/b/j;->c(Lio/intercom/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b/e;->cLP:Lio/intercom/a/a/a/c/b/b/c;

    monitor-enter v2

    :try_start_0
    iget-object v0, v2, Lio/intercom/a/a/a/c/b/b/c;->locks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/b/c$a;

    if-nez v0, :cond_0

    iget-object v0, v2, Lio/intercom/a/a/a/c/b/b/c;->cLK:Lio/intercom/a/a/a/c/b/b/c$b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/b/c$b;->ID()Lio/intercom/a/a/a/c/b/b/c$a;

    move-result-object v0

    iget-object v3, v2, Lio/intercom/a/a/a/c/b/b/c;->locks:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v3, v0, Lio/intercom/a/a/a/c/b/b/c$a;->interestedThreads:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lio/intercom/a/a/a/c/b/b/c$a;->interestedThreads:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/b/c$a;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DiskLruCacheWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Put: Obtained: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/b/e;->getDiskCache()Lio/intercom/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/a/a;->eU(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$d;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->cLP:Lio/intercom/a/a/a/c/b/b/c;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/b/b/c;->release(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/a/a;->eV(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$b;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Had two simultaneous puts for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to put to disk cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/e;->cLP:Lio/intercom/a/a/a/c/b/b/c;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/b/b/c;->release(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_6
    invoke-virtual {v2}, Lio/intercom/a/a/a/a/a$b;->HF()Ljava/io/File;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/b/b/a$b;->l(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lio/intercom/a/a/a/a/a$b;->commit()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    :try_start_7
    invoke-virtual {v2}, Lio/intercom/a/a/a/a/a$b;->abortUnlessCommitted()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b/e;->cLP:Lio/intercom/a/a/a/c/b/b/c;

    invoke-virtual {v2, v1}, Lio/intercom/a/a/a/c/b/b/c;->release(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v2}, Lio/intercom/a/a/a/a/a$b;->abortUnlessCommitted()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method
