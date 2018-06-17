.class public final Lcom/google/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/f$a;
    }
.end annotation


# static fields
.field private static final bgq:Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final bgA:Z

.field final bgB:Z

.field final bgC:Z

.field final bgD:Z

.field final bgE:Z

.field final bgF:Z

.field final bgG:Ljava/lang/String;

.field final bgH:I

.field final bgI:I

.field final bgJ:Lcom/google/a/t;

.field final bgK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;"
        }
    .end annotation
.end field

.field final bgL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;"
        }
    .end annotation
.end field

.field private final bgr:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/c/a",
            "<*>;",
            "Lcom/google/a/f$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/c/a",
            "<*>;",
            "Lcom/google/a/u",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bgt:Lcom/google/a/b/c;

.field private final bgu:Lcom/google/a/b/a/d;

.field final bgv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;"
        }
    .end annotation
.end field

.field final bgw:Lcom/google/a/b/d;

.field final bgx:Lcom/google/a/e;

.field final bgy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/h",
            "<*>;>;"
        }
    .end annotation
.end field

.field final bgz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/c/a;->t(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/google/a/f;->bgq:Lcom/google/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    sget-object v1, Lcom/google/a/b/d;->bhi:Lcom/google/a/b/d;

    sget-object v2, Lcom/google/a/d;->bgj:Lcom/google/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/google/a/t;->bgW:Lcom/google/a/t;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/google/a/f;-><init>(Lcom/google/a/b/d;Lcom/google/a/e;Ljava/util/Map;ZZZZZZZLcom/google/a/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/google/a/b/d;Lcom/google/a/e;Ljava/util/Map;ZZZZZZZLcom/google/a/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/d;",
            "Lcom/google/a/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/h",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/a/t;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/a/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/a/f;->bgr:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/a/f;->bgs:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/a/f;->bgw:Lcom/google/a/b/d;

    iput-object p2, p0, Lcom/google/a/f;->bgx:Lcom/google/a/e;

    iput-object p3, p0, Lcom/google/a/f;->bgy:Ljava/util/Map;

    new-instance v1, Lcom/google/a/b/c;

    invoke-direct {v1, p3}, Lcom/google/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/a/f;->bgt:Lcom/google/a/b/c;

    iput-boolean p4, p0, Lcom/google/a/f;->bgz:Z

    iput-boolean p5, p0, Lcom/google/a/f;->bgA:Z

    iput-boolean p6, p0, Lcom/google/a/f;->bgB:Z

    iput-boolean p7, p0, Lcom/google/a/f;->bgC:Z

    iput-boolean p8, p0, Lcom/google/a/f;->bgD:Z

    iput-boolean p9, p0, Lcom/google/a/f;->bgE:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/a/f;->bgF:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/a/f;->bgJ:Lcom/google/a/t;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/a/f;->bgG:Ljava/lang/String;

    move/from16 v0, p13

    iput v0, p0, Lcom/google/a/f;->bgH:I

    move/from16 v0, p14

    iput v0, p0, Lcom/google/a/f;->bgI:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/a/f;->bgK:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/a/f;->bgL:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/a/b/a/n;->bjI:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/h;->bhS:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p17

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjn:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->biW:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->biQ:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->biS:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->biU:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/t;->bgW:Lcom/google/a/t;

    move-object/from16 v0, p11

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/a/b/a/n;->bjd:Lcom/google/a/u;

    :goto_0
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v2, v4, v1}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    if-eqz p10, :cond_1

    sget-object v2, Lcom/google/a/b/a/n;->bjf:Lcom/google/a/u;

    :goto_1
    invoke-static {v4, v5, v2}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    if-eqz p10, :cond_2

    sget-object v2, Lcom/google/a/b/a/n;->bje:Lcom/google/a/u;

    :goto_2
    invoke-static {v4, v5, v2}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/n;->bjh:Lcom/google/a/v;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/n;->biY:Lcom/google/a/v;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/a/b/a/n;->bja:Lcom/google/a/v;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Lcom/google/a/f$4;

    invoke-direct {v4, v1}, Lcom/google/a/f$4;-><init>(Lcom/google/a/u;)V

    invoke-virtual {v4}, Lcom/google/a/f$4;->vi()Lcom/google/a/u;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    new-instance v4, Lcom/google/a/f$5;

    invoke-direct {v4, v1}, Lcom/google/a/f$5;-><init>(Lcom/google/a/u;)V

    invoke-virtual {v4}, Lcom/google/a/f$5;->vi()Lcom/google/a/u;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjc:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjj:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjp:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjr:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/a/b/a/n;->bjl:Lcom/google/a/u;

    invoke-static {v1, v2}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/a/b/a/n;->bjm:Lcom/google/a/u;

    invoke-static {v1, v2}, Lcom/google/a/b/a/n;->a(Ljava/lang/Class;Lcom/google/a/u;)Lcom/google/a/v;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjt:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjv:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjz:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjB:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjG:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjx:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->biN:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/c;->bhS:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjE:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/k;->bhS:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/j;->bhS:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjC:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/a;->bhS:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->biL:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/a/b/a/b;

    iget-object v2, p0, Lcom/google/a/f;->bgt:Lcom/google/a/b/c;

    invoke-direct {v1, v2}, Lcom/google/a/b/a/b;-><init>(Lcom/google/a/b/c;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/a/b/a/g;

    iget-object v2, p0, Lcom/google/a/f;->bgt:Lcom/google/a/b/c;

    invoke-direct {v1, v2, p5}, Lcom/google/a/b/a/g;-><init>(Lcom/google/a/b/c;Z)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/a/b/a/d;

    iget-object v2, p0, Lcom/google/a/f;->bgt:Lcom/google/a/b/c;

    invoke-direct {v1, v2}, Lcom/google/a/b/a/d;-><init>(Lcom/google/a/b/c;)V

    iput-object v1, p0, Lcom/google/a/f;->bgu:Lcom/google/a/b/a/d;

    iget-object v1, p0, Lcom/google/a/f;->bgu:Lcom/google/a/b/a/d;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/a/b/a/n;->bjJ:Lcom/google/a/v;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/a/b/a/i;

    iget-object v2, p0, Lcom/google/a/f;->bgt:Lcom/google/a/b/c;

    iget-object v4, p0, Lcom/google/a/f;->bgu:Lcom/google/a/b/a/d;

    invoke-direct {v1, v2, p2, p1, v4}, Lcom/google/a/b/a/i;-><init>(Lcom/google/a/b/c;Lcom/google/a/e;Lcom/google/a/b/d;Lcom/google/a/b/a/d;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/f;->bgv:Ljava/util/List;

    return-void

    :cond_0
    new-instance v1, Lcom/google/a/f$3;

    invoke-direct {v1}, Lcom/google/a/f$3;-><init>()V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/google/a/f$1;

    invoke-direct {v2, p0}, Lcom/google/a/f$1;-><init>(Lcom/google/a/f;)V

    goto/16 :goto_1

    :cond_2
    new-instance v2, Lcom/google/a/f$2;

    invoke-direct {v2, p0}, Lcom/google/a/f$2;-><init>(Lcom/google/a/f;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/io/Writer;)Lcom/google/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/a/f;->bgB:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/google/a/d/c;

    invoke-direct {v0, p1}, Lcom/google/a/d/c;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/google/a/f;->bgD:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/a/d/c;->bkz:Ljava/lang/String;

    const-string v1, ":"

    iput-object v1, v0, Lcom/google/a/d/c;->separator:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/a/f;->bgz:Z

    iput-boolean v1, v0, Lcom/google/a/d/c;->bgz:Z

    return-object v0

    :cond_2
    iput-object v1, v0, Lcom/google/a/d/c;->bkz:Ljava/lang/String;

    const-string v1, ": "

    iput-object v1, v0, Lcom/google/a/d/c;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/l;,
            Lcom/google/a/s;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v2, p1, Lcom/google/a/d/a;->bgE:Z

    iput-boolean v1, p1, Lcom/google/a/d/a;->bgE:Z

    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v2, p1, Lcom/google/a/d/a;->bgE:Z

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    iput-boolean v2, p1, Lcom/google/a/d/a;->bgE:Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p1, Lcom/google/a/d/a;->bgE:Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
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
.method public final a(Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/a/f;->bgs:Ljava/util/Map;

    if-nez p1, :cond_1

    sget-object v0, Lcom/google/a/f;->bgq:Lcom/google/a/c/a;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/u;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/a/f;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/a/f;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/f$a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/google/a/f$a;

    invoke-direct {v3}, Lcom/google/a/f$a;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/f;->bgv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/v;

    invoke-interface {v0, p0, p1}, Lcom/google/a/v;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v3, Lcom/google/a/f$a;->bgO:Lcom/google/a/u;

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

    iget-object v1, p0, Lcom/google/a/f;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    iput-object v0, v3, Lcom/google/a/f$a;->bgO:Lcom/google/a/u;

    iget-object v3, p0, Lcom/google/a/f;->bgs:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/f;->bgr:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON (2.8.5) cannot handle "

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

.method public final a(Lcom/google/a/v;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/v;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/f;->bgv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/a/f;->bgu:Lcom/google/a/b/a/d;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/a/f;->bgv:Ljava/util/List;

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

    check-cast v0, Lcom/google/a/v;

    if-nez v1, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/google/a/v;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;

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

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/l;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    iget-boolean v1, p3, Lcom/google/a/d/c;->bgE:Z

    const/4 v2, 0x1

    iput-boolean v2, p3, Lcom/google/a/d/c;->bgE:Z

    iget-boolean v2, p3, Lcom/google/a/d/c;->bgC:Z

    iget-boolean v3, p0, Lcom/google/a/f;->bgC:Z

    iput-boolean v3, p3, Lcom/google/a/d/c;->bgC:Z

    iget-boolean v3, p3, Lcom/google/a/d/c;->bgz:Z

    iget-boolean v4, p0, Lcom/google/a/f;->bgz:Z

    iput-boolean v4, p3, Lcom/google/a/d/c;->bgz:Z

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p3, Lcom/google/a/d/c;->bgE:Z

    iput-boolean v2, p3, Lcom/google/a/d/c;->bgC:Z

    iput-boolean v3, p3, Lcom/google/a/d/c;->bgz:Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/google/a/l;

    invoke-direct {v4, v0}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p3, Lcom/google/a/d/c;->bgE:Z

    iput-boolean v2, p3, Lcom/google/a/d/c;->bgC:Z

    iput-boolean v3, p3, Lcom/google/a/d/c;->bgz:Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AssertionError (GSON 2.8.5): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final ab(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    sget-object v3, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/google/a/f;->a(Ljava/io/Writer;)Lcom/google/a/d/c;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/a/d/c;->bgE:Z

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/google/a/d/c;->bgE:Z

    iget-boolean v6, v4, Lcom/google/a/d/c;->bgC:Z

    iget-boolean v1, p0, Lcom/google/a/f;->bgC:Z

    iput-boolean v1, v4, Lcom/google/a/d/c;->bgC:Z

    iget-boolean v7, v4, Lcom/google/a/d/c;->bgz:Z

    iget-boolean v1, p0, Lcom/google/a/f;->bgz:Z

    iput-boolean v1, v4, Lcom/google/a/d/c;->bgz:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3, v4}, Lcom/google/a/b/l;->a(Lcom/google/a/k;Lcom/google/a/d/c;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v5, v4, Lcom/google/a/d/c;->bgE:Z

    iput-boolean v6, v4, Lcom/google/a/d/c;->bgC:Z

    iput-boolean v7, v4, Lcom/google/a/d/c;->bgz:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/google/a/l;

    invoke-direct {v2, v1}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_4
    iput-boolean v5, v4, Lcom/google/a/d/c;->bgE:Z

    iput-boolean v6, v4, Lcom/google/a/d/c;->bgC:Z

    iput-boolean v7, v4, Lcom/google/a/d/c;->bgz:Z

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    new-instance v2, Lcom/google/a/l;

    invoke-direct {v2, v1}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "AssertionError (GSON 2.8.5): "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_6
    move-object v0, v2

    check-cast v0, Ljava/io/Writer;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/google/a/f;->a(Ljava/io/Writer;)Lcom/google/a/d/c;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1}, Lcom/google/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Lcom/google/a/l;

    invoke-direct {v2, v1}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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
            Lcom/google/a/s;
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    invoke-static {p2}, Lcom/google/a/b/k;->q(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1, v0}, Lcom/google/a/d/a;-><init>(Ljava/io/Reader;)V

    iget-boolean v0, p0, Lcom/google/a/f;->bgE:Z

    iput-boolean v0, v1, Lcom/google/a/d/a;->bgE:Z

    invoke-direct {p0, v1, p2}, Lcom/google/a/f;->a(Lcom/google/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v1

    sget-object v2, Lcom/google/a/d/b;->bkv:Lcom/google/a/d/b;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/a/l;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/a/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/a/d/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/a/l;

    invoke-direct {v1, v0}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final l(Ljava/lang/Class;)Lcom/google/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/a/c/a;->t(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/a/f;->bgz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/f;->bgv:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/f;->bgt:Lcom/google/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
