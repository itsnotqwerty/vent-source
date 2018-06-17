.class final Lio/intercom/a/a/a/c/b/g$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private cJJ:Z

.field private cJK:Z

.field private cJL:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Io()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJK:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJJ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized Il()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJJ:Z

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g$e;->Io()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Im()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJK:Z

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g$e;->Io()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized In()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJL:Z

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g$e;->Io()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJK:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJJ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g$e;->cJL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
