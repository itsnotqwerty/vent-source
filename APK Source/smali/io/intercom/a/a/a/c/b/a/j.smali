.class public final Lio/intercom/a/a/a/c/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/a/j$a;,
        Lio/intercom/a/a/a/c/b/a/j$b;
    }
.end annotation


# instance fields
.field private final cLh:Lio/intercom/a/a/a/c/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/a/h",
            "<",
            "Lio/intercom/a/a/a/c/b/a/j$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final cLo:Lio/intercom/a/a/a/c/b/a/j$b;

.field private final cLp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cLq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/b/a/a",
            "<*>;>;"
        }
    .end annotation
.end field

.field private dI:I

.field private final maxSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/a/h;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/h;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    new-instance v0, Lio/intercom/a/a/a/c/b/a/j$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/j$b;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLo:Lio/intercom/a/a/a/c/b/a/j$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLp:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLq:Ljava/util/Map;

    const/high16 v0, 0x400000

    iput v0, p0, Lio/intercom/a/a/a/c/b/a/j;->maxSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/a/h;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/h;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    new-instance v0, Lio/intercom/a/a/a/c/b/a/j$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/j$b;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLo:Lio/intercom/a/a/a/c/b/a/j$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLp:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLq:Ljava/util/Map;

    iput p1, p0, Lio/intercom/a/a/a/c/b/a/j;->maxSize:I

    return-void
.end method

.method private D(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/j;->cLp:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private E(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lio/intercom/a/a/a/c/b/a/a",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/a;

    if-nez v0, :cond_0

    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/b/a/i;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/i;-><init>()V

    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/j;->cLq:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lio/intercom/a/a/a/c/b/a/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/g;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No array pool found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lio/intercom/a/a/a/c/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/b/a/j$a;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/intercom/a/a/a/c/b/a/j;->E(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/a/a;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/a/h;->b(Lio/intercom/a/a/a/c/b/a/m;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/a;->au(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/a/a;->Iv()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/a;->au(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lio/intercom/a/a/a/c/b/a/j;->b(ILjava/lang/Class;)V

    :cond_0
    if-nez v0, :cond_2

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/a/a;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/a/a;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allocated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p1, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/a;->fg(I)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private b(ILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/intercom/a/a/a/c/b/a/j;->D(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to decrement empty size, size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private fi(I)V
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/a/h;->removeLast()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/intercom/a/a/a/c/b/a/j;->E(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/a/a;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/a;->au(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/a/a;->Iv()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/a;->au(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/intercom/a/a/a/c/b/a/j;->b(ILjava/lang/Class;)V

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/a/a;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/a/a;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evicted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/a;->au(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized C(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLo:Lio/intercom/a/a/a/c/b/a/j$b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lio/intercom/a/a/a/c/b/a/j$b;->c(ILjava/lang/Class;)Lio/intercom/a/a/a/c/b/a/j$a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/intercom/a/a/a/c/b/a/j;->a(Lio/intercom/a/a/a/c/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Iw()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/b/a/j;->fi(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lio/intercom/a/a/a/c/b/a/j;->D(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget v3, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    if-eqz v3, :cond_0

    iget v3, p0, Lio/intercom/a/a/a/c/b/a/j;->maxSize:I

    iget v4, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    div-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, p1, 0x8

    if-gt v3, v4, :cond_3

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/j;->cLo:Lio/intercom/a/a/a/c/b/a/j$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Lio/intercom/a/a/a/c/b/a/j$b;->c(ILjava/lang/Class;)Lio/intercom/a/a/a/c/b/a/j$a;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0, p2}, Lio/intercom/a/a/a/c/b/a/j;->a(Lio/intercom/a/a/a/c/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLo:Lio/intercom/a/a/a/c/b/a/j$b;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/a/a/c/b/a/j$b;->c(ILjava/lang/Class;)Lio/intercom/a/a/a/c/b/a/j$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized fh(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/a/j;->Iw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    :try_start_1
    iget v0, p0, Lio/intercom/a/a/a/c/b/a/j;->maxSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/b/a/j;->fi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized put(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/intercom/a/a/a/c/b/a/j;->E(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/a;->au(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/a/a;->Iv()I

    move-result v0

    mul-int v4, v3, v0

    iget v0, p0, Lio/intercom/a/a/a/c/b/a/j;->maxSize:I

    div-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v4, v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLo:Lio/intercom/a/a/a/c/b/a/j$b;

    invoke-virtual {v0, v3, v2}, Lio/intercom/a/a/a/c/b/a/j$b;->c(ILjava/lang/Class;)Lio/intercom/a/a/a/c/b/a/j$a;

    move-result-object v3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v0, v3, p1}, Lio/intercom/a/a/a/c/b/a/h;->a(Lio/intercom/a/a/a/c/b/a/m;Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lio/intercom/a/a/a/c/b/a/j;->D(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v2

    iget v0, v3, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v3, v3, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    add-int/2addr v0, v4

    iput v0, p0, Lio/intercom/a/a/a/c/b/a/j;->dI:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/a/j;->maxSize:I

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/b/a/j;->fi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
