.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;
.super Lcom/layer/a/a;


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final c:Lcom/layer/b/d/k;

.field private final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/UUID;",
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

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/a/b/a;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Lcom/layer/b/d/k;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->c:Lcom/layer/b/d/k;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->d:Ljava/lang/Iterable;

    return-void
.end method

.method protected static a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/sdk/internal/lsdke/lsdka/a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Lcom/layer/sdk/internal/lsdke/lsdka/a;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->f:Ljava/lang/Integer;

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->b:Ljava/util/UUID;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(IILjava/util/Set;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->f:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->b:Ljava/util/UUID;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->f:Ljava/lang/Integer;

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(IILjava/util/Set;Ljava/util/List;)V

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdke/lsdka/a;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(IILjava/util/Set;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static a(IILjava/util/Set;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<[I>;)V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-le p0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v0, v4, [I

    aput p0, v0, v2

    aput p0, v0, v3

    :goto_0
    aget v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    goto :goto_0

    :cond_2
    aget v1, v0, v2

    if-ge v1, p1, :cond_0

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    :goto_1
    aget v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget v1, v0, v3

    if-ge v1, p1, :cond_3

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    goto :goto_1

    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [I

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v2

    aput v2, v1, v3

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetMutationsTaskMaster: execute"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->b:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->d:Ljava/lang/Iterable;

    invoke-interface {v0, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/layer/sdk/internal/lsdke/lsdka/a;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-static {v0, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/sdk/internal/lsdke/lsdka/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [I

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->c:Lcom/layer/b/d/k;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v3, v6, Lcom/layer/sdk/internal/lsdke/lsdka/a;->b:Ljava/util/UUID;

    aget v4, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v5, v8

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-array v1, v8, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a([Lcom/layer/a/c/d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(I)V

    move v0, v7

    :goto_1
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v2

    if-ne v2, v8, :cond_4

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->a(Lcom/layer/a/c/d;)V

    goto :goto_2

    :cond_5
    move v0, v8

    goto :goto_1
.end method
