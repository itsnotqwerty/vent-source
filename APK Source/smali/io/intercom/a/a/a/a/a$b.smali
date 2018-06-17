.class public final Lio/intercom/a/a/a/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic cGK:Lio/intercom/a/a/a/a/a;

.field final cGL:Lio/intercom/a/a/a/a/a$c;

.field private cGM:Z

.field final written:[Z


# direct methods
.method private constructor <init>(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$c;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/a/a/a/a/a$b;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/a/a/a/a/a$b;->cGL:Lio/intercom/a/a/a/a/a$c;

    iget-boolean v0, p2, Lio/intercom/a/a/a/a/a$c;->readable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/intercom/a/a/a/a/a$b;->written:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lio/intercom/a/a/a/a/a;->f(Lio/intercom/a/a/a/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$c;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/a/a/a/a/a$b;-><init>(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$c;)V

    return-void
.end method


# virtual methods
.method public final HF()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/a/a/a/a/a$b;->cGK:Lio/intercom/a/a/a/a/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/a/a$b;->cGL:Lio/intercom/a/a/a/a/a$c;

    iget-object v0, v0, Lio/intercom/a/a/a/a/a$c;->cGN:Lio/intercom/a/a/a/a/a$b;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/a/a/a/a/a$b;->cGL:Lio/intercom/a/a/a/a/a$c;

    iget-boolean v0, v0, Lio/intercom/a/a/a/a/a$c;->readable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/a/a$b;->written:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/a/a$b;->cGL:Lio/intercom/a/a/a/a/a$c;

    iget-object v0, v0, Lio/intercom/a/a/a/a/a$c;->dirtyFiles:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v2, p0, Lio/intercom/a/a/a/a/a$b;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v2}, Lio/intercom/a/a/a/a/a;->g(Lio/intercom/a/a/a/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/intercom/a/a/a/a/a$b;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v2}, Lio/intercom/a/a/a/a/a;->g(Lio/intercom/a/a/a/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/a/a$b;->cGK:Lio/intercom/a/a/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lio/intercom/a/a/a/a/a;->a(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$b;Z)V

    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 1

    iget-boolean v0, p0, Lio/intercom/a/a/a/a/a$b;->cGM:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lio/intercom/a/a/a/a/a$b;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/a/a/a/a/a$b;->cGK:Lio/intercom/a/a/a/a/a;

    invoke-static {v0, p0, v1}, Lio/intercom/a/a/a/a/a;->a(Lio/intercom/a/a/a/a/a;Lio/intercom/a/a/a/a/a$b;Z)V

    iput-boolean v1, p0, Lio/intercom/a/a/a/a/a$b;->cGM:Z

    return-void
.end method
