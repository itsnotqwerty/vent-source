.class public final Lio/intercom/a/a/a/c/c/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/r$a;,
        Lio/intercom/a/a/a/c/c/r$c;,
        Lio/intercom/a/a/a/c/c/r$b;
    }
.end annotation


# static fields
.field private static final cNf:Lio/intercom/a/a/a/c/c/r$c;

.field private static final cNg:Lio/intercom/a/a/a/c/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field private final cNh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/r$b",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final cNi:Lio/intercom/a/a/a/c/c/r$c;

.field private final cNj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/intercom/a/a/a/c/c/r$b",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/c/r$c;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/r$c;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/c/r;->cNf:Lio/intercom/a/a/a/c/c/r$c;

    new-instance v0, Lio/intercom/a/a/a/c/c/r$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/r$a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/c/r;->cNg:Lio/intercom/a/a/a/c/c/n;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/g/k$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/c/c/r;->cNf:Lio/intercom/a/a/a/c/c/r$c;

    invoke-direct {p0, p1, v0}, Lio/intercom/a/a/a/c/c/r;-><init>(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/c/c/r$c;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/c/c/r$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Lio/intercom/a/a/a/c/c/r$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/r;->cNh:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/r;->cGf:Landroid/support/v4/g/k$a;

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/r;->cNi:Lio/intercom/a/a/a/c/c/r$c;

    return-void
.end method

.method private a(Lio/intercom/a/a/a/c/c/r$b;)Lio/intercom/a/a/a/c/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/c/r$b",
            "<**>;)",
            "Lio/intercom/a/a/a/c/c/n",
            "<TModel;TData;>;"
        }
    .end annotation

    iget-object v0, p1, Lio/intercom/a/a/a/c/c/r$b;->cNl:Lio/intercom/a/a/a/c/c/o;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/c/c/o;->a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized F(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/r;->cNh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/r$b;

    iget-object v3, v0, Lio/intercom/a/a/a/c/c/r$b;->csM:Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/r$b;->H(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/r$b;->csM:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method final declared-synchronized G(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;)",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<TModel;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/r;->cNh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/r$b;

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/r$b;->H(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/c/r;->a(Lio/intercom/a/a/a/c/c/r$b;)Lio/intercom/a/a/a/c/c/n;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/c/n;
    .locals 7
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
            "<TData;>;)",
            "Lio/intercom/a/a/a/c/c/n",
            "<TModel;TData;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/r;->cNh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/r$b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/r$b;->H(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lio/intercom/a/a/a/c/c/r$b;->csM:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/c/r;->a(Lio/intercom/a/a/a/c/c/r$b;)Lio/intercom/a/a/a/c/c/n;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cNj:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cGf:Landroid/support/v4/g/k$a;

    new-instance v0, Lio/intercom/a/a/a/c/c/q;

    invoke-direct {v0, v5, v1}, Lio/intercom/a/a/a/c/c/q;-><init>(Ljava/util/List;Landroid/support/v4/g/k$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    sget-object v0, Lio/intercom/a/a/a/c/c/r;->cNg:Lio/intercom/a/a/a/c/c/n;

    goto :goto_2

    :cond_6
    new-instance v0, Lio/intercom/a/a/a/h$c;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/h$c;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method final declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)V
    .locals 3
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
            "<+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/intercom/a/a/a/c/c/r$b;

    invoke-direct {v0, p1, p2, p3}, Lio/intercom/a/a/a/c/c/r$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/r;->cNh:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/a/a/a/c/c/r;->cNh:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
