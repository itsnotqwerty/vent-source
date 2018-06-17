.class public Lcom/layer/sdk/internal/lsdkk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/n;
.implements Lcom/layer/sdk/internal/lsdkk/lsdka/b$a;
.implements Lcom/layer/sdk/services/LayerReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/d$a;
    }
.end annotation


# static fields
.field private static final d:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private static final e:Lcom/layer/a/a/b$a;


# instance fields
.field protected final a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdkj/e;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdkj/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private volatile g:Z

.field private h:Lcom/layer/sdk/internal/lsdkk/d$a;

.field private final i:Lcom/layer/a/b/a;

.field private final j:Lcom/layer/b/d/k;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Lcom/layer/a/a/b$a;

    invoke-direct {v0}, Lcom/layer/a/a/b$a;-><init>()V

    const v1, 0x927c0

    iput v1, v0, Lcom/layer/a/a/b$a;->bpD:I

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/d;->e:Lcom/layer/a/a/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkk/d$a;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    iput-object v6, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/q$a;

    const-string v1, "ConnectionExecutor"

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkk/q$a;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->i:Lcom/layer/a/b/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p2}, Lcom/layer/sdk/internal/lsdkk/d$a;->a()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/d;->j:Lcom/layer/b/d/k;

    invoke-virtual {p1, p0}, Lcom/layer/b/d/k;->a(Lcom/b/a/n;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->a()Z

    move-result v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-direct {v1, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;-><init>(Z)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a(Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkk/lsdka/c;

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<+",
            "Lcom/layer/a/c/d;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkk/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkk/d;)Lcom/layer/sdk/internal/lsdkk/d$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    return-object v0
.end method

.method static synthetic wA()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/m;Ljava/io/IOException;)V
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Ljava/net/SocketException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->e()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->h()Z

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->j:Lcom/layer/b/d/k;

    invoke-virtual {v0}, Lcom/layer/b/d/k;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/layer/sdk/services/LayerReceiver;->register(Lcom/layer/sdk/services/LayerReceiver$Listener;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Ignoring connect. No network connection available"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->NOT_CONNECTED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "No network connection available"

    invoke-direct {v1, v2, v3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->a(Lcom/layer/sdk/exceptions/LayerException;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->a()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->a(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->j()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->b()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-static {p0}, Lcom/layer/sdk/services/LayerReceiver;->unregister(Lcom/layer/sdk/services/LayerReceiver$Listener;)V

    goto :goto_0
.end method

.method public c(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->b(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->b()V

    goto :goto_0
.end method

.method public d(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->i()Z

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e(Lcom/layer/sdk/internal/lsdkk/lsdka/b;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->b(Z)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->j()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->i:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->i:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->b(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->h:Lcom/layer/sdk/internal/lsdkk/d$a;

    invoke-static {p0}, Lcom/layer/sdk/services/LayerReceiver;->unregister(Lcom/layer/sdk/services/LayerReceiver$Listener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected h()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Begin connection task launch attempt. Task in progress: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkj/e;

    sget-object v3, Lcom/layer/sdk/internal/lsdkk/d;->e:Lcom/layer/a/a/b$a;

    invoke-virtual {v3}, Lcom/layer/a/a/b$a;->wo()Lcom/layer/a/a/b;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/internal/lsdkk/d$1;

    invoke-direct {v4, p0}, Lcom/layer/sdk/internal/lsdkk/d$1;-><init>(Lcom/layer/sdk/internal/lsdkk/d;)V

    new-instance v5, Lcom/layer/sdk/internal/lsdkj/e$a;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkk/d;->j:Lcom/layer/b/d/k;

    invoke-direct {v5, v6}, Lcom/layer/sdk/internal/lsdkj/e$a;-><init>(Lcom/layer/b/d/k;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/layer/sdk/internal/lsdkj/e;-><init>(Lcom/layer/a/a/a;Lcom/layer/a/c/c$a;Lcom/layer/sdk/internal/lsdkj/e$a;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Attempting to connect"

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/d;->i:Lcom/layer/a/b/a;

    invoke-virtual {v2, v0}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Connect task is in flight, skipping this request"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected i()Z
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkj/g;

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/d$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkk/d$2;-><init>(Lcom/layer/sdk/internal/lsdkk/d;)V

    new-instance v2, Lcom/layer/sdk/internal/lsdkj/g$a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/d;->j:Lcom/layer/b/d/k;

    invoke-direct {v2, v3}, Lcom/layer/sdk/internal/lsdkj/g$a;-><init>(Lcom/layer/b/d/k;)V

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkj/g;-><init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/g$a;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Attempting to disconnect"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d;->i:Lcom/layer/a/b/a;

    invoke-virtual {v1, v0}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkj/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkj/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public onServiceEvent(Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {p1}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;->getType()Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d$3;->bqe:[I

    invoke-virtual {p1}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;->getType()Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/d;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->e()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
