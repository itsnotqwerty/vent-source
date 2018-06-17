.class public Lcom/layer/sdk/internal/lsdkk/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tkey:",
        "Ljava/lang/Object;",
        "Tvalue::",
        "Ljava/lang/Comparable",
        "<TTvalue;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TTkey;",
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkk/i$a",
            "<TTvalue;>;>;>;"
        }
    .end annotation
.end field

.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-wide p1, p0, Lcom/layer/sdk/internal/lsdkk/i;->b:J

    return-void
.end method

.method private a()V
    .locals 6

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/i$a;

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkk/i;->b:J

    invoke-static {v0, v1, v4, v5}, Lcom/layer/sdk/internal/lsdkk/i$a;->a(Lcom/layer/sdk/internal/lsdkk/i$a;Ljava/util/Date;J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTkey;TTvalue;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/i;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    new-instance v1, Lcom/layer/sdk/internal/lsdkk/i$a;

    invoke-direct {v1, p2, v2}, Lcom/layer/sdk/internal/lsdkk/i$a;-><init>(Ljava/lang/Comparable;B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
