.class public Lcom/layer/sdk/internal/lsdkk/lsdka/a;
.super Lcom/layer/sdk/internal/lsdkk/lsdka/c;

# interfaces
.implements Lcom/layer/b/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;,
        Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;,
        Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkk/lsdka/c",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;",
        "Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;",
        ">;",
        "Lcom/layer/b/a/j;"
    }
.end annotation


# static fields
.field private static final b:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private static final c:Lcom/layer/a/a/b$a;


# instance fields
.field private final d:Ljava/lang/Object;

.field private volatile e:Z

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/lang/Object;

.field private final h:Lcom/layer/a/b/a;

.field private final i:Lcom/layer/b/d/k;

.field private final j:Lcom/layer/b/a/a;

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdkj/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdkj/a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdkj/f;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Lcom/layer/a/a/b$a;

    invoke-direct {v0}, Lcom/layer/a/a/b$a;-><init>()V

    const v1, 0x927c0

    iput v1, v0, Lcom/layer/a/a/b$a;->bpD:I

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c:Lcom/layer/a/a/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/b/a/a;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d:Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g:Ljava/lang/Object;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/q$a;

    const-string v1, "AuthExecutor"

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkk/q$a;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h:Lcom/layer/a/b/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j:Lcom/layer/b/a/a;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j:Lcom/layer/b/a/a;

    iput-object p0, v0, Lcom/layer/b/a/a;->bub:Lcom/layer/b/a/j;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->f:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;
    .locals 1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->s()V

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

.method static synthetic b(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Lcom/layer/b/a/a$a;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->r()Lcom/layer/b/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Throwable;)Lcom/layer/sdk/exceptions/LayerException$Type;
    .locals 1

    instance-of v0, p0, Lcom/layer/b/d/m;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/layer/b/d/m;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/layer/sdk/exceptions/LayerException;->fromTransportException(Lcom/layer/b/d/m;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getType()Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;
    .locals 2

    instance-of v0, p0, Lcom/layer/b/d/m;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/layer/b/d/m;

    invoke-static {p0, p1}, Lcom/layer/sdk/exceptions/LayerException;->fromTransportException(Lcom/layer/b/d/m;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v0, v1, p1, p0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->t()V

    return-void
.end method

.method static synthetic d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic e(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Lcom/layer/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j:Lcom/layer/b/a/a;

    return-object v0
.end method

.method static synthetic f(Ljava/lang/Throwable;)Lcom/layer/sdk/exceptions/LayerException$Type;
    .locals 1

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Throwable;)Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic h(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->v()V

    return-void
.end method

.method static synthetic i(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private r()Lcom/layer/b/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j:Lcom/layer/b/a/a;

    invoke-virtual {v0}, Lcom/layer/b/a/a;->wQ()Lcom/layer/b/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->n:J

    return-void
.end method

.method private t()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->n:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    invoke-static {v2, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    return-void
.end method

.method private u()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o:J

    return-void
.end method

.method private v()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_DEAUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    invoke-static {v2, v0, v1}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    return-void
.end method

.method static synthetic wB()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 4

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthManager: Setting state to authenticated"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AuthManager is closed during authentication attempt. State is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->f:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v1, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;)V

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "TLS certificate cleared"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppressing nonce challenge: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$4;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring onAnswerChallenge due to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " . Identity Token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Transport session cleared"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    const/4 v1, 0x2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthManager: Authenticate"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Z)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$4;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring authentication request. Another authentication is in flight. Current state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->r()Lcom/layer/b/a/a$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Resuming session"

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    sget-object v3, Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;

    invoke-virtual {p0, v1, v0, v3}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Already connected. Trying to authenticate"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->i()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected c(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkj/a;

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;-><init>(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V

    new-instance v2, Lcom/layer/sdk/internal/lsdkj/a$a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j:Lcom/layer/b/a/a;

    invoke-direct {v2, v3, p1}, Lcom/layer/sdk/internal/lsdkj/a$a;-><init>(Lcom/layer/b/a/a;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkj/a;-><init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/a$a;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AuthManager: Sending challenge answer task to executor"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v1, v0}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->e:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    new-instance v2, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v3, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_TO_AUTHENTICATE:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v4, "Could not launch challenge answer task"

    invoke-direct {v2, v3, v4}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->a(Lcom/layer/sdk/exceptions/LayerException;Z)V

    goto :goto_0
.end method

.method public declared-synchronized d()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "deauthenticate"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Z)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$4;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring deauthentication, likely due to a pending request. Current state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Already de-authenticated due to no authenticated session"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Able to deauthenticate, setting state to deauthenticating"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->g:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "No connection for deauthenticate attempt. Requesting connection."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->h:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->i()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthManager: Connected"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$4;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not in a state to handle a connected callback. Current state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Received connected callback while awaiting an authentication attempt. Proceeding with authentication."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Received connected callback while awaiting a deauthentication attempt. Proceeding with deauthentication."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$4;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not in a state to handle a connection error. Current state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Setting state to deauthenticated due to connection error on connection test or challenge"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    monitor-exit v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Connection error during deauthentication request. Forcing deauthentication."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g()Ljava/util/UUID;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->r()Lcom/layer/b/a/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->r()Lcom/layer/b/a/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->f:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->r()Lcom/layer/b/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->n()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->b(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected l()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkj/b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c:Lcom/layer/a/a/b$a;

    invoke-virtual {v1}, Lcom/layer/a/a/b$a;->wo()Lcom/layer/a/a/b;

    move-result-object v1

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;

    invoke-direct {v2, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;-><init>(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V

    new-instance v3, Lcom/layer/sdk/internal/lsdkj/b$a;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i:Lcom/layer/b/d/k;

    invoke-direct {v3, v4}, Lcom/layer/sdk/internal/lsdkj/b$a;-><init>(Lcom/layer/b/d/k;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdkj/b;-><init>(Lcom/layer/a/a/a;Lcom/layer/a/c/c$a;Lcom/layer/sdk/internal/lsdkj/b$a;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AuthManager: Sending auth task to executor"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v1, v0}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Active authentication task, setting state to deauthenticated and reporting error."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    new-instance v2, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v3, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_TO_AUTHENTICATE:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v4, "Could not launch authentication task"

    invoke-direct {v2, v3, v4}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->a(Lcom/layer/sdk/exceptions/LayerException;Z)V

    goto :goto_0
.end method

.method protected m()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 5

    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Launching deauthentication attempt"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "No session exists, forcing deauthentication"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/layer/sdk/internal/lsdkj/f;

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;-><init>(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V

    new-instance v2, Lcom/layer/sdk/internal/lsdkj/f$a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i:Lcom/layer/b/d/k;

    invoke-direct {v2, v3}, Lcom/layer/sdk/internal/lsdkj/f$a;-><init>(Lcom/layer/b/d/k;)V

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkj/f;-><init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/f$a;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Executing deauthentication task"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->u()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v1, v0}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->i:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    move-result-object v0

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkj/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkj/b;->a(Z)V

    :cond_0
    return-void
.end method

.method protected o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AuthManager is closed during deauthentication attempt. State is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->j:Lcom/layer/b/a/a;

    invoke-virtual {v1}, Lcom/layer/b/a/a;->e()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->j()V

    goto :goto_0
.end method
