.class public final Landroid/support/v4/app/LoaderManagerImpl$a;
.super Landroid/arch/lifecycle/j;

# interfaces
.implements Landroid/support/v4/content/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/j",
        "<TD;>;",
        "Landroid/support/v4/content/b$a",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final yo:I

.field private zf:Landroid/arch/lifecycle/e;

.field final zh:Landroid/os/Bundle;

.field final zi:Landroid/support/v4/content/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/b",
            "<TD;>;"
        }
    .end annotation
.end field

.field zj:Landroid/support/v4/app/LoaderManagerImpl$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManagerImpl$b",
            "<TD;>;"
        }
    .end annotation
.end field

.field private zk:Landroid/support/v4/content/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/b",
            "<TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Landroid/arch/lifecycle/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/k",
            "<TD;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/arch/lifecycle/j;->a(Landroid/arch/lifecycle/k;)V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zf:Landroid/arch/lifecycle/e;

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zj:Landroid/support/v4/app/LoaderManagerImpl$b;

    return-void
.end method

.method protected final ab()V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/content/b;->uY:Z

    return-void
.end method

.method final cW()V
    .locals 4

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zf:Landroid/arch/lifecycle/e;

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zj:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-super {p0, v0}, Landroid/arch/lifecycle/j;->a(Landroid/arch/lifecycle/k;)V

    invoke-interface {v1}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/lifecycle/c;->Y()Landroid/arch/lifecycle/c$b;

    move-result-object v2

    sget-object v3, Landroid/arch/lifecycle/c$b;->aA:Landroid/arch/lifecycle/c$b;

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v2, p0, v1, v0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/k;)V

    iget-object v3, p0, Landroid/arch/lifecycle/LiveData;->aS:Landroid/arch/a/b/b;

    invoke-virtual {v3, v0, v2}, Landroid/arch/a/b/b;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData$a;->b(Landroid/arch/lifecycle/e;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add the same observer with different lifecycles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/arch/lifecycle/e;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/c;->a(Landroid/arch/lifecycle/d;)V

    :cond_1
    return-void
.end method

.method final cX()Landroid/support/v4/content/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/b",
            "<TD;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Destroying: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    iput-boolean v5, v0, Landroid/support/v4/content/b;->Bc:Z

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zj:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->a(Landroid/arch/lifecycle/k;)V

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$b;->zm:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Resetting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$b;->zi:Landroid/support/v4/content/b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    iget-object v1, v0, Landroid/support/v4/content/b;->Bb:Landroid/support/v4/content/b$a;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v0, Landroid/support/v4/content/b;->Bb:Landroid/support/v4/content/b$a;

    if-eq v1, p0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/content/b;->Bb:Landroid/support/v4/content/b$a;

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    iput-boolean v5, v0, Landroid/support/v4/content/b;->Bd:Z

    iput-boolean v4, v0, Landroid/support/v4/content/b;->uY:Z

    iput-boolean v4, v0, Landroid/support/v4/content/b;->Bc:Z

    iput-boolean v4, v0, Landroid/support/v4/content/b;->Be:Z

    iput-boolean v4, v0, Landroid/support/v4/content/b;->Bf:Z

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zk:Landroid/support/v4/content/b;

    return-object v0
.end method

.method protected final onActive()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Starting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/content/b;->uY:Z

    iput-boolean v3, v0, Landroid/support/v4/content/b;->Bd:Z

    iput-boolean v3, v0, Landroid/support/v4/content/b;->Bc:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->yo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    invoke-static {v1, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
