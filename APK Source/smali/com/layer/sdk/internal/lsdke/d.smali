.class public Lcom/layer/sdk/internal/lsdke/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdke/d$a;,
        Lcom/layer/sdk/internal/lsdke/d$b;
    }
.end annotation


# static fields
.field static final brn:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final h:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Z

.field brm:Landroid/database/sqlite/SQLiteDatabase;

.field final c:Ljava/util/UUID;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdke/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/layer/sdk/internal/lsdke/d;->brn:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdke/d$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/layer/sdk/internal/lsdke/d$b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/layer/sdk/internal/lsdke/d$b;->d:Ljava/util/UUID;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->c:Ljava/util/UUID;

    iget-object v0, p1, Lcom/layer/sdk/internal/lsdke/d$b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/layer/sdk/internal/lsdke/d$b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/layer/sdk/internal/lsdke/d$b;->c:Z

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdke/d;->b:Z

    return-void
.end method

.method private a(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    const/4 v8, 0x6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-eqz p2, :cond_2

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    :goto_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/layer/sdk/internal/lsdke/d$a;->s(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " of 10: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v4, :cond_5

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v5, v1, v4}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_4
    const/16 v5, 0xa

    if-lt v0, v5, :cond_7

    if-eqz v4, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_5
    move-object v4, v1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " of 10: Could not open database"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " of 10: Database is read only (free: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_5
    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v5, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_9
    return-object v2

    :catch_2
    move-exception v1

    goto/16 :goto_5
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/layer/sdk/internal/lsdke/d;->brn:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v2, "PRAGMA foreign_keys=ON"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v2, Lcom/layer/sdk/internal/lsdke/lsdkb/b;

    invoke-direct {v2}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/a;

    const/4 v4, 0x0

    new-instance v5, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdke/d;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layer-schema/schema.sql"

    const-string v8, "layer-migrations"

    invoke-direct {v5, v6, v7, v8}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->a([Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/a;)Lcom/layer/sdk/internal/lsdke/lsdkb/b;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/a;

    const/4 v4, 0x0

    new-instance v5, Lcom/layer/sdk/internal/lsdke/c;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdke/d;->c:Ljava/util/UUID;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdke/d;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/layer/sdk/internal/lsdke/c;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->a([Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/a;)Lcom/layer/sdk/internal/lsdke/lsdkb/b;

    invoke-virtual {v2, p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Dropping database as there is no migrations table."

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "PRAGMA foreign_keys=OFF"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkb/b$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkb/b$a;

    invoke-virtual {v2, p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkb/b$a;)I

    move-result v0

    :goto_1
    const-string v1, "PRAGMA foreign_keys=ON"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Vacuuming database..."

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/d;->f()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Analyzing database..."

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/d;->g()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Validating database..."

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkb/b;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Applied "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " migration(s)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    sget-object v0, Lcom/layer/sdk/internal/lsdke/d;->brn:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_2
    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->h(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Dropping database due to downgrade.  Unsent messages may be lost."

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->brn:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_6
    :try_start_2
    invoke-virtual {v2, p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Applying "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " schema migration(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/layer/sdk/internal/lsdke/d;->brn:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :cond_8
    :try_start_3
    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkb/b$a;->a:Lcom/layer/sdk/internal/lsdke/lsdkb/b$a;

    invoke-virtual {v2, p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkb/b$a;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkb/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v0, 0x0

    invoke-virtual {p2, p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Migrations not applied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "streams"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "syncable_changes"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "synced_changes"

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdke/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not find "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after migration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v0, 0x1

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteLocalDatabase: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez p1, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v2, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "deleteLocalDatabase"

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v2, v5

    if-eqz v2, :cond_1

    array-length v6, v5

    move v4, v1

    :goto_2
    if-ge v4, v6, :cond_9

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Trying to delete Db file: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x64

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x32

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v9, "Sleep interrupted "

    invoke-static {v8, v9, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_7
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    :cond_8
    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Deleted file: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Removed local database file(s)"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Failed to delete local database file(s)"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdke/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/layer/sdk/internal/lsdke/d;->b:Z

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Filesystem schema management failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete database file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' while recovering from bad schema management"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to close database while retrying schema management: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/layer/sdk/internal/lsdke/d;->b:Z

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/content/Context;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM sqlite_master WHERE type = \'table\' AND name = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    :try_start_1
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/d;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/d;->brm:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ANALYZE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
