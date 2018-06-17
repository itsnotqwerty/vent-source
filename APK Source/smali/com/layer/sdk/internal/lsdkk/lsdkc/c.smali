.class public Lcom/layer/sdk/internal/lsdkk/lsdkc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;,
        Lcom/layer/sdk/internal/lsdkk/lsdkc/c$b;,
        Lcom/layer/sdk/internal/lsdkk/lsdkc/c$d;,
        Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/UUID;

.field private final d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

.field private final i:Lcom/layer/sdk/internal/lsdkk/lsdkb/b;

.field private final j:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

.field private k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/String;Ljava/util/UUID;JJJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p4, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->g:J

    iput-wide p6, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->f:J

    iput-wide p8, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->e:J

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkk/lsdka/c;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-direct {v0, p1, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$d;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$b;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-direct {v0, p1, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$b;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->i:Lcom/layer/sdk/internal/lsdkk/lsdkb/b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-direct {v0, p1, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->j:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->j:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a()V

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    sget-object v2, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->STARTED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-interface {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->i:Lcom/layer/sdk/internal/lsdkk/lsdkb/b;

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkk/lsdkb/b;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    return-void
.end method

.method public a(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    sget-object v2, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->PAUSED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-interface {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->i:Lcom/layer/sdk/internal/lsdkk/lsdkb/b;

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkk/lsdkb/b;->a(J)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    sget-object v2, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->FINISHED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-interface {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->i:Lcom/layer/sdk/internal/lsdkk/lsdkb/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/b;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->j:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;)V

    goto :goto_0
.end method

.method public d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public d(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a(J)V

    goto :goto_0
.end method

.method public e(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->j:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a(J)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->j:Lcom/layer/sdk/internal/lsdkk/lsdkb/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;->a()V

    goto :goto_0
.end method

.method public g(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    sget-object v2, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->STARTED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-interface {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    goto :goto_0
.end method

.method public h(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->k:Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c:Ljava/util/UUID;

    sget-object v2, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->PAUSED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-interface {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    goto :goto_0
.end method
