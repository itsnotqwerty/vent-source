.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final b:Lcom/layer/b/d/k;

.field private final c:Ljava/lang/Integer;

.field private final d:I

.field private final e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

.field private final f:Lcom/layer/sdk/internal/lsdki/a$e;

.field private final g:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdki/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;IILcom/layer/sdk/internal/lsdki/a$e;ZLjava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/a/b/a;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Lcom/layer/b/d/k;",
            "II",
            "Lcom/layer/sdk/internal/lsdki/a$e;",
            "Z",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/internal/lsdki/b;",
            ">;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->b:Lcom/layer/b/d/k;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->c:Ljava/lang/Integer;

    iput p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->d:I

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->f:Lcom/layer/sdk/internal/lsdki/a$e;

    iput-boolean p7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->g:Z

    iput-object p8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->b:Lcom/layer/b/d/k;

    iget-object v10, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v11, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->d:I

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->f:Lcom/layer/sdk/internal/lsdki/a$e;

    iget-boolean v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->g:Z

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;-><init>(IILcom/layer/sdk/internal/lsdki/a$e;ZLjava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;)V

    new-array v0, v7, [Lcom/layer/a/c/d;

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->b()Lcom/layer/a/c/a;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->a([Lcom/layer/a/c/d;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->a(I)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->a(Lcom/layer/a/c/d;)V

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0
.end method
