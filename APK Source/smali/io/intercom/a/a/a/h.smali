.class public final Lio/intercom/a/a/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/h$b;,
        Lio/intercom/a/a/a/h$a;,
        Lio/intercom/a/a/a/h$e;,
        Lio/intercom/a/a/a/h$d;,
        Lio/intercom/a/a/a/h$c;
    }
.end annotation


# instance fields
.field private final cFW:Lio/intercom/a/a/a/c/c/p;

.field public final cFX:Lio/intercom/a/a/a/f/a;

.field private final cFY:Lio/intercom/a/a/a/f/e;

.field public final cFZ:Lio/intercom/a/a/a/f/f;

.field public final cGa:Lio/intercom/a/a/a/c/a/d;

.field private final cGb:Lio/intercom/a/a/a/c/d/f/e;

.field final cGc:Lio/intercom/a/a/a/f/b;

.field private final cGd:Lio/intercom/a/a/a/f/d;

.field private final cGe:Lio/intercom/a/a/a/f/c;

.field private final cGf:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/f/d;

    invoke-direct {v0}, Lio/intercom/a/a/a/f/d;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cGd:Lio/intercom/a/a/a/f/d;

    new-instance v0, Lio/intercom/a/a/a/f/c;

    invoke-direct {v0}, Lio/intercom/a/a/a/f/c;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cGe:Lio/intercom/a/a/a/f/c;

    invoke-static {}, Lio/intercom/a/a/a/i/a/a;->JW()Landroid/support/v4/g/k$a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cGf:Landroid/support/v4/g/k$a;

    new-instance v0, Lio/intercom/a/a/a/c/c/p;

    iget-object v1, p0, Lio/intercom/a/a/a/h;->cGf:Landroid/support/v4/g/k$a;

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/c/p;-><init>(Landroid/support/v4/g/k$a;)V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cFW:Lio/intercom/a/a/a/c/c/p;

    new-instance v0, Lio/intercom/a/a/a/f/a;

    invoke-direct {v0}, Lio/intercom/a/a/a/f/a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cFX:Lio/intercom/a/a/a/f/a;

    new-instance v0, Lio/intercom/a/a/a/f/e;

    invoke-direct {v0}, Lio/intercom/a/a/a/f/e;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cFY:Lio/intercom/a/a/a/f/e;

    new-instance v0, Lio/intercom/a/a/a/f/f;

    invoke-direct {v0}, Lio/intercom/a/a/a/f/f;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cFZ:Lio/intercom/a/a/a/f/f;

    new-instance v0, Lio/intercom/a/a/a/c/a/d;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/a/d;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cGa:Lio/intercom/a/a/a/c/a/d;

    new-instance v0, Lio/intercom/a/a/a/c/d/f/e;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/d/f/e;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cGb:Lio/intercom/a/a/a/c/d/f/e;

    new-instance v0, Lio/intercom/a/a/a/f/b;

    invoke-direct {v0}, Lio/intercom/a/a/a/f/b;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/h;->cGc:Lio/intercom/a/a/a/f/b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Gif"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "legacy_prepend_all"

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v0, "legacy_append"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFY:Lio/intercom/a/a/a/f/e;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/f/e;->D(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final Hz()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGc:Lio/intercom/a/a/a/f/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/f/b;->Jt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lio/intercom/a/a/a/h$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/h$b;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lio/intercom/a/a/a/c/b/s",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGe:Lio/intercom/a/a/a/f/c;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/a/a/a/f/c;->d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/h;->cGe:Lio/intercom/a/a/a/f/c;

    invoke-virtual {v1, p1, p2, p3}, Lio/intercom/a/a/a/f/c;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFY:Lio/intercom/a/a/a/f/e;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/a/a/f/e;->h(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGb:Lio/intercom/a/a/a/c/d/f/e;

    invoke-virtual {v0, v2, p3}, Lio/intercom/a/a/a/c/d/f/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFY:Lio/intercom/a/a/a/f/e;

    invoke-virtual {v0, p1, v2}, Lio/intercom/a/a/a/f/e;->g(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGb:Lio/intercom/a/a/a/c/d/f/e;

    invoke-virtual {v0, v2, v3}, Lio/intercom/a/a/a/c/d/f/e;->c(Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/d/f/d;

    move-result-object v5

    new-instance v0, Lio/intercom/a/a/a/c/b/h;

    iget-object v6, p0, Lio/intercom/a/a/a/h;->cGf:Landroid/support/v4/g/k$a;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/c/b/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lio/intercom/a/a/a/c/d/f/d;Landroid/support/v4/g/k$a;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lio/intercom/a/a/a/h;->cGe:Lio/intercom/a/a/a/f/c;

    iget-object v2, v1, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    new-instance v3, Lio/intercom/a/a/a/i/g;

    invoke-direct {v3, p1, p2, p3}, Lio/intercom/a/a/a/i/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Lio/intercom/a/a/a/c/b/s;

    iget-object v5, p0, Lio/intercom/a/a/a/h;->cGf:Landroid/support/v4/g/k$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/g/k$a;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lio/intercom/a/a/a/c/a/c$a;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a/c$a",
            "<*>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGa:Lio/intercom/a/a/a/c/a/d;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/a/d;->b(Lio/intercom/a/a/a/c/a/c$a;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lio/intercom/a/a/a/c/d;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lio/intercom/a/a/a/c/d",
            "<TData;>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFX:Lio/intercom/a/a/a/f/a;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/a/a/f/a;->b(Ljava/lang/Class;Lio/intercom/a/a/a/c/d;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lio/intercom/a/a/a/c/l;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lio/intercom/a/a/a/c/l",
            "<TTResource;>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFZ:Lio/intercom/a/a/a/f/f;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/a/a/f/f;->b(Ljava/lang/Class;Lio/intercom/a/a/a/c/l;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lio/intercom/a/a/a/c/c/o",
            "<TModel;TData;>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFW:Lio/intercom/a/a/a/c/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/a/a/a/c/c/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/d/f/d;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Lio/intercom/a/a/a/c/d/f/d",
            "<TTResource;TTranscode;>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGb:Lio/intercom/a/a/a/c/d/f/e;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/a/a/a/c/d/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/d/f/d;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lio/intercom/a/a/a/c/k",
            "<TData;TTResource;>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lio/intercom/a/a/a/c/k",
            "<TData;TTResource;>;)",
            "Lio/intercom/a/a/a/h;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFY:Lio/intercom/a/a/a/f/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lio/intercom/a/a/a/f/e;->a(Ljava/lang/String;Lio/intercom/a/a/a/c/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final ap(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFW:Lio/intercom/a/a/a/c/c/p;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/p;->ap(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lio/intercom/a/a/a/h$c;

    invoke-direct {v0, p1}, Lio/intercom/a/a/a/h$c;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGd:Lio/intercom/a/a/a/f/d;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/a/a/f/d;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/a/a/a/h;->cFW:Lio/intercom/a/a/a/c/c/p;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/p;->F(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v3, p0, Lio/intercom/a/a/a/h;->cFY:Lio/intercom/a/a/a/f/e;

    invoke-virtual {v3, v0, p2}, Lio/intercom/a/a/a/f/e;->h(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v4, p0, Lio/intercom/a/a/a/h;->cGb:Lio/intercom/a/a/a/c/d/f/e;

    invoke-virtual {v4, v0, p3}, Lio/intercom/a/a/a/c/d/f/e;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/a/a/a/h;->cGd:Lio/intercom/a/a/a/f/d;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lio/intercom/a/a/a/f/d;->cPF:Landroid/support/v4/g/a;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lio/intercom/a/a/a/f/d;->cPF:Landroid/support/v4/g/a;

    new-instance v4, Lio/intercom/a/a/a/i/g;

    invoke-direct {v4, p1, p2}, Lio/intercom/a/a/a/i/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    move-object v0, v1

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
