.class public Lcom/layer/sdk/internal/lsdkk/lsdka/b;
.super Lcom/layer/sdk/internal/lsdkk/lsdka/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;,
        Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkk/lsdka/c",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;",
        "Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring connect request due to state being: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Connect requested when state is DISCONNECTED. Setting state to CONNECTING and requesting connect"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    monitor-exit v1

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    monitor-exit v1

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;->b(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    monitor-exit v1

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    monitor-exit v1

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;->c(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public f()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    monitor-exit v1

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;->e(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
