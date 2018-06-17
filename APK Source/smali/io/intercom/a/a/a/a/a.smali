.class public final Lio/intercom/a/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/a/a$a;,
        Lio/intercom/a/a/a/a/a$c;,
        Lio/intercom/a/a/a/a/a$b;,
        Lio/intercom/a/a/a/a/a$d;
    }
.end annotation


# instance fields
.field private final appVersion:I

.field private cGH:Ljava/io/Writer;

.field final cGI:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final cGJ:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/a/a/a/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lio/intercom/a/a/a/a/a;->size:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lio/intercom/a/a/a/a/a;->nextSequenceNumber:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lio/intercom/a/a/a/a/a$a;

    invoke-direct {v8, v2}, Lio/intercom/a/a/a/a/a$a;-><init>(B)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lio/intercom/a/a/a/a/a;->cGI:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lio/intercom/a/a/a/a/a$1;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/a/a$1;-><init>(Lio/intercom/a/a/a/a/a;)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->cGJ:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lio/intercom/a/a/a/a/a;->directory:Ljava/io/File;

    iput v3, p0, Lio/intercom/a/a/a/a/a;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFileTmp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFileBackup:Ljava/io/File;

    iput v3, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    iput-wide p2, p0, Lio/intercom/a/a/a/a/a;->maxSize:J

    return-void
.end method

.method public static a(Ljava/io/File;J)Lio/intercom/a/a/a/a/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    new-instance v0, Lio/intercom/a/a/a/a/a;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/a/a/a/a/a;-><init>(Ljava/io/File;J)V

    iget-object v1, v0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {v0}, Lio/intercom/a/a/a/a/a;->readJournal()V

    invoke-direct {v0}, Lio/intercom/a/a/a/a/a;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/intercom/a/a/a/a/a;->delete()V

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lio/intercom/a/a/a/a/a;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/a/a/a/a/a;-><init>(Ljava/io/File;J)V

    invoke-direct {v0}, Lio/intercom/a/a/a/a/a;->rebuildJournal()V

    goto :goto_1
.end method

.method static synthetic a(Lio/intercom/a/a/a/a/a;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lio/intercom/a/a/a/a/a$b;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lio/intercom/a/a/a/a/a$b;->cGL:Lio/intercom/a/a/a/a/a$c;

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

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
    iget-boolean v1, v2, Lio/intercom/a/a/a/a/a$c;->readable:Z

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget v3, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lio/intercom/a/a/a/a/a$b;->written:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/a/a/a/a$b;->abort()V

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
    iget-object v3, v2, Lio/intercom/a/a/a/a/a$c;->dirtyFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lio/intercom/a/a/a/a/a$b;->abort()V
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
    iget v1, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    if-ge v0, v1, :cond_7

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v1, v0

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lio/intercom/a/a/a/a/a$c;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->lengths:[J

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->lengths:[J

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lio/intercom/a/a/a/a/a;->size:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/intercom/a/a/a/a/a;->size:J

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lio/intercom/a/a/a/a/a;->k(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    const/4 v0, 0x0

    iput-object v0, v2, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    iget-boolean v0, v2, Lio/intercom/a/a/a/a/a$c;->readable:Z

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, v2, Lio/intercom/a/a/a/a/a$c;->readable:Z

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v2}, Lio/intercom/a/a/a/a/a$c;->HG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_8

    iget-wide v0, p0, Lio/intercom/a/a/a/a/a;->nextSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lio/intercom/a/a/a/a/a;->nextSequenceNumber:J

    iput-wide v0, v2, Lio/intercom/a/a/a/a/a$c;->sequenceNumber:J

    :cond_8
    :goto_4
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lio/intercom/a/a/a/a/a;->size:J

    iget-wide v2, p0, Lio/intercom/a/a/a/a/a;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGI:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGJ:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    iget-object v1, v2, Lio/intercom/a/a/a/a/a$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/intercom/a/a/a/a/a;->a(Lio/intercom/a/a/a/a/a$b;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lio/intercom/a/a/a/a/a;->k(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic b(Lio/intercom/a/a/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->trimToSize()V

    return-void
.end method

.method static synthetic c(Lio/intercom/a/a/a/a/a;)Z
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic d(Lio/intercom/a/a/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->rebuildJournal()V

    return-void
.end method

.method static synthetic e(Lio/intercom/a/a/a/a/a;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    return v0
.end method

.method static synthetic f(Lio/intercom/a/a/a/a/a;)I
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    return v0
.end method

.method static synthetic g(Lio/intercom/a/a/a/a/a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->directory:Ljava/io/File;

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

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

.method private static k(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lio/intercom/a/a/a/a/a;->k(Ljava/io/File;)V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lio/intercom/a/a/a/a/a$c;

    iget-object v1, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iget v4, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    if-ge v1, v4, :cond_0

    iget-wide v4, p0, Lio/intercom/a/a/a/a/a;->size:J

    iget-object v6, v0, Lio/intercom/a/a/a/a/a$c;->lengths:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/intercom/a/a/a/a/a;->size:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    move v1, v2

    :goto_2
    iget v4, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    if-ge v1, v4, :cond_2

    iget-object v4, v0, Lio/intercom/a/a/a/a/a$c;->cleanFiles:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-static {v4}, Lio/intercom/a/a/a/a/a;->k(Ljava/io/File;)V

    iget-object v4, v0, Lio/intercom/a/a/a/a/a$c;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-static {v4}, Lio/intercom/a/a/a/a/a;->k(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v10, -0x1

    new-instance v5, Lio/intercom/a/a/a/a/b;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lio/intercom/a/a/a/a/c;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v3}, Lio/intercom/a/a/a/a/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v5}, Lio/intercom/a/a/a/a/b;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lio/intercom/a/a/a/a/b;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lio/intercom/a/a/a/a/b;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lio/intercom/a/a/a/a/b;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lio/intercom/a/a/a/a/b;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lio/intercom/a/a/a/a/a;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unexpected journal header: ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

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

    invoke-static {v5}, Lio/intercom/a/a/a/a/c;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move v3, v2

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lio/intercom/a/a/a/a/b;->readLine()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v10, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal line: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    iget v0, v5, Lio/intercom/a/a/a/a/b;->end:I

    if-ne v0, v10, :cond_9

    move v0, v1

    :goto_1
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v5}, Lio/intercom/a/a/a/a/c;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2
    add-int/lit8 v0, v7, 0x1

    const/16 v4, 0x20

    :try_start_3
    invoke-virtual {v6, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v10, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    if-ne v7, v4, :cond_b

    const-string v4, "REMOVE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_4
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/a/a$c;

    if-nez v0, :cond_5

    new-instance v0, Lio/intercom/a/a/a/a/a$c;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v4, v9}, Lio/intercom/a/a/a/a/a$c;-><init>(Lio/intercom/a/a/a/a/a;Ljava/lang/String;B)V

    iget-object v9, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v8, v10, :cond_6

    if-ne v7, v11, :cond_6

    const-string v4, "CLEAN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v0, Lio/intercom/a/a/a/a/a$c;->readable:Z

    const/4 v6, 0x0

    iput-object v6, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    invoke-virtual {v0, v4}, Lio/intercom/a/a/a/a/a$c;->setLengths([Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-ne v8, v10, :cond_7

    if-ne v7, v11, :cond_7

    const-string v4, "DIRTY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lio/intercom/a/a/a/a/a$b;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v0, v6}, Lio/intercom/a/a/a/a/a$b;-><init>(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$c;B)V

    iput-object v4, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    goto :goto_3

    :cond_7
    if-ne v8, v10, :cond_8

    const/4 v0, 0x4

    if-ne v7, v0, :cond_8

    const-string v0, "READ"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal line: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    :try_start_4
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lio/intercom/a/a/a/a/c;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_b
    move-object v4, v0

    goto/16 :goto_4
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lio/intercom/a/a/a/a/a;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lio/intercom/a/a/a/a/c;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lio/intercom/a/a/a/a/a;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lio/intercom/a/a/a/a/a$c;

    iget-object v3, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lio/intercom/a/a/a/a/a$c;->key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lio/intercom/a/a/a/a/a$c;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lio/intercom/a/a/a/a/a$c;->HG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->journalFileBackup:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lio/intercom/a/a/a/a/a;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lio/intercom/a/a/a/a/c;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lio/intercom/a/a/a/a/a;->size:J

    iget-wide v2, p0, Lio/intercom/a/a/a/a/a;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/a/a;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/a/a$c;

    iget-object v2, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/a/a$b;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->trimToSize()V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/a/a/a/a;->close()V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->directory:Ljava/io/File;

    invoke-static {v0}, Lio/intercom/a/a/a/a/c;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public final declared-synchronized eU(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$d;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->checkNotClosed()V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/a/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-boolean v3, v0, Lio/intercom/a/a/a/a/a$c;->readable:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lio/intercom/a/a/a/a/a$c;->cleanFiles:[Ljava/io/File;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGI:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lio/intercom/a/a/a/a/a;->cGJ:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v1, Lio/intercom/a/a/a/a/a$d;

    iget-wide v4, v0, Lio/intercom/a/a/a/a/a$c;->sequenceNumber:J

    iget-object v6, v0, Lio/intercom/a/a/a/a/a$c;->cleanFiles:[Ljava/io/File;

    iget-object v7, v0, Lio/intercom/a/a/a/a/a$c;->lengths:[J

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lio/intercom/a/a/a/a/a$d;-><init>(Lio/intercom/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[JB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized eV(Ljava/lang/String;)Lio/intercom/a/a/a/a/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->checkNotClosed()V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/a/a$c;

    cmp-long v2, v4, v4

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lio/intercom/a/a/a/a/a$c;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lio/intercom/a/a/a/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/intercom/a/a/a/a/a$c;-><init>(Lio/intercom/a/a/a/a/a;Ljava/lang/String;B)V

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    new-instance v0, Lio/intercom/a/a/a/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/intercom/a/a/a/a/a$b;-><init>(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$c;B)V

    iput-object v0, v1, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const-string v2, "DIRTY"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v2, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->checkNotClosed()V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/a/a$c;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lio/intercom/a/a/a/a/a;->size:J

    iget-object v4, v0, Lio/intercom/a/a/a/a/a$c;->lengths:[J

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/intercom/a/a/a/a/a;->size:J

    iget-object v2, v0, Lio/intercom/a/a/a/a/a$c;->lengths:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lio/intercom/a/a/a/a/a;->valueCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Lio/intercom/a/a/a/a/a$c;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    iget v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/a/a;->redundantOpCount:I

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const-string v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGH:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/a/a;->cGI:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lio/intercom/a/a/a/a/a;->cGJ:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
