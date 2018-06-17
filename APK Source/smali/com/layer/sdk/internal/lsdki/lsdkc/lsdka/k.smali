.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/d/k;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-object v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

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

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a(Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Set;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0xcc

    const/4 v1, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PostIdentityUpdatesTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v7, "Skipping identity during update posting: user ID is null or empty"

    invoke-static {v0, v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    if-eqz v0, :cond_8

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->c:Lcom/layer/b/d/k;

    new-instance v7, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;

    invoke-direct {v7, p0, v4, v6, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;B)V

    new-instance v4, Lcom/layer/b/d/k$b;

    invoke-direct {v4, v0, v7}, Lcom/layer/b/d/k$b;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/k$c;)V

    invoke-virtual {v4, v8}, Lcom/layer/b/d/k$b;->do(I)Lcom/layer/b/d/k$b;

    move-result-object v4

    new-instance v7, Lcom/layer/b/d/k$10;

    invoke-direct {v7, v0, v2}, Lcom/layer/b/d/k$10;-><init>(Lcom/layer/b/d/k;Ljava/util/Set;)V

    invoke-virtual {v4, v7}, Lcom/layer/b/d/k$b;->a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;

    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->c:Lcom/layer/b/d/k;

    new-instance v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;

    invoke-direct {v2, p0, v5, v6, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;B)V

    new-instance v1, Lcom/layer/b/d/k$b;

    invoke-direct {v1, v0, v2}, Lcom/layer/b/d/k$b;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/k$c;)V

    invoke-virtual {v1, v8}, Lcom/layer/b/d/k$b;->do(I)Lcom/layer/b/d/k$b;

    move-result-object v1

    new-instance v2, Lcom/layer/b/d/k$11;

    invoke-direct {v2, v0, v3}, Lcom/layer/b/d/k$11;-><init>(Lcom/layer/b/d/k;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$b;->a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;

    :cond_7
    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :cond_8
    const/4 v0, 0x0

    return-object v0

    :cond_9
    move v0, v1

    goto :goto_1
.end method
