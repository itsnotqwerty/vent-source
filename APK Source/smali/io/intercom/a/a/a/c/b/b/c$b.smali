.class final Lio/intercom/a/a/a/c/b/b/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/intercom/a/a/a/c/b/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/c$b;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method final ID()Lio/intercom/a/a/a/c/b/b/c$a;
    .locals 2

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/b/c$b;->pool:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/c$b;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/b/c$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/c/b/b/c$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/b/c$a;-><init>()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
