.class public final Lio/intercom/a/a/a/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/a/d$a;
    }
.end annotation


# static fields
.field private static final cIj:Lio/intercom/a/a/a/c/a/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/a/c$a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final cIi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/a/c$a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/a/d$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/a/d$1;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/a/d;->cIj:Lio/intercom/a/a/a/c/a/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/d;->cIi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized at(Ljava/lang/Object;)Lio/intercom/a/a/a/c/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/intercom/a/a/a/c/a/c",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/d;->cIi:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/c$a;

    if-nez v0, :cond_1

    iget-object v1, p0, Lio/intercom/a/a/a/c/a/d;->cIi:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/a/a/a/c/a/c$a;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/c$a;->HU()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lio/intercom/a/a/a/c/a/d;->cIj:Lio/intercom/a/a/a/c/a/c$a;

    :cond_2
    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/a/c$a;->at(Ljava/lang/Object;)Lio/intercom/a/a/a/c/a/c;
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

.method public final declared-synchronized b(Lio/intercom/a/a/a/c/a/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a/c$a",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/d;->cIi:Ljava/util/Map;

    invoke-interface {p1}, Lio/intercom/a/a/a/c/a/c$a;->HU()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
