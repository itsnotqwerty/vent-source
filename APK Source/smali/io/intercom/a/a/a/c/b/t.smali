.class final Lio/intercom/a/a/a/c/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/u;
.implements Lio/intercom/a/a/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/u",
        "<TZ;>;",
        "Lio/intercom/a/a/a/i/a/a$c;"
    }
.end annotation


# static fields
.field private static final cKT:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/t",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cJl:Lio/intercom/a/a/a/i/a/b;

.field private cKL:Z

.field private cKU:Lio/intercom/a/a/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private cKV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-instance v1, Lio/intercom/a/a/a/c/b/t$1;

    invoke-direct {v1}, Lio/intercom/a/a/a/c/b/t$1;-><init>()V

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/a/a;->a(ILio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/b/t;->cKT:Landroid/support/v4/g/k$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/i/a/b$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/a/b$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-void
.end method

.method static c(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;)",
            "Lio/intercom/a/a/a/c/b/t",
            "<TZ;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/c/b/t;->cKT:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/t;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/t;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/a/a/a/c/b/t;->cKL:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/a/a/a/c/b/t;->cKV:Z

    iput-object p0, v0, Lio/intercom/a/a/a/c/b/t;->cKU:Lio/intercom/a/a/a/c/b/u;

    return-object v0
.end method


# virtual methods
.method public final Ij()Lio/intercom/a/a/a/i/a/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-object v0
.end method

.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cKU:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->Iu()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cKU:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cKU:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->getSize()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/t;->cKL:Z

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/t;->cKV:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cKU:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cKU:Lio/intercom/a/a/a/c/b/u;

    sget-object v0, Lio/intercom/a/a/a/c/b/t;->cKT:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z
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

.method final declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/t;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/t;->cKV:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/t;->cKV:Z

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/t;->cKL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/t;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method
