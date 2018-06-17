.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/layer/b/d/h;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final k:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/layer/b/d/k;

.field private final e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lcom/layer/b/d/k;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->d:Lcom/layer/b/d/k;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->yk()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    sget-object v7, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    if-ne v3, v7, :cond_0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/layer/b/d/h;->aK(Z)Lcom/layer/b/f/c/m;

    :goto_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/layer/b/f/c/m;->d:I

    iget-object v0, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$2;->b:[I

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v7}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown mHistoricSyncPolicy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v2}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown mHistoricSyncPolicy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->f:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v2}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/layer/b/d/h;->yu()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/layer/b/f/c/h;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v3, v3, Lcom/layer/b/f/c/h;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/layer/b/f/c/h;->j()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v3, v3, Lcom/layer/b/f/c/h;->bpD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/layer/b/f/c/h;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v3, v3, Lcom/layer/b/f/c/h;->a:I

    if-nez v3, :cond_5

    iget v3, v0, Lcom/layer/b/f/c/m;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_5
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/layer/b/d/h;->yu()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/layer/b/f/c/h;->j()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v3, v3, Lcom/layer/b/f/c/h;->bpD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_6
    move-object v3, v4

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/layer/b/f/c/h;->b()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v3, v3, Lcom/layer/b/f/c/h;->a:I

    if-nez v3, :cond_8

    iget v3, v0, Lcom/layer/b/f/c/m;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_8
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :pswitch_2
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v0, v5, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Ljava/lang/Iterable;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Ljava/util/List;

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    return-object v0
.end method

.method private a(Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x6

    const/4 v7, 0x0

    const/4 v10, 0x1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Bootstrapping streams"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->d:Lcom/layer/b/d/k;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a:Ljava/util/UUID;

    new-instance v3, Lcom/layer/b/d/k$f;

    invoke-direct {v3, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v3

    new-instance v4, Lcom/layer/b/d/k$18;

    invoke-direct {v4, v0, v1}, Lcom/layer/b/d/k$18;-><init>(Lcom/layer/b/d/k;Ljava/util/UUID;)V

    invoke-virtual {v3, v4}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bootstrap streams count: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-direct {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Individual stream sync: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    if-nez v4, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null stream Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception in fetchStreams"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v7, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/a/c/e;)V

    invoke-virtual {p2, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v0, v7

    goto :goto_0

    :cond_6
    :try_start_2
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;Ljava/util/UUID;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->d:Lcom/layer/b/d/k;

    new-instance v5, Lcom/layer/b/d/k$b;

    invoke-direct {v5, v1, v0}, Lcom/layer/b/d/k$b;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/k$c;)V

    const/16 v0, 0xc8

    invoke-virtual {v5, v0}, Lcom/layer/b/d/k$b;->do(I)Lcom/layer/b/d/k$b;

    move-result-object v0

    new-instance v5, Lcom/layer/b/d/k$9;

    invoke-direct {v5, v1, v4}, Lcom/layer/b/d/k$9;-><init>(Lcom/layer/b/d/k;Ljava/util/UUID;)V

    invoke-virtual {v0, v5}, Lcom/layer/b/d/k$b;->a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while getting streams: getStreamsAsync: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/a/c/e;)V

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_9
    move-object v0, v7

    goto/16 :goto_0
.end method

.method private a(Lcom/layer/b/d/h;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/b/d/h;Z)V

    return-void
.end method

.method private a(Lcom/layer/b/d/h;Lcom/layer/b/d/h;)V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Ljava/util/List;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->b(Lcom/layer/b/d/h;Lcom/layer/b/d/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/b/d/h;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->yu()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/layer/b/f/c/h;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, v1, Lcom/layer/b/f/c/h;->bpD:I

    iget v3, v0, Lcom/layer/b/f/c/m;->d:I

    if-ltz v1, :cond_3

    if-le v1, v3, :cond_2

    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found remote stream with wrong last-message-seq. Stream : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layer/b/f/c/h;->e(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private b(Lcom/layer/b/d/h;Lcom/layer/b/d/h;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    iput-object v2, p2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/layer/b/d/h;->ys()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/layer/b/d/h;->zd()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/layer/b/d/h;->v([B)Lcom/layer/b/f/c/m;

    :cond_0
    iget v2, p2, Lcom/layer/b/f/c/m;->d:I

    iget v4, p1, Lcom/layer/b/f/c/m;->d:I

    if-le v2, v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/d/h;->K()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/layer/b/d/h;->K()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/d/h;->K()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p2, Lcom/layer/b/f/c/m;->bEO:I

    iget v4, p1, Lcom/layer/b/f/c/m;->bEO:I

    if-eq v2, v4, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/d/h;->yw()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/layer/b/d/h;->yw()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p2, Lcom/layer/b/f/c/m;->bEN:I

    iget v4, p1, Lcom/layer/b/f/c/m;->bEN:I

    if-eq v2, v4, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/d/h;->za()[B

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/layer/b/d/h;->za()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/b/d/h;->za()[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :cond_7
    iget-object v2, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_8
    iget-object v0, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v2, v1

    goto :goto_2

    :cond_a
    iget-boolean v0, p2, Lcom/layer/b/f/c/m;->h:Z

    iget-boolean v4, p1, Lcom/layer/b/f/c/m;->h:Z

    if-eq v0, v4, :cond_b

    move v2, v1

    :cond_b
    invoke-virtual {p2}, Lcom/layer/b/d/h;->yu()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :goto_3
    invoke-virtual {p1}, Lcom/layer/b/d/h;->yu()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v3, p1, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :cond_c
    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v0, v3}, Lcom/layer/b/f/c/h;->b(Lcom/layer/b/f/c/h;)I

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v2, v1

    :cond_e
    if-nez v2, :cond_10

    :goto_4
    return-void

    :cond_f
    move-object v0, v3

    goto :goto_3

    :cond_10
    iget-boolean v0, p2, Lcom/layer/b/f/c/m;->h:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v0, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v0, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Lcom/layer/b/d/h;

    goto :goto_4

    :cond_12
    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v10, 0x6

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetStreamsTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GetStreamsTask: Fetching streams"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GetStreamsTask: Fetched streams"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->n()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception in GetStreamsTask"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/a/c/e;)V

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_4
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Deleting stream: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/b/d/h;)V

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/b/d/h;

    if-eqz v2, :cond_b

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Deleting stream: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/b/d/h;)V

    :cond_b
    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    move-object v0, v4

    goto/16 :goto_1

    :cond_e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->yk()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    sget-object v5, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    if-ne v2, v5, :cond_f

    iget-boolean v2, v0, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v2, :cond_f

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remote stream of type channel is distinct: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel cannot be distinct: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->r()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-nez v7, :cond_13

    :cond_12
    invoke-direct {p0, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/b/d/h;Lcom/layer/b/d/h;)V

    goto :goto_5

    :cond_13
    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-nez v8, :cond_14

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    :cond_14
    iget-object v8, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_15

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    invoke-direct {p0, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->b(Lcom/layer/b/d/h;Lcom/layer/b/d/h;)V

    goto :goto_5

    :cond_16
    invoke-direct {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Ljava/util/List;)I

    move-result v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/b;->a()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->k()I

    move-result v2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/b;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdki/b;->a(I)V

    :cond_17
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->k:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completing getStreamsTask. Streams count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_18
    move-object v0, v3

    goto/16 :goto_1
.end method
