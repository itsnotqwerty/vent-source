.class final Lio/intercom/a/a/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cGK:Lio/intercom/a/a/a/a/a;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private HE()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v0}, Lio/intercom/a/a/a/a/a;->a(Lio/intercom/a/a/a/a/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v0}, Lio/intercom/a/a/a/a/a;->b(Lio/intercom/a/a/a/a/a;)V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v0}, Lio/intercom/a/a/a/a/a;->c(Lio/intercom/a/a/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v0}, Lio/intercom/a/a/a/a/a;->d(Lio/intercom/a/a/a/a/a;)V

    iget-object v0, p0, Lio/intercom/a/a/a/a/a$1;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v0}, Lio/intercom/a/a/a/a/a;->e(Lio/intercom/a/a/a/a/a;)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/a/a$1;->HE()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
