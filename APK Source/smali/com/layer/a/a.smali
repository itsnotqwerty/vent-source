.class public abstract Lcom/layer/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final b:J

.field private final c:Lcom/layer/a/b/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/layer/a/c/d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/layer/a/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/b/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, -0x80000000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/layer/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lcom/layer/a/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/a/a;->b:J

    iput-object p1, p0, Lcom/layer/a/a;->c:Lcom/layer/a/b/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/layer/a/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/layer/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/a/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/a/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private b()I
    .locals 11

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/layer/a/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v2, v8

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :sswitch_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :sswitch_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :sswitch_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :sswitch_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :sswitch_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_2
    if-nez v7, :cond_3

    if-eqz v6, :cond_6

    :cond_3
    move v6, v9

    :goto_3
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_7

    :cond_4
    move v3, v9

    :goto_4
    if-nez v6, :cond_5

    if-nez v5, :cond_5

    if-eqz v4, :cond_8

    :cond_5
    move v0, v9

    :goto_5
    if-nez v3, :cond_9

    if-nez v6, :cond_0

    move v2, v9

    goto :goto_0

    :cond_6
    move v6, v2

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    const/4 v2, 0x2

    goto :goto_0

    :cond_a
    if-eqz v1, :cond_b

    const v2, 0x7fffffff

    goto :goto_0

    :cond_b
    move v2, v8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x7fffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/layer/a/a$a;)Lcom/layer/a/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/a/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected a(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/layer/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-gt v1, p1, :cond_1

    iget-object v0, p0, Lcom/layer/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/a/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/a$a;

    invoke-interface {v0, p0, v1, p1}, Lcom/layer/a/a$a;->a(Lcom/layer/a/a;II)V

    goto :goto_0
.end method

.method protected a(Lcom/layer/a/c/d;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/layer/a/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lcom/layer/a/a;->c:Lcom/layer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    return-void

    :sswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/layer/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cannot execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract a(Lcom/layer/a/c/d;II)V
.end method

.method public a(Lcom/layer/a/c/d;Lcom/layer/a/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/a/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/a$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/layer/a/a$a;->a(Lcom/layer/a/a;Lcom/layer/a/c/d;Lcom/layer/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/a/c/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :sswitch_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0, p0}, Lcom/layer/a/c/d;->a(Lcom/layer/a/c/d$a;)Lcom/layer/a/c/d;

    iget-object v2, p0, Lcom/layer/a/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to manage a task when in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7fffffff -> :sswitch_1
    .end sparse-switch
.end method

.method protected varargs a([Lcom/layer/a/c/d;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/a/a;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public abstract a()Z
.end method

.method public b(Lcom/layer/a/c/d;II)V
    .locals 6

    iget-object v0, p0, Lcom/layer/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iget-object v0, p0, Lcom/layer/a/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/a/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p3, v0, :cond_0

    iget-object v0, p0, Lcom/layer/a/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/layer/a/a;->a(Lcom/layer/a/c/d;II)V

    invoke-direct {p0}, Lcom/layer/a/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/layer/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/layer/a/a;->a(I)V

    goto :goto_0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/a/c/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/a/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/layer/a/a;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/a/a;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
