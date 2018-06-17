.class public final Lio/intercom/a/a/a/c/b/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cJZ:Landroid/support/v4/g/k$a;
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

.field private final cKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lio/intercom/a/a/a/c/b/h",
            "<TData;TResourceType;TTranscode;>;>;"
        }
    .end annotation
.end field

.field private final cKa:Ljava/lang/String;

.field private final csM:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/g/k$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/b/h",
            "<TData;TResourceType;TTranscode;>;>;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/s;->csM:Ljava/lang/Class;

    iput-object p5, p0, Lio/intercom/a/a/a/c/b/s;->cJZ:Landroid/support/v4/g/k$a;

    invoke-static {p4}, Lio/intercom/a/a/a/i/h;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/s;->cKS:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed LoadPath{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/s;->cKa:Ljava/lang/String;

    return-void
.end method

.method private a(Lio/intercom/a/a/a/c/a/c;Lio/intercom/a/a/a/c/j;IILio/intercom/a/a/a/c/b/h$a;Ljava/util/List;)Lio/intercom/a/a/a/c/b/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a/c",
            "<TData;>;",
            "Lio/intercom/a/a/a/c/j;",
            "II",
            "Lio/intercom/a/a/a/c/b/h$a",
            "<TResourceType;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/c/b/p;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/s;->cKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/s;->cKS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/h;

    :try_start_0
    invoke-virtual {v0, p1, p3, p4, p2}, Lio/intercom/a/a/a/c/b/h;->a(Lio/intercom/a/a/a/c/a/c;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v4

    invoke-interface {p5, v4}, Lio/intercom/a/a/a/c/b/h$a;->a(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v4

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/h;->cJY:Lio/intercom/a/a/a/c/d/f/d;

    invoke-interface {v0, v4}, Lio/intercom/a/a/a/c/d/f/d;->e(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catch Lio/intercom/a/a/a/c/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lio/intercom/a/a/a/c/b/p;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/s;->cKa:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/a/c;Lio/intercom/a/a/a/c/j;IILio/intercom/a/a/a/c/b/h$a;)Lio/intercom/a/a/a/c/b/u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a/c",
            "<TData;>;",
            "Lio/intercom/a/a/a/c/j;",
            "II",
            "Lio/intercom/a/a/a/c/b/h$a",
            "<TResourceType;>;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/c/b/p;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/s;->cJZ:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/c/b/s;->a(Lio/intercom/a/a/a/c/a/c;Lio/intercom/a/a/a/c/j;IILio/intercom/a/a/a/c/b/h$a;Ljava/util/List;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/s;->cJZ:Landroid/support/v4/g/k$a;

    invoke-interface {v1, v6}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/s;->cJZ:Landroid/support/v4/g/k$a;

    invoke-interface {v1, v6}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoadPath{decodePaths="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/s;->cKS:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/s;->cKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/intercom/a/a/a/c/b/h;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
