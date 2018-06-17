.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;
.super Lcom/layer/a/a;


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final e:Lcom/layer/b/d/k;

.field private final f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdki/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lcom/layer/a/b/a;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Lcom/layer/b/d/k;",
            "Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdki/b;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/UUID;",
            ">;>;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->b:Ljava/util/UUID;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->e:Lcom/layer/b/d/k;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iput-object p7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p10, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 3

    sparse-switch p3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->a(Lcom/layer/a/c/d;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->k:Ljava/util/List;

    if-nez v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->k:Ljava/util/List;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/layer/a/c/d;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/e;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Lcom/layer/a/c/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x7fffffff -> :sswitch_2
    .end sparse-switch
.end method

.method public a()Z
    .locals 11

    const/4 v10, 0x1

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->e:Lcom/layer/b/d/k;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-direct/range {v0 .. v9}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    new-array v1, v10, [Lcom/layer/a/c/d;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->b()Lcom/layer/a/c/a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->a([Lcom/layer/a/c/d;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->a(Lcom/layer/a/c/d;)V

    return v10
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->k:Ljava/util/List;

    return-object v0
.end method
