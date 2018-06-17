.class public Lcom/layer/b/f/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/a/i$d;,
        Lcom/layer/b/f/a/i$e;,
        Lcom/layer/b/f/a/i$b;,
        Lcom/layer/b/f/a/i$c;,
        Lcom/layer/b/f/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/a/i;",
        "Lcom/layer/b/f/a/i$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/a/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final bxA:Lc/a/a/b/d;

.field private static final bxB:Lc/a/a/b/d;

.field public static final bxE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/a/i$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final bxy:Lc/a/a/b/m;

.field private static final bxz:Lc/a/a/b/d;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc/a/a/c/a;",
            ">;",
            "Lc/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public bxp:Lcom/layer/b/f/a/m;

.field private bzc:B

.field private bzs:[Lcom/layer/b/f/a/i$a;

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v5, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Presence"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/i;->bxy:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "provider_user_id"

    invoke-direct {v0, v1, v5, v6}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/i;->bxz:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "status"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/i;->bxA:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "timestamp"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/i;->bxB:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/i;->i:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/a/i$c;

    invoke-direct {v2, v3}, Lcom/layer/b/f/a/i$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/a/i;->i:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/a/i$e;

    invoke-direct {v2, v3}, Lcom/layer/b/f/a/i$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/a/i$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/a/i$a;->bzt:Lcom/layer/b/f/a/i$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "provider_user_id"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/i$a;->bzu:Lcom/layer/b/f/a/i$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "status"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/a/m;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/i$a;->bzv:Lcom/layer/b/f/a/i$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "timestamp"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/a/i;->bxE:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/i;

    sget-object v1, Lcom/layer/b/f/a/i;->bxE:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/i;->bzc:B

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/b/f/a/i$a;

    sget-object v1, Lcom/layer/b/f/a/i$a;->bzv:Lcom/layer/b/f/a/i$a;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/layer/b/f/a/i;->bzs:[Lcom/layer/b/f/a/i$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/a/i;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/i;->bzc:B

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/b/f/a/i$a;

    sget-object v1, Lcom/layer/b/f/a/i$a;->bzv:Lcom/layer/b/f/a/i$a;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/layer/b/f/a/i;->bzs:[Lcom/layer/b/f/a/i$a;

    iget-byte v0, p1, Lcom/layer/b/f/a/i;->bzc:B

    iput-byte v0, p0, Lcom/layer/b/f/a/i;->bzc:B

    invoke-direct {p1}, Lcom/layer/b/f/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    :cond_0
    invoke-direct {p1}, Lcom/layer/b/f/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    iput-object v0, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    :cond_1
    iget-wide v0, p1, Lcom/layer/b/f/a/i;->c:J

    iput-wide v0, p0, Lcom/layer/b/f/a/i;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/layer/b/f/a/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/b/f/a/i;-><init>()V

    iput-object p1, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic xR()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/i;->bxy:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic xS()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/i;->bxB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xf()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/i;->bxz:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xg()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/i;->bxA:Lc/a/a/b/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/a/i;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lc/a/a/b/h;->LS()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c/b;

    invoke-interface {v0}, Lc/a/a/c/b;->xh()Lc/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lc/a/a/c/a;->b(Lc/a/a/b/h;Lc/a/a/c;)V

    return-void
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/a/i;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lc/a/a/b/h;->LS()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c/b;

    invoke-interface {v0}, Lc/a/a/c/b;->xh()Lc/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lc/a/a/c/a;->a(Lc/a/a/b/h;Lc/a/a/c;)V

    return-void
.end method

.method public final b(Lcom/layer/b/f/a/i;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/layer/b/f/a/i;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/i;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/layer/b/f/a/i;->d()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/i;->d()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    iget-object v2, p1, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/i;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/i;->f()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/a/i;->c:J

    iget-wide v4, p1, Lcom/layer/b/f/a/i;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/layer/b/f/a/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/layer/b/f/a/i;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/i;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/layer/b/f/a/i;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/i;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    iget-object v1, p1, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/i;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/i;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/i;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/layer/b/f/a/i;->c:J

    iget-wide v2, p1, Lcom/layer/b/f/a/i;->c:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/a/i;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/a/i;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/a/i;->b(Lcom/layer/b/f/a/i;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/a/i;->bzc:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'provider_user_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    if-nez v0, :cond_1

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'status\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Presence("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "provider_user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/f/a/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/a/i;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final xQ()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/a/i;->bzc:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/a/i;->bzc:B

    return-void
.end method
