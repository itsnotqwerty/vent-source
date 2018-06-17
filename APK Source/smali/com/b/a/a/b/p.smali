.class public final Lcom/b/a/a/b/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/b/p$c;,
        Lcom/b/a/a/b/p$a;,
        Lcom/b/a/a/b/p$b;
    }
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field b:J

.field bCF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final bIk:Lcom/b/a/a/b/n;

.field private bKe:Lcom/b/a/a/b/a;

.field public bLB:Lcom/b/a/a/b/o;

.field public final bLC:Lcom/b/a/a/b/p$b;

.field final bLD:Lcom/b/a/a/b/p$a;

.field public final bLE:Lcom/b/a/a/b/p$c;

.field private final bLF:Lcom/b/a/a/b/p$c;

.field brA:J

.field public final bzS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/b/a/a/b/p;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/b/a/a/b/n;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/b/a/a/b/n;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/a/b/p;->brA:J

    new-instance v0, Lcom/b/a/a/b/p$c;

    invoke-direct {v0, p0}, Lcom/b/a/a/b/p$c;-><init>(Lcom/b/a/a/b/p;)V

    iput-object v0, p0, Lcom/b/a/a/b/p;->bLE:Lcom/b/a/a/b/p$c;

    new-instance v0, Lcom/b/a/a/b/p$c;

    invoke-direct {v0, p0}, Lcom/b/a/a/b/p$c;-><init>(Lcom/b/a/a/b/p;)V

    iput-object v0, p0, Lcom/b/a/a/b/p;->bLF:Lcom/b/a/a/b/p$c;

    iput-object v2, p0, Lcom/b/a/a/b/p;->bLB:Lcom/b/a/a/b/o;

    iput-object v2, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/b/a/a/b/p;->f:I

    iput-object p2, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget-object v0, p2, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    invoke-virtual {v0}, Lcom/b/a/a/b/l;->zS()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b/a/a/b/p;->b:J

    new-instance v0, Lcom/b/a/a/b/p$b;

    iget-object v1, p2, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    invoke-virtual {v1}, Lcom/b/a/a/b/l;->zS()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/b/a/a/b/p$b;-><init>(Lcom/b/a/a/b/p;JB)V

    iput-object v0, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    new-instance v0, Lcom/b/a/a/b/p$a;

    invoke-direct {v0, p0}, Lcom/b/a/a/b/p$a;-><init>(Lcom/b/a/a/b/p;)V

    iput-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v0, p4}, Lcom/b/a/a/b/p$b;->a(Lcom/b/a/a/b/p$b;Z)Z

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v0, p3}, Lcom/b/a/a/b/p$a;->a(Lcom/b/a/a/b/p$a;Z)Z

    iput-object p5, p0, Lcom/b/a/a/b/p;->bzS:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    return-object v0
.end method

.method private c(Lcom/b/a/a/b/a;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/b/a/a/b/p;->e:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    if-eqz v1, :cond_1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v1}, Lcom/b/a/a/b/p$b;->a(Lcom/b/a/a/b/p$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v1}, Lcom/b/a/a/b/p$a;->a(Lcom/b/a/a/b/p$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget v1, p0, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/b/a/a/b/p;)I
    .locals 1

    iget v0, p0, Lcom/b/a/a/b/p;->f:I

    return v0
.end method

.method static synthetic e(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLE:Lcom/b/a/a/b/p$c;

    return-object v0
.end method

.method static synthetic f(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    return-object v0
.end method

.method static synthetic g(Lcom/b/a/a/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/b/a/a/b/p;->l()V

    return-void
.end method

.method static synthetic h(Lcom/b/a/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/b/a/a/b/p;->e:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v0}, Lcom/b/a/a/b/p$b;->a(Lcom/b/a/a/b/p$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v0}, Lcom/b/a/a/b/p$b;->b(Lcom/b/a/a/b/p$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v0}, Lcom/b/a/a/b/p$a;->a(Lcom/b/a/a/b/p$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v0}, Lcom/b/a/a/b/p$a;->b(Lcom/b/a/a/b/p$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/a/b/p;->b()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    invoke-virtual {p0, v0}, Lcom/b/a/a/b/p;->a(Lcom/b/a/a/b/a;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget v1, p0, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

    goto :goto_1
.end method

.method static synthetic i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLF:Lcom/b/a/a/b/p$c;

    return-object v0
.end method

.method static synthetic j(Lcom/b/a/a/b/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v0}, Lcom/b/a/a/b/p$a;->b(Lcom/b/a/a/b/p$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v0}, Lcom/b/a/a/b/p$a;->a(Lcom/b/a/a/b/p$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method final a(J)V
    .locals 3

    iget-wide v0, p0, Lcom/b/a/a/b/p;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/b/a/a/b/p;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/b/a/a/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget v1, p0, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v0, v1, p1}, Lcom/b/a/a/b/n;->b(ILcom/b/a/a/b/a;)V

    goto :goto_0
.end method

.method public final b(Lcom/b/a/a/b/a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget v1, p0, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v0, v1, p1}, Lcom/b/a/a/b/n;->a(ILcom/b/a/a/b/a;)V

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v1}, Lcom/b/a/a/b/p$b;->a(Lcom/b/a/a/b/p$b;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v1}, Lcom/b/a/a/b/p$b;->b(Lcom/b/a/a/b/p$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v1}, Lcom/b/a/a/b/p$a;->a(Lcom/b/a/a/b/p$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    invoke-static {v1}, Lcom/b/a/a/b/p$a;->b(Lcom/b/a/a/b/p$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/b/a/a/b/p;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget-boolean v3, v3, Lcom/b/a/a/b/n;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method final declared-synchronized d(Lcom/b/a/a/b/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
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

.method final i()V
    .locals 2

    sget-boolean v0, Lcom/b/a/a/b/p;->e:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a/a/b/p$b;->a(Lcom/b/a/a/b/p$b;Z)Z

    invoke-virtual {p0}, Lcom/b/a/a/b/p;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget v1, p0, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zU()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bLE:Lcom/b/a/a/b/p$c;

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/b/a/a/b/p;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/b/a/a/b/p;->bLE:Lcom/b/a/a/b/p$c;

    invoke-virtual {v1}, Lcom/b/a/a/b/p$c;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/b/a/a/b/p;->bLE:Lcom/b/a/a/b/p$c;

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->b()V

    iget-object v0, p0, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/b/p;->bKe:Lcom/b/a/a/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public final zV()Lb/r;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/b/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    return-object v0
.end method
