.class public Lcom/layer/sdk/internal/lsdke/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkc/a$b;
.implements Lcom/layer/sdk/internal/lsdke/b;
.implements Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
.implements Lcom/layer/sdk/internal/lsdki/lsdka/b$b;
.implements Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;
.implements Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;
.implements Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdke/g$a;,
        Lcom/layer/sdk/internal/lsdke/g$b;
    }
.end annotation


# static fields
.field private static final h:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final d:Z

.field protected e:Lcom/layer/sdk/internal/lsdke/d;

.field protected final f:Ljava/util/UUID;

.field protected final g:Ljava/lang/String;

.field private final i:Ljava/util/concurrent/locks/ReentrantLock;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdke/g;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->i:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Creating persistence for sync"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/layer/sdk/internal/lsdke/g;->d:Z

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdke/g;->f:Ljava/util/UUID;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdke/g;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/g;->f()V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Created persistence for sync"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/layer/sdk/internal/lsdke/g$a",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->PERSISTENCE_CLOSED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot perform read operation while persistence is closed."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not open database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {p1, v0}, Lcom/layer/sdk/internal/lsdke/g$a;->t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-object v0
.end method

.method private a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/layer/sdk/internal/lsdke/g$b",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->PERSISTENCE_CLOSED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot perform write operation while persistence is closed."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Could not open database"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Could not open writable database"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, v2}, Lcom/layer/sdk/internal/lsdke/g;->l(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Lcom/layer/sdk/internal/lsdke/g$b;->t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    :goto_2
    :try_start_9
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    :try_start_a
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception while ending db transaction"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Exception while ending db transaction"

    invoke-static {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private l(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteDatabaseLockedException;
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-lez v3, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/layer/sdk/internal/lsdke/g;->d:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    add-int/lit8 v3, v3, -0x1

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    throw v0

    :cond_2
    return v2
.end method

.method private w()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "WaitForClose : Resetting persistence connection counter to zero"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WaitForClose. Connection counter:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    :try_start_2
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Sleep interrupted "

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$27;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$27;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;I)Lcom/layer/b/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/UUID;)Lcom/layer/b/d/h;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$11;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$11;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    check-cast p2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;ZLjava/util/Map;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/i;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$48;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$48;-><init>(Lcom/layer/sdk/internal/lsdke/g;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    return-object v0
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "SyncPersistence::createCompressedCopy:Enter"

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/g;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".db"

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkk/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".db-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/g;->g()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".db"

    invoke-static {v5, v6}, Lcom/layer/sdk/internal/lsdkk/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".db-shm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".db-wal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".db-shm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdke/g;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdke/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdke/g;->w()V

    invoke-static {v2, v5}, Lcom/layer/sdk/internal/lsdkk/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    aput-object v5, v8, v0

    :goto_0
    invoke-static {v3, v6}, Lcom/layer/sdk/internal/lsdkk/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aput-object v6, v8, v1

    :goto_1
    invoke-static {v4, v7}, Lcom/layer/sdk/internal/lsdkk/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aput-object v7, v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/layer/sdk/internal/lsdkk/h;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/h;->a([Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/messaging/Conversation;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$47;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$47;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/messaging/Conversation;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$46;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$46;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$64;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$64;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$37;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$37;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdke/f;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$55;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$55;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/f;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdke/lsdka/a;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$54;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$54;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdka/a;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$38;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$38;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            "I)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;JI)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$20;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$20;-><init>(Lcom/layer/sdk/internal/lsdke/g;I)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->i(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/f/c/f;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/f/c/f;",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;",
            "Ljava/lang/Long;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdki/d$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$57;

    invoke-direct {v0, p0, p2}, Lcom/layer/sdk/internal/lsdke/g$57;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$60;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdke/g$60;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;",
            "Ljava/lang/Long;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$53;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/g$53;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdke/lsdka/a$a;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdke/lsdka/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$43;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$43;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/h;",
            ">;",
            "Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$25;

    invoke-direct {v0, p0, p2, p1}, Lcom/layer/sdk/internal/lsdke/g$25;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$51;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$51;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$30;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$30;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public varargs a([Lcom/layer/b/f/c/o;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/layer/b/f/c/o;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$32;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$32;-><init>(Lcom/layer/sdk/internal/lsdke/g;[Lcom/layer/b/f/c/o;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public varargs a([Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/layer/sdk/messaging/MessagePart$TransferStatus;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$10;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$10;-><init>(Lcom/layer/sdk/internal/lsdke/g;[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;ZZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;ZZ)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->h(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {p1, v0, p3, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;ZLjava/util/Map;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdke/lsdka/a$a;",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$50;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdke/g$50;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/a/d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$69;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$69;-><init>(Lcom/layer/sdk/internal/lsdke/g;ILjava/util/List;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/d;

    instance-of v2, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Use persistDistinctConversationChangeable to persist distinct conversation. changeable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Use persistDistinctConversationChangeable to persist distinct conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    :try_start_1
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "persistChangables failed"

    invoke-static {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-void

    :cond_2
    :try_start_2
    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3
    :try_start_3
    instance-of v2, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v2, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown Changeable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Changeable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p1, v3, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1, v4}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;)V

    :cond_a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;)V

    :cond_b
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p1, v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public varargs a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/b/d/i;)V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public varargs a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/sdk/internal/lsdki/c;)V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/layer/b/d/c;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$7;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$7;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/b/d/c;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$26;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/b/d/h;Z)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$34;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/b/d/h;Z)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/d;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$45;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$45;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V
    .locals 9

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$56;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/layer/sdk/internal/lsdke/g$56;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/sdk/messaging/Conversation;I)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$42;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$42;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;I)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/sdk/messaging/Conversation;Z)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$40;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$40;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;Z)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdke/lsdka/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$63;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$63;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$71;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$71;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$5;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$5;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/HashMap;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;",
            "Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$70;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$70;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/UUID;Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$16;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/UUID;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/Set;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$31;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$31;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Lcom/layer/b/d/h;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)Lcom/layer/b/d/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Lcom/layer/b/d/h;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$28;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$13;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$13;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    return-object v0
.end method

.method public b(Ljava/util/UUID;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$36;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$36;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$49;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$49;-><init>(Lcom/layer/sdk/internal/lsdke/g;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$17;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$17;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$58;

    invoke-direct {v0, p0, p2}, Lcom/layer/sdk/internal/lsdke/g$58;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$39;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$39;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(Lcom/layer/sdk/messaging/Conversation;I)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$44;-><init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;I)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/c;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$12;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$12;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$65;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/g$65;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$72;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$72;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$6;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$6;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/HashMap;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$33;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$33;-><init>(Lcom/layer/sdk/internal/lsdke/g;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    return-object v0
.end method

.method public c(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$15;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$15;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->k(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$41;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$41;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public c(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/i;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$3;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$3;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$66;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$66;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$59;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$59;-><init>(Lcom/layer/sdk/internal/lsdke/g;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$68;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$68;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->l(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public d(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$52;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$52;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$67;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$67;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->PERSISTENCE_CLOSED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot begin write operation while persistence is closed."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    if-nez v0, :cond_3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Database is closed"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not open database"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not open database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not open writable database"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not open writable database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->l(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    return-object v0

    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->n(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$73;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$73;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdke/d;

    new-instance v1, Lcom/layer/sdk/internal/lsdke/g$1;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdke/g$1;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {v0, v1}, Lcom/layer/sdk/internal/lsdke/d;-><init>(Lcom/layer/sdk/internal/lsdke/d$b;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->a()Lcom/layer/sdk/internal/lsdke/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->PERSISTENCE_CREATION_FAILED:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create persistence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public f(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$74;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$74;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SyncPersistence was not closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->m(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$2;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdke/g$2;-><init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/i;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/i;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/layer/sdk/internal/lsdke/g;
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Closing SyncPersistence"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Waiting current database connections to finish"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdke/g;->w()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdke/g;->h:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Closing database connection pool"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/d;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->e:Lcom/layer/sdk/internal/lsdke/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->g(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public i()Z
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$35;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$35;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$4;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$4;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$8;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$8;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/c;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/c;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$9;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$9;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$14;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$14;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public n(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/h;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$18;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$18;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$19;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$19;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/l;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->n(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$21;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$21;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$22;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$22;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$24;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$24;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$29;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$29;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$61;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$61;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$62;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$62;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public v()V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdke/g$23;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdke/g$23;-><init>(Lcom/layer/sdk/internal/lsdke/g;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/g$b;)Ljava/lang/Object;

    return-void
.end method
