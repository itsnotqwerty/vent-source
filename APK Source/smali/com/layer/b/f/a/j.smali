.class public Lcom/layer/b/f/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/a/j$d;,
        Lcom/layer/b/f/a/j$e;,
        Lcom/layer/b/f/a/j$b;,
        Lcom/layer/b/f/a/j$c;,
        Lcom/layer/b/f/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/a/j;",
        "Lcom/layer/b/f/a/j$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/a/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final bxA:Lc/a/a/b/d;

.field private static final bxB:Lc/a/a/b/d;

.field private static final byB:Lc/a/a/b/d;

.field private static final bzi:Lc/a/a/b/m;

.field private static final bzj:Lc/a/a/b/d;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/a/j$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
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
.field public bzk:Ljava/nio/ByteBuffer;

.field public bzl:Ljava/nio/ByteBuffer;

.field public bzx:Lcom/layer/b/f/a/i;

.field public bzy:Ljava/nio/ByteBuffer;

.field private bzz:[Lcom/layer/b/f/a/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/16 v3, 0xb

    const/4 v6, 0x1

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "PresenceBatchWrapper"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/j;->bzi:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "presence"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v6}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/j;->bxA:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "user_id"

    invoke-direct {v0, v1, v3, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/j;->bxB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "app_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/j;->bzj:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "device_id"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/j;->byB:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/j;->k:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/a/j$c;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/j$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/a/j;->k:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/a/j$e;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/j$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/a/j$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/a/j$a;->bzA:Lcom/layer/b/f/a/j$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "presence"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/a/i;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/j$a;->bzB:Lcom/layer/b/f/a/j$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "user_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/j$a;->bzC:Lcom/layer/b/f/a/j$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "app_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/j$a;->bzD:Lcom/layer/b/f/a/j$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "device_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/a/j;->e:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/j;

    sget-object v1, Lcom/layer/b/f/a/j;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/b/f/a/j$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/a/j$a;->bzD:Lcom/layer/b/f/a/j$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/j;->bzz:[Lcom/layer/b/f/a/j$a;

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic xT()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/j;->bzi:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic xU()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/j;->bxA:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xe()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/j;->bxB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xf()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/j;->bzj:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xg()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/j;->byB:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/a/j;->k:Ljava/util/Map;

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

    sget-object v0, Lcom/layer/b/f/a/j;->k:Ljava/util/Map;

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

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/layer/b/f/a/j;

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
    invoke-direct {p0}, Lcom/layer/b/f/a/j;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/j;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    iget-object v1, p1, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/layer/b/f/a/j;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/j;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/layer/b/f/a/j;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/j;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/j;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'presence\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'user_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'app_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    invoke-virtual {v0}, Lcom/layer/b/f/a/i;->g()V

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/a/j;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/a/j;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/j;->a()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/j;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    iget-object v2, p1, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/i;->b(Lcom/layer/b/f/a/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/layer/b/f/a/j;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/j;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/layer/b/f/a/j;->c()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/j;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/j;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PresenceBatchWrapper("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "presence:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
