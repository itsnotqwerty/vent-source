.class public Lcom/layer/sdk/internal/lsdki/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdki/lsdka/a$a;
.implements Lcom/layer/sdk/internal/lsdki/lsdka/b$a;
.implements Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/UUID;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/layer/b/d/k;

.field private final f:Lcom/layer/sdk/internal/lsdke/g;

.field private final g:Lcom/layer/sdk/internal/lsdkd/h;

.field private final h:Lcom/layer/sdk/internal/lsdka/b;

.field private final i:Lcom/layer/sdk/internal/lsdki/a$c;

.field private final j:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Error;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/layer/sdk/internal/lsdkf/c;

.field private final m:Lcom/layer/sdk/internal/lsdki/a$e;

.field private n:Lcom/layer/sdk/internal/lsdkd/k;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;
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

.field private final q:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdki/b;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdki/a$e;ILjava/util/UUID;Ljava/lang/String;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/h;Lcom/layer/sdk/internal/lsdka/b;Lcom/layer/sdk/internal/lsdki/a$c;Lcom/layer/sdk/internal/lsdkf/c;Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;ZLjava/util/HashSet;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/a$e;",
            "I",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lcom/layer/b/d/k;",
            "Lcom/layer/sdk/internal/lsdke/g;",
            "Lcom/layer/sdk/internal/lsdkd/h;",
            "Lcom/layer/sdk/internal/lsdka/b;",
            "Lcom/layer/sdk/internal/lsdki/a$c;",
            "Lcom/layer/sdk/internal/lsdkf/c;",
            "Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/UUID;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/layer/sdk/internal/lsdki/b;

    invoke-direct {v2}, Lcom/layer/sdk/internal/lsdki/b;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->m:Lcom/layer/sdk/internal/lsdki/a$e;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/a$a;->c:Ljava/util/UUID;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/a$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/a$a;->e:Lcom/layer/b/d/k;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/a$a;->f:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p7, p0, Lcom/layer/sdk/internal/lsdki/a$a;->g:Lcom/layer/sdk/internal/lsdkd/h;

    iput-object p8, p0, Lcom/layer/sdk/internal/lsdki/a$a;->h:Lcom/layer/sdk/internal/lsdka/b;

    iput-object p9, p0, Lcom/layer/sdk/internal/lsdki/a$a;->i:Lcom/layer/sdk/internal/lsdki/a$c;

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->j:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p10, p0, Lcom/layer/sdk/internal/lsdki/a$a;->l:Lcom/layer/sdk/internal/lsdkf/c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v0, p15

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->f:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->n:Lcom/layer/sdk/internal/lsdkd/k;

    return-void
.end method

.method public b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->f:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->f:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public d()Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->f:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public h()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/layer/b/d/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->e:Lcom/layer/b/d/k;

    return-object v0
.end method

.method public k()Lcom/layer/sdk/internal/lsdke/g;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->f:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public l()Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->g:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method

.method public m()Lcom/layer/sdk/internal/lsdkd/f;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->g:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/layer/sdk/internal/lsdkd/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->n:Lcom/layer/sdk/internal/lsdkd/k;

    return-object v0
.end method

.method public o()Lcom/layer/sdk/internal/lsdka/b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->h:Lcom/layer/sdk/internal/lsdka/b;

    return-object v0
.end method

.method public p()Lcom/layer/sdk/internal/lsdki/a$c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->i:Lcom/layer/sdk/internal/lsdki/a$c;

    return-object v0
.end method

.method public q()Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->j:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-object v0
.end method

.method public r()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->l:Lcom/layer/sdk/internal/lsdkf/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->l:Lcom/layer/sdk/internal/lsdkf/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/c;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkf/c;->a(Ljava/util/LinkedHashSet;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public s()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Error;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public t()Lcom/layer/sdk/internal/lsdki/a$e;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->m:Lcom/layer/sdk/internal/lsdki/a$e;

    return-object v0
.end method

.method public u()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public v()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public w()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->q:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public x()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdki/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public y()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->m:Lcom/layer/sdk/internal/lsdki/a$e;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/a$e;->b:Lcom/layer/sdk/internal/lsdki/a$e;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
