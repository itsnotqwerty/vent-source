.class public final Lio/intercom/a/a/a/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/c;
.implements Lio/intercom/a/a/a/g/d;


# instance fields
.field private cOz:Z

.field private final cPI:Lio/intercom/a/a/a/g/d;

.field private cQv:Lio/intercom/a/a/a/g/c;

.field private cQw:Lio/intercom/a/a/a/g/c;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/j;-><init>(Lio/intercom/a/a/a/g/d;)V

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/g/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    return-void
.end method


# virtual methods
.method public final Ju()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->Ju()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->Ju()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Jv()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    invoke-interface {v2}, Lio/intercom/a/a/a/g/d;->Jv()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/j;->Ju()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/a/a/g/c;Lio/intercom/a/a/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    iput-object p2, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/g/c;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/g/j;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/g/j;

    iget-object v1, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    if-nez v1, :cond_1

    iget-object v1, p1, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    if-nez v1, :cond_2

    iget-object v1, p1, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    if-nez v1, :cond_0

    :goto_1
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    iget-object v2, p1, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v1, v2}, Lio/intercom/a/a/a/g/c;->a(Lio/intercom/a/a/a/g/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    iget-object v2, p1, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v1, v2}, Lio/intercom/a/a/a/g/c;->a(Lio/intercom/a/a/a/g/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public final b(Lio/intercom/a/a/a/g/c;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    invoke-interface {v2, p0}, Lio/intercom/a/a/a/g/d;->b(Lio/intercom/a/a/a/g/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v2}, Lio/intercom/a/a/a/g/c;->Ju()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final begin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/j;->cOz:Z

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->begin()V

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/j;->cOz:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->begin()V

    :cond_1
    return-void
.end method

.method public final c(Lio/intercom/a/a/a/g/c;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    invoke-interface {v2, p0}, Lio/intercom/a/a/a/g/d;->c(Lio/intercom/a/a/a/g/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/j;->Jv()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/j;->cOz:Z

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->clear()V

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->clear()V

    return-void
.end method

.method public final d(Lio/intercom/a/a/a/g/c;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    invoke-interface {v2, p0}, Lio/intercom/a/a/a/g/d;->d(Lio/intercom/a/a/a/g/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final f(Lio/intercom/a/a/a/g/c;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/d;->f(Lio/intercom/a/a/a/g/c;)V

    :cond_2
    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->clear()V

    goto :goto_0
.end method

.method public final g(Lio/intercom/a/a/a/g/c;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cPI:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/d;->g(Lio/intercom/a/a/a/g/c;)V

    goto :goto_0
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isComplete()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFailed()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isFailed()Z

    move-result v0

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/j;->cOz:Z

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->pause()V

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->pause()V

    return-void
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQv:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->recycle()V

    iget-object v0, p0, Lio/intercom/a/a/a/g/j;->cQw:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->recycle()V

    return-void
.end method
