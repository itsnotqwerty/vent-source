.class public Lcom/layer/sdk/internal/lsdkd/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/f$a;,
        Lcom/layer/sdk/internal/lsdkd/f$c;,
        Lcom/layer/sdk/internal/lsdkd/f$b;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field private static final d:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field protected final c:Lcom/layer/sdk/internal/lsdkd/h;

.field private e:Lcom/layer/sdk/internal/lsdkk/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkk/j",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkd/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/locks/ReentrantLock;

.field private i:Lcom/layer/sdk/internal/lsdkd/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/layer/sdk/internal/lsdkd/f;->b:Z

    const-class v0, Lcom/layer/sdk/internal/lsdkd/f;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/f;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/j;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->e:Lcom/layer/sdk/internal/lsdkk/j;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->f:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct a ChangeableCache with `null` Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 2

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Changeable has null ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/k;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->i:Lcom/layer/sdk/internal/lsdkd/f$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->i:Lcom/layer/sdk/internal/lsdkd/f$c;

    invoke-interface {v0, p0, p1}, Lcom/layer/sdk/internal/lsdkd/f$c;->a(Lcom/layer/sdk/internal/lsdkd/f;Lcom/layer/sdk/internal/lsdkd/k;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/layer/sdk/internal/lsdkd/k;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->i:Lcom/layer/sdk/internal/lsdkd/f$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->i:Lcom/layer/sdk/internal/lsdkd/f$c;

    invoke-interface {v0, p0, p1}, Lcom/layer/sdk/internal/lsdkd/f$c;->b(Lcom/layer/sdk/internal/lsdkd/f;Lcom/layer/sdk/internal/lsdkd/k;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/layer/sdk/internal/lsdkd/k$a;)Z
    .locals 2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 2

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkd/m;->b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/m$a;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/m$a;->b()Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdke/b;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdke/b;->b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdke/b;->d(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    if-eqz p2, :cond_0

    instance-of v0, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    :cond_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v0, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_1

    :cond_5
    instance-of v0, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v2, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    :cond_6
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getParticipants()Ljava/util/Set;

    goto :goto_0

    :cond_7
    instance-of v0, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k;

    invoke-direct {v0, p1, p0}, Lcom/layer/sdk/internal/lsdkd/k;-><init>(Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/c$a;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Z)Lcom/layer/sdk/internal/lsdkd/lsdka/a;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    new-array v1, v3, [Lcom/layer/b/f/c/o;

    sget-object v2, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdke/b;->a([Lcom/layer/b/f/c/o;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "More than one announcement stream found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/a;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdke/b;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/util/Set;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdke/b;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Z[Lcom/layer/b/f/c/o;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lcom/layer/b/f/c/o;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/layer/sdk/internal/lsdke/b;->a([Lcom/layer/b/f/c/o;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Clearing ChangeableCache"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->f:Ljava/lang/ref/ReferenceQueue;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected a(Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/d;)V
    .locals 3

    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->k()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot insert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot insert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {p2, v0}, Lcom/layer/sdk/internal/lsdkd/d;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->g:Ljava/util/Map;

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/f$a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/f;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p2, v2}, Lcom/layer/sdk/internal/lsdkd/f$a;-><init>(Lcom/layer/sdk/internal/lsdkd/d;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/c;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->e:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/f$b;

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdkd/f$b;->a(Lcom/layer/sdk/internal/lsdkd/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/f$b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->e:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1, p0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/c$a;)V

    invoke-interface {p2}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Changeable has null ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p2}, Lcom/layer/sdk/internal/lsdkd/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete a new Changeable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p2}, Lcom/layer/sdk/internal/lsdkd/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    if-ne p3, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete a changeable already deleted for all participants: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p2}, Lcom/layer/sdk/internal/lsdkd/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    if-ne p3, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete a changeable already deleted for all my devices: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->b:[I

    invoke-virtual {p3}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown deletion mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {p2, v2}, Lcom/layer/sdk/internal/lsdkd/d;->a(Z)V

    :goto_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdke/b;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/k;->a()Lcom/layer/sdk/internal/lsdkd/k$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_b

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v2, v1, p2}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    invoke-interface {v2, v1}, Lcom/layer/sdk/internal/lsdke/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    return-void

    :pswitch_1
    invoke-interface {p2, v2}, Lcom/layer/sdk/internal/lsdkd/d;->b(Z)V

    goto :goto_1

    :pswitch_2
    :try_start_1
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v2, v1, p2}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    if-eqz p4, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->b:[I

    invoke-virtual {p3}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    new-instance v0, Lcom/layer/sdk/internal/lsdki/c;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdki/c;-><init>()V

    sget-object v3, Lcom/layer/sdk/internal/lsdki/c$a;->c:Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdki/c;->a(Lcom/layer/sdk/internal/lsdki/c$a;)V

    sget-object v3, Lcom/layer/sdk/internal/lsdki/c$b;->a:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdki/c;->a(Lcom/layer/sdk/internal/lsdki/c$b;)V

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdki/c;->b(Ljava/lang/Long;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/sdk/internal/lsdki/c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/sdk/internal/lsdki/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    invoke-interface {v2, v1}, Lcom/layer/sdk/internal/lsdke/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    throw v0

    :pswitch_4
    :try_start_2
    new-instance v0, Lcom/layer/b/d/i;

    invoke-direct {v0}, Lcom/layer/b/d/i;-><init>()V

    sget-object v3, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    iput-object v3, v0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    sget-object v3, Lcom/layer/b/f/c/f;->bDJ:Lcom/layer/b/f/c/f;

    iput-object v3, v0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    :cond_8
    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/i;->k:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/b/d/i;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/b/d/i;)V

    goto :goto_2

    :cond_9
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-interface {v2, v1, p2}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Message;)V

    if-eqz p4, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->b:[I

    invoke-virtual {p3}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    :pswitch_5
    new-instance v0, Lcom/layer/sdk/internal/lsdki/c;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdki/c;-><init>()V

    sget-object v3, Lcom/layer/sdk/internal/lsdki/c$a;->c:Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdki/c;->a(Lcom/layer/sdk/internal/lsdki/c$a;)V

    sget-object v3, Lcom/layer/sdk/internal/lsdki/c$b;->d:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdki/c;->a(Lcom/layer/sdk/internal/lsdki/c$b;)V

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdki/c;->b(Ljava/lang/Long;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/sdk/internal/lsdki/c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/sdk/internal/lsdki/c;)V

    goto/16 :goto_2

    :pswitch_6
    new-instance v0, Lcom/layer/b/d/i;

    invoke-direct {v0}, Lcom/layer/b/d/i;-><init>()V

    sget-object v3, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    iput-object v3, v0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    sget-object v3, Lcom/layer/b/f/c/f;->bDI:Lcom/layer/b/f/c/f;

    iput-object v3, v0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/d/i;->k:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/b/d/i;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/b/d/i;)V

    goto/16 :goto_2

    :cond_a
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown Changeable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v0, :cond_c

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-interface {v2, v1, p2}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Message;)V

    goto/16 :goto_2

    :cond_c
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown Changeable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/k;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;Z)V

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/k;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/c$a;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changeable has null ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/d;->b()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changeable is not new: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changeable already cached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    instance-of v1, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdke/b;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_5

    :goto_1
    return-void

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/k;->a()Lcom/layer/sdk/internal/lsdkd/k$a;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k$a;)Z

    move-result v6

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v4, v5, v2, v6, p3}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;ZZ)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v4, v5}, Lcom/layer/sdk/internal/lsdke/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0, v5, v3, v6}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4, v5}, Lcom/layer/sdk/internal/lsdke/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/c$a;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/k;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/f;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;)V

    throw v0
.end method

.method public varargs a(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/f;->b()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    return-object v0
.end method

.method public b(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/f;->c(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/f$a;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/f$a;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/f$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/f$a;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/f;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/f$a;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/f$a;->clear()V

    :cond_0
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/f$a;->clear()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/f$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/f$b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->e:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkk/j;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V
    .locals 8

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1, p0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/c$a;)V

    array-length v6, p2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v2, p2, v3

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Changeable has null ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot update a new Changeable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1, v2}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdke/b;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-nez v6, :cond_4

    :goto_2
    return-void

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/k;->a()Lcom/layer/sdk/internal/lsdkd/k$a;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k$a;)Z

    move-result v7

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/d;

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-object v2, v0

    invoke-interface {v3, v6, v2, v7}, Lcom/layer/sdk/internal/lsdke/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Merging conversations for update. Unexpected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-interface {v3, v6}, Lcom/layer/sdk/internal/lsdke/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    :cond_6
    :try_start_1
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-direct {p0, v6, v5, v7}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3, v6}, Lcom/layer/sdk/internal/lsdke/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2
.end method

.method public c(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/i;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Clearing listeners on ChangeableCache"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f;->e:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->a()V

    return-void
.end method
