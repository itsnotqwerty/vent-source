.class public final Lokhttp3/internal/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/a/d$b;,
        Lokhttp3/internal/a/d$a;,
        Lokhttp3/internal/a/d$c;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final appVersion:I

.field final cZU:Lokhttp3/internal/f/a;

.field cZV:Ld/d;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/a/d;->$assertionsDisabled:Z

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/a/d;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lokhttp3/internal/f/a;Ljava/io/File;Ljava/util/concurrent/Executor;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lokhttp3/internal/a/d;->size:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lokhttp3/internal/a/d;->nextSequenceNumber:J

    new-instance v0, Lokhttp3/internal/a/d$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/a/d$1;-><init>(Lokhttp3/internal/a/d;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->cleanupRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iput-object p2, p0, Lokhttp3/internal/a/d;->directory:Ljava/io/File;

    const v0, 0x31191

    iput v0, p0, Lokhttp3/internal/a/d;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->journalFileTmp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->journalFileBackup:Ljava/io/File;

    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/a/d;->valueCount:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lokhttp3/internal/a/d;->maxSize:J

    iput-object p3, p0, Lokhttp3/internal/a/d;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private ML()Ld/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->r(Ljava/io/File;)Ld/r;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/a/d$2;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/a/d$2;-><init>(Lokhttp3/internal/a/d;Ld/r;)V

    invoke-static {v1}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lokhttp3/internal/f/a;Ljava/io/File;)Lokhttp3/internal/a/d;
    .locals 9

    const/4 v3, 0x1

    const-wide/32 v0, 0xa00000

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    invoke-static {v0, v3}, Lokhttp3/internal/c;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lokhttp3/internal/a/d;

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/a/d;-><init>(Lokhttp3/internal/f/a;Ljava/io/File;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/a/d;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lokhttp3/internal/a/d;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->exists(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-direct {p0}, Lokhttp3/internal/a/d;->readJournal()V

    invoke-direct {p0}, Lokhttp3/internal/a/d;->processJournal()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->initialized:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lokhttp3/internal/a/d;->directory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/g/f;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->close()V

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->deleteContents(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lokhttp3/internal/a/d;->closed:Z

    :cond_3
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->rebuildJournal()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->initialized:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/f/a;->rename(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->closed:Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    iget-object v1, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iget v4, p0, Lokhttp3/internal/a/d;->valueCount:I

    if-ge v1, v4, :cond_0

    iget-wide v4, p0, Lokhttp3/internal/a/d;->size:J

    iget-object v6, v0, Lokhttp3/internal/a/d$b;->lengths:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/a/d;->size:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    move v1, v2

    :goto_2
    iget v4, p0, Lokhttp3/internal/a/d;->valueCount:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v5, v0, Lokhttp3/internal/a/d$b;->cleanFiles:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    iget-object v4, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v5, v0, Lokhttp3/internal/a/d$b;->dirtyFiles:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v8, -0x1

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->p(Ljava/io/File;)Ld/s;

    move-result-object v0

    invoke-static {v0}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lokhttp3/internal/a/d;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lokhttp3/internal/a/d;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    invoke-interface {v3}, Ld/e;->Kr()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lokhttp3/internal/a/d;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v3}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne v5, v2, :cond_a

    const-string v2, "REMOVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    if-nez v0, :cond_5

    new-instance v0, Lokhttp3/internal/a/d$b;

    invoke-direct {v0, p0, v2}, Lokhttp3/internal/a/d$b;-><init>(Lokhttp3/internal/a/d;Ljava/lang/String;)V

    iget-object v7, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v6, v8, :cond_6

    if-ne v5, v9, :cond_6

    const-string v2, "CLEAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v0, Lokhttp3/internal/a/d$b;->readable:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0, v2}, Lokhttp3/internal/a/d$b;->setLengths([Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-ne v6, v8, :cond_7

    if-ne v5, v9, :cond_7

    const-string v2, "DIRTY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lokhttp3/internal/a/d$a;

    invoke-direct {v2, p0, v0}, Lokhttp3/internal/a/d$a;-><init>(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$b;)V

    iput-object v2, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    goto :goto_2

    :cond_7
    if-ne v6, v8, :cond_8

    const/4 v0, 0x4

    if-ne v5, v0, :cond_8

    const-string v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :try_start_4
    invoke-direct {p0}, Lokhttp3/internal/a/d;->ML()Ld/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_a
    move-object v2, v0

    goto :goto_3
.end method

.method private static validateKey(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lokhttp3/internal/a/d;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lokhttp3/internal/a/d$a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    iget-boolean v1, v2, Lokhttp3/internal/a/d$b;->readable:Z

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget v3, p0, Lokhttp3/internal/a/d;->valueCount:I

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lokhttp3/internal/a/d$a;->written:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->abort()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v4, v2, Lokhttp3/internal/a/d$b;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lokhttp3/internal/f/a;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lokhttp3/internal/a/d;->valueCount:I

    if-ge v0, v1, :cond_7

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v1, v0

    if-eqz p2, :cond_6

    iget-object v3, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    invoke-interface {v3, v1}, Lokhttp3/internal/f/a;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lokhttp3/internal/a/d$b;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v0

    iget-object v4, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    invoke-interface {v4, v1, v3}, Lokhttp3/internal/f/a;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->lengths:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    invoke-interface {v1, v3}, Lokhttp3/internal/f/a;->size(Ljava/io/File;)J

    move-result-wide v6

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->lengths:[J

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lokhttp3/internal/a/d;->size:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/a/d;->size:J

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    invoke-interface {v3, v1}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    const/4 v0, 0x0

    iput-object v0, v2, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    iget-boolean v0, v2, Lokhttp3/internal/a/d$b;->readable:Z

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, v2, Lokhttp3/internal/a/d$b;->readable:Z

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    invoke-virtual {v2, v0}, Lokhttp3/internal/a/d$b;->b(Ld/d;)V

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;

    if-eqz p2, :cond_8

    iget-wide v0, p0, Lokhttp3/internal/a/d;->nextSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lokhttp3/internal/a/d;->nextSequenceNumber:J

    iput-wide v0, v2, Lokhttp3/internal/a/d$b;->sequenceNumber:J

    :cond_8
    :goto_4
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    invoke-interface {v0}, Ld/d;->flush()V

    iget-wide v0, p0, Lokhttp3/internal/a/d;->size:J

    iget-wide v2, p0, Lokhttp3/internal/a/d;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lokhttp3/internal/a/d;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    iget-object v0, p0, Lokhttp3/internal/a/d;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/d;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method final a(Lokhttp3/internal/a/d$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->detach()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lokhttp3/internal/a/d;->valueCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v2, p1, Lokhttp3/internal/a/d$b;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    iget-wide v2, p0, Lokhttp3/internal/a/d;->size:J

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->lengths:[J

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/a/d;->size:J

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->lengths:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;

    move-result-object v0

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ld/d;->gb(I)Ld/d;

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lokhttp3/internal/a/d;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/a/d;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/d;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/a/d;->initialize()V

    invoke-direct {p0}, Lokhttp3/internal/a/d;->checkNotClosed()V

    invoke-static {p1}, Lokhttp3/internal/a/d;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lokhttp3/internal/a/d$b;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lokhttp3/internal/a/d;->mostRecentTrimFailed:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lokhttp3/internal/a/d;->mostRecentRebuildFailed:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/a/d;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/a/d;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const-string v3, "DIRTY"

    invoke-interface {v2, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Ld/d;->gb(I)Ld/d;

    move-result-object v2

    invoke-interface {v2, p1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ld/d;->gb(I)Ld/d;

    iget-object v2, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    invoke-interface {v2}, Ld/d;->flush()V

    iget-boolean v2, p0, Lokhttp3/internal/a/d;->hasJournalErrors:Z

    if-eqz v2, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Lokhttp3/internal/a/d$b;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/a/d$b;-><init>(Lokhttp3/internal/a/d;Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    new-instance v0, Lokhttp3/internal/a/d$a;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/a/d$a;-><init>(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$b;)V

    iput-object v0, v1, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public final declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->initialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/a/d;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/a/d$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/a/d$b;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v4, v3, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    invoke-virtual {v3}, Lokhttp3/internal/a/d$a;->abort()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->trimToSize()V

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    invoke-interface {v0}, Ld/d;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evictAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/a/d;->initialize()V

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/a/d$b;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/a/d$b;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized fC(Ljava/lang/String;)Lokhttp3/internal/a/d$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/a/d;->initialize()V

    invoke-direct {p0}, Lokhttp3/internal/a/d;->checkNotClosed()V

    invoke-static {p1}, Lokhttp3/internal/a/d;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lokhttp3/internal/a/d$b;->readable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/a/d$b;->MN()Lokhttp3/internal/a/d$c;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    iget-object v1, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ld/d;->gb(I)Ld/d;

    move-result-object v1

    invoke-interface {v1, p1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ld/d;->gb(I)Ld/d;

    invoke-virtual {p0}, Lokhttp3/internal/a/d;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/a/d;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/a/d;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/a/d;->checkNotClosed()V

    invoke-virtual {p0}, Lokhttp3/internal/a/d;->trimToSize()V

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    invoke-interface {v0}, Ld/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final journalRebuildRequired()Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/a/d;->redundantOpCount:I

    iget-object v1, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized rebuildJournal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    invoke-interface {v0}, Ld/d;->close()V

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->q(Ljava/io/File;)Ld/r;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ld/r;)Ld/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ld/d;->gb(I)Ld/d;

    const-string v0, "1"

    invoke-interface {v1, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ld/d;->gb(I)Ld/d;

    iget v0, p0, Lokhttp3/internal/a/d;->appVersion:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ld/d;->aD(J)Ld/d;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ld/d;->gb(I)Ld/d;

    iget v0, p0, Lokhttp3/internal/a/d;->valueCount:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ld/d;->aD(J)Ld/d;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ld/d;->gb(I)Ld/d;

    const/16 v0, 0xa

    invoke-interface {v1, v0}, Ld/d;->gb(I)Ld/d;

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    iget-object v3, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-eqz v3, :cond_1

    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Ld/d;->gb(I)Ld/d;

    iget-object v0, v0, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-interface {v1, v0}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    const/16 v0, 0xa

    invoke-interface {v1, v0}, Ld/d;->gb(I)Ld/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Ld/d;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Ld/d;->gb(I)Ld/d;

    iget-object v3, v0, Lokhttp3/internal/a/d$b;->key:Ljava/lang/String;

    invoke-interface {v1, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    invoke-virtual {v0, v1}, Lokhttp3/internal/a/d$b;->b(Ld/d;)V

    const/16 v0, 0xa

    invoke-interface {v1, v0}, Ld/d;->gb(I)Ld/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-interface {v1}, Ld/d;->close()V

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/a/d;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/f/a;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/a/d;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/f/a;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V

    invoke-direct {p0}, Lokhttp3/internal/a/d;->ML()Ld/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/a/d;->cZV:Ld/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->hasJournalErrors:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->mostRecentRebuildFailed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/a/d;->initialize()V

    invoke-direct {p0}, Lokhttp3/internal/a/d;->checkNotClosed()V

    invoke-static {p1}, Lokhttp3/internal/a/d;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    iget-wide v0, p0, Lokhttp3/internal/a/d;->size:J

    iget-wide v2, p0, Lokhttp3/internal/a/d;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->mostRecentTrimFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/a/d;->size:J

    iget-wide v2, p0, Lokhttp3/internal/a/d;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/a/d;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    invoke-virtual {p0, v0}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->mostRecentTrimFailed:Z

    return-void
.end method
