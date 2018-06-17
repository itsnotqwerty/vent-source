.class public final Lio/intercom/a/a/a/c/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/u",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private cIF:Lio/intercom/a/a/a/c/b/o$a;

.field private cIL:Lio/intercom/a/a/a/c/h;

.field final cIM:Z

.field final cIN:Lio/intercom/a/a/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private final cKJ:Z

.field private cKK:I

.field private cKL:Z


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/u;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/u;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    iput-boolean p2, p0, Lio/intercom/a/a/a/c/b/o;->cIM:Z

    iput-boolean p3, p0, Lio/intercom/a/a/a/c/b/o;->cKJ:Z

    return-void
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->Iu()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o$a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/o;->cIL:Lio/intercom/a/a/a/c/h;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/o;->cIF:Lio/intercom/a/a/a/c/b/o$a;

    return-void
.end method

.method public final acquire()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/o;->cKL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->getSize()I

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/o;->cKL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/o;->cKL:Z

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/o;->cKJ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    :cond_2
    return-void
.end method

.method public final release()V
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/o;->cIF:Lio/intercom/a/a/a/c/b/o$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/o;->cIL:Lio/intercom/a/a/a/c/h;

    invoke-interface {v0, v1, p0}, Lio/intercom/a/a/a/c/b/o$a;->b(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineResource{isCacheable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/intercom/a/a/a/c/b/o;->cIM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/o;->cIF:Lio/intercom/a/a/a/c/b/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/o;->cIL:Lio/intercom/a/a/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/a/a/a/c/b/o;->cKK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/a/a/a/c/b/o;->cKL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
