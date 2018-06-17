.class public final Lio/intercom/a/b/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/b/a/e$a;
    }
.end annotation


# static fields
.field private static final cRl:Lio/intercom/a/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/c/a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final bgB:Z

.field public final bgC:Z

.field private final bgD:Z

.field private final bgE:Z

.field private final bgr:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lio/intercom/a/b/a/c/a",
            "<*>;",
            "Lio/intercom/a/b/a/e$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/intercom/a/b/a/c/a",
            "<*>;",
            "Lio/intercom/a/b/a/r",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bgv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/b/a/s;",
            ">;"
        }
    .end annotation
.end field

.field public final bgz:Z

.field private final cRm:Lio/intercom/a/b/a/b/c;

.field private final cRn:Lio/intercom/a/b/a/b/d;

.field private final cRo:Lio/intercom/a/b/a/d;

.field private final cRp:Lio/intercom/a/b/a/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lio/intercom/a/b/a/c/a;->N(Ljava/lang/Class;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    sput-object v0, Lio/intercom/a/b/a/e;->cRl:Lio/intercom/a/b/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v1, Lio/intercom/a/b/a/b/d;->cRD:Lio/intercom/a/b/a/b/d;

    sget-object v2, Lio/intercom/a/b/a/c;->cRf:Lio/intercom/a/b/a/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lio/intercom/a/b/a/q;->cRv:Lio/intercom/a/b/a/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/intercom/a/b/a/e;-><init>(Lio/intercom/a/b/a/b/d;Lio/intercom/a/b/a/d;Ljava/util/Map;Lio/intercom/a/b/a/q;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/b/a/b/d;Lio/intercom/a/b/a/d;Ljava/util/Map;Lio/intercom/a/b/a/q;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/d;",
            "Lio/intercom/a/b/a/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lio/intercom/a/b/a/f",
            "<*>;>;",
            "Lio/intercom/a/b/a/q;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/b/a/s;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/intercom/a/b/a/e;->bgr:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/b/a/e;->bgs:Ljava/util/Map;

    new-instance v0, Lio/intercom/a/b/a/b/c;

    invoke-direct {v0, p3}, Lio/intercom/a/b/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/intercom/a/b/a/e;->cRm:Lio/intercom/a/b/a/b/c;

    iput-object p1, p0, Lio/intercom/a/b/a/e;->cRn:Lio/intercom/a/b/a/b/d;

    iput-object p2, p0, Lio/intercom/a/b/a/e;->cRo:Lio/intercom/a/b/a/d;

    iput-boolean v1, p0, Lio/intercom/a/b/a/e;->bgz:Z

    iput-boolean v1, p0, Lio/intercom/a/b/a/e;->bgB:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/b/a/e;->bgC:Z

    iput-boolean v1, p0, Lio/intercom/a/b/a/e;->bgD:Z

    iput-boolean v1, p0, Lio/intercom/a/b/a/e;->bgE:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTr:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/h;->cRW:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSW:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSF:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSz:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSB:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSD:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/q;->cRv:Lio/intercom/a/b/a/q;

    if-ne p4, v0, :cond_0

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSM:Lio/intercom/a/b/a/r;

    :goto_0
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    invoke-static {v2, v3, v0}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    new-instance v4, Lio/intercom/a/b/a/e$1;

    invoke-direct {v4, p0}, Lio/intercom/a/b/a/e$1;-><init>(Lio/intercom/a/b/a/e;)V

    invoke-static {v2, v3, v4}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    new-instance v4, Lio/intercom/a/b/a/e$2;

    invoke-direct {v4, p0}, Lio/intercom/a/b/a/e$2;-><init>(Lio/intercom/a/b/a/e;)V

    invoke-static {v2, v3, v4}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lio/intercom/a/b/a/b/a/n;->cSQ:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lio/intercom/a/b/a/b/a/n;->cSH:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lio/intercom/a/b/a/b/a/n;->cSJ:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Lio/intercom/a/b/a/e$4;

    invoke-direct {v3, v0}, Lio/intercom/a/b/a/e$4;-><init>(Lio/intercom/a/b/a/r;)V

    invoke-virtual {v3}, Lio/intercom/a/b/a/e$4;->Kc()Lio/intercom/a/b/a/r;

    move-result-object v3

    invoke-static {v2, v3}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    new-instance v3, Lio/intercom/a/b/a/e$5;

    invoke-direct {v3, v0}, Lio/intercom/a/b/a/e$5;-><init>(Lio/intercom/a/b/a/r;)V

    invoke-virtual {v3}, Lio/intercom/a/b/a/e$5;->Kc()Lio/intercom/a/b/a/r;

    move-result-object v0

    invoke-static {v2, v0}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSL:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSS:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSY:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTa:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lio/intercom/a/b/a/b/a/n;->cSU:Lio/intercom/a/b/a/r;

    invoke-static {v0, v2}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lio/intercom/a/b/a/b/a/n;->cSV:Lio/intercom/a/b/a/r;

    invoke-static {v0, v2}, Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTc:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTe:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTi:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTk:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTp:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTg:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSw:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/c;->cRW:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTn:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/k;->cRW:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/j;->cRW:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTl:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/a;->cRW:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cSu:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/a/b/a/b/a/b;

    iget-object v2, p0, Lio/intercom/a/b/a/e;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-direct {v0, v2}, Lio/intercom/a/b/a/b/a/b;-><init>(Lio/intercom/a/b/a/b/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/a/b/a/b/a/g;

    iget-object v2, p0, Lio/intercom/a/b/a/e;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-direct {v0, v2}, Lio/intercom/a/b/a/b/a/g;-><init>(Lio/intercom/a/b/a/b/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/a/b/a/b/a/d;

    iget-object v2, p0, Lio/intercom/a/b/a/e;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-direct {v0, v2}, Lio/intercom/a/b/a/b/a/d;-><init>(Lio/intercom/a/b/a/b/c;)V

    iput-object v0, p0, Lio/intercom/a/b/a/e;->cRp:Lio/intercom/a/b/a/b/a/d;

    iget-object v0, p0, Lio/intercom/a/b/a/e;->cRp:Lio/intercom/a/b/a/b/a/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lio/intercom/a/b/a/b/a/n;->cTs:Lio/intercom/a/b/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/intercom/a/b/a/b/a/i;

    iget-object v2, p0, Lio/intercom/a/b/a/e;->cRm:Lio/intercom/a/b/a/b/c;

    iget-object v3, p0, Lio/intercom/a/b/a/e;->cRp:Lio/intercom/a/b/a/b/a/d;

    invoke-direct {v0, v2, p2, p1, v3}, Lio/intercom/a/b/a/b/a/i;-><init>(Lio/intercom/a/b/a/b/c;Lio/intercom/a/b/a/d;Lio/intercom/a/b/a/b/d;Lio/intercom/a/b/a/b/a/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/b/a/e;->bgv:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lio/intercom/a/b/a/e$3;

    invoke-direct {v0}, Lio/intercom/a/b/a/e$3;-><init>()V

    goto/16 :goto_0
.end method

.method private a(Lio/intercom/a/b/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/b/a/j;,
            Lio/intercom/a/b/a/p;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v2, p1, Lio/intercom/a/b/a/d/a;->bgE:Z

    iput-boolean v1, p1, Lio/intercom/a/b/a/d/a;->bgE:Z

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v2, p1, Lio/intercom/a/b/a/d/a;->bgE:Z

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    iput-boolean v2, p1, Lio/intercom/a/b/a/d/a;->bgE:Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p1, Lio/intercom/a/b/a/d/a;->bgE:Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static a(Ljava/lang/Object;Lio/intercom/a/b/a/d/a;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTF:Lio/intercom/a/b/a/d/b;

    if-eq v0, v1, :cond_0

    new-instance v0, Lio/intercom/a/b/a/j;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lio/intercom/a/b/a/d/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/j;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method static b(D)V
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final L(Ljava/lang/Class;)Lio/intercom/a/b/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/a/b/a/c/a;->N(Ljava/lang/Class;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/Reader;)Lio/intercom/a/b/a/d/a;
    .locals 2

    new-instance v0, Lio/intercom/a/b/a/d/a;

    invoke-direct {v0, p1}, Lio/intercom/a/b/a/d/a;-><init>(Ljava/io/Reader;)V

    iget-boolean v1, p0, Lio/intercom/a/b/a/e;->bgE:Z

    iput-boolean v1, v0, Lio/intercom/a/b/a/d/a;->bgE:Z

    return-object v0
.end method

.method public final a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/a/b/a/e;->bgs:Ljava/util/Map;

    if-nez p1, :cond_1

    sget-object v0, Lio/intercom/a/b/a/e;->cRl:Lio/intercom/a/b/a/c/a;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/r;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/a/b/a/e;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lio/intercom/a/b/a/e;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/e$a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lio/intercom/a/b/a/e$a;

    invoke-direct {v3}, Lio/intercom/a/b/a/e$a;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/b/a/e;->bgv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/s;

    invoke-interface {v0, p0, p1}, Lio/intercom/a/b/a/s;->a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v3, Lio/intercom/a/b/a/e$a;->cRs:Lio/intercom/a/b/a/r;

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/intercom/a/b/a/e;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    iput-object v0, v3, Lio/intercom/a/b/a/e$a;->cRs:Lio/intercom/a/b/a/r;

    iget-object v3, p0, Lio/intercom/a/b/a/e;->bgs:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/b/a/e;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move-object v2, v0

    goto :goto_2
.end method

.method public final a(Lio/intercom/a/b/a/s;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/s;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/e;->bgv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lio/intercom/a/b/a/e;->cRp:Lio/intercom/a/b/a/b/a/d;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/a/b/a/e;->bgv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/s;

    if-nez v1, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lio/intercom/a/b/a/s;->a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/b/a/p;,
            Lio/intercom/a/b/a/j;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/intercom/a/b/a/e;->a(Ljava/io/Reader;)Lio/intercom/a/b/a/d/a;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lio/intercom/a/b/a/e;->a(Ljava/lang/Object;Lio/intercom/a/b/a/d/a;)V

    invoke-static {p2}, Lio/intercom/a/b/a/b/i;->q(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/b/a/j;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lio/intercom/a/b/a/b/j;->b(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/a/b/a/e;->b(Ljava/io/Writer;)Lio/intercom/a/b/a/d/c;

    move-result-object v1

    invoke-static {p2}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    iget-boolean v2, v1, Lio/intercom/a/b/a/d/c;->bgE:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lio/intercom/a/b/a/d/c;->bgE:Z

    iget-boolean v3, v1, Lio/intercom/a/b/a/d/c;->bgC:Z

    iget-boolean v4, p0, Lio/intercom/a/b/a/e;->bgC:Z

    iput-boolean v4, v1, Lio/intercom/a/b/a/d/c;->bgC:Z

    iget-boolean v4, v1, Lio/intercom/a/b/a/d/c;->bgz:Z

    iget-boolean v5, p0, Lio/intercom/a/b/a/e;->bgz:Z

    iput-boolean v5, v1, Lio/intercom/a/b/a/d/c;->bgz:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v1, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v2, v1, Lio/intercom/a/b/a/d/c;->bgE:Z

    iput-boolean v3, v1, Lio/intercom/a/b/a/d/c;->bgC:Z

    iput-boolean v4, v1, Lio/intercom/a/b/a/d/c;->bgz:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Lio/intercom/a/b/a/j;

    invoke-direct {v5, v0}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iput-boolean v2, v1, Lio/intercom/a/b/a/d/c;->bgE:Z

    iput-boolean v3, v1, Lio/intercom/a/b/a/d/c;->bgC:Z

    iput-boolean v4, v1, Lio/intercom/a/b/a/d/c;->bgz:Z

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/j;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/io/Writer;)Lio/intercom/a/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/a/b/a/e;->bgB:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lio/intercom/a/b/a/d/c;

    invoke-direct {v0, p1}, Lio/intercom/a/b/a/d/c;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lio/intercom/a/b/a/e;->bgD:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lio/intercom/a/b/a/d/c;->bkz:Ljava/lang/String;

    const-string v1, ":"

    iput-object v1, v0, Lio/intercom/a/b/a/d/c;->separator:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lio/intercom/a/b/a/e;->bgz:Z

    iput-boolean v1, v0, Lio/intercom/a/b/a/d/c;->bgz:Z

    return-object v0

    :cond_2
    iput-object v1, v0, Lio/intercom/a/b/a/d/c;->bkz:Ljava/lang/String;

    const-string v1, ": "

    iput-object v1, v0, Lio/intercom/a/b/a/d/c;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/b/a/p;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p2}, Lio/intercom/a/b/a/b/i;->q(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/intercom/a/b/a/e;->a(Ljava/io/Reader;)Lio/intercom/a/b/a/d/a;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lio/intercom/a/b/a/e;->a(Ljava/lang/Object;Lio/intercom/a/b/a/d/a;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/intercom/a/b/a/e;->bgz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/b/a/e;->bgv:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/b/a/e;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
