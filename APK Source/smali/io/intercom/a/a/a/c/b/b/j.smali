.class public final Lio/intercom/a/a/a/c/b/b/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/b/j$a;
    }
.end annotation


# instance fields
.field private final cMe:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/b/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final loadIdToSafeHash:Lio/intercom/a/a/a/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/e",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/i/e;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lio/intercom/a/a/a/i/e;-><init>(J)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/j;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    const/16 v0, 0xa

    new-instance v1, Lio/intercom/a/a/a/c/b/b/j$1;

    invoke-direct {v1, p0}, Lio/intercom/a/a/a/c/b/b/j$1;-><init>(Lio/intercom/a/a/a/c/b/b/j;)V

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/a/a;->a(ILio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/j;->cMe:Landroid/support/v4/g/k$a;

    return-void
.end method

.method private d(Lio/intercom/a/a/a/c/h;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/j;->cMe:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/b/j$a;

    :try_start_0
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/b/j$a;->cMg:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lio/intercom/a/a/a/c/h;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/b/j$a;->cMg:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lio/intercom/a/a/a/i/i;->D([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b/j;->cMe:Landroid/support/v4/g/k$a;

    invoke-interface {v2, v0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b/j;->cMe:Landroid/support/v4/g/k$a;

    invoke-interface {v2, v0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    throw v1
.end method


# virtual methods
.method public final c(Lio/intercom/a/a/a/c/h;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b/j;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/j;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/i/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/c/b/b/j;->d(Lio/intercom/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b/j;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lio/intercom/a/a/a/c/b/b/j;->loadIdToSafeHash:Lio/intercom/a/a/a/i/e;

    invoke-virtual {v2, p1, v0}, Lio/intercom/a/a/a/i/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
