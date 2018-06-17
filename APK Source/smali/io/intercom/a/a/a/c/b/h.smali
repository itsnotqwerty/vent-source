.class public final Lio/intercom/a/a/a/c/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
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
.field private final cJX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lio/intercom/a/a/a/c/k",
            "<TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field final cJY:Lio/intercom/a/a/a/c/d/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/d/f/d",
            "<TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

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

.field private final cKa:Ljava/lang/String;

.field private final csM:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lio/intercom/a/a/a/c/d/f/d;Landroid/support/v4/g/k$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Ljava/util/List",
            "<+",
            "Lio/intercom/a/a/a/c/k",
            "<TDataType;TResourceType;>;>;",
            "Lio/intercom/a/a/a/c/d/f/d",
            "<TResourceType;TTranscode;>;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/h;->csM:Ljava/lang/Class;

    iput-object p4, p0, Lio/intercom/a/a/a/c/b/h;->cJX:Ljava/util/List;

    iput-object p5, p0, Lio/intercom/a/a/a/c/b/h;->cJY:Lio/intercom/a/a/a/c/d/f/d;

    iput-object p6, p0, Lio/intercom/a/a/a/c/b/h;->cJZ:Landroid/support/v4/g/k$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed DecodePath{"

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

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/h;->cKa:Ljava/lang/String;

    return-void
.end method

.method private a(Lio/intercom/a/a/a/c/a/c;IILio/intercom/a/a/a/c/j;Ljava/util/List;)Lio/intercom/a/a/a/c/b/u;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a/c",
            "<TDataType;>;II",
            "Lio/intercom/a/a/a/c/j;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/c/b/p;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/h;->cJX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/h;->cJX:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/k;

    :try_start_0
    invoke-interface {p1}, Lio/intercom/a/a/a/c/a/c;->HV()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p4}, Lio/intercom/a/a/a/c/k;->a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lio/intercom/a/a/a/c/a/c;->HV()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3, p4}, Lio/intercom/a/a/a/c/k;->a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    const-string v5, "DecodePath"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "DecodePath"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to decode data for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lio/intercom/a/a/a/c/b/p;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/h;->cKa:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_2
    return-object v1

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a(Lio/intercom/a/a/a/c/a/c;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a/c",
            "<TDataType;>;II",
            "Lio/intercom/a/a/a/c/j;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/c/b/p;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/h;->cJZ:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/h;->a(Lio/intercom/a/a/a/c/a/c;IILio/intercom/a/a/a/c/j;Ljava/util/List;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/h;->cJZ:Landroid/support/v4/g/k$a;

    invoke-interface {v1, v5}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/h;->cJZ:Landroid/support/v4/g/k$a;

    invoke-interface {v1, v5}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodePath{ dataClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/h;->csM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/h;->cJX:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/h;->cJY:Lio/intercom/a/a/a/c/d/f/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
