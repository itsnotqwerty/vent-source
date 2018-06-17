.class public Lcom/layer/b/f/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/a/d$d;,
        Lcom/layer/b/f/a/d$e;,
        Lcom/layer/b/f/a/d$b;,
        Lcom/layer/b/f/a/d$c;,
        Lcom/layer/b/f/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/a/d;",
        "Lcom/layer/b/f/a/d$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final bsv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/a/d$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final bxT:Lc/a/a/b/d;

.field private static final byA:Lc/a/a/b/m;

.field private static final byB:Lc/a/a/b/d;

.field private static final byC:Lc/a/a/b/d;

.field private static final byD:Lc/a/a/b/d;

.field private static final byE:Lc/a/a/b/d;

.field private static final byF:Lc/a/a/b/d;

.field private static final byG:Lc/a/a/b/d;

.field private static final byH:Ljava/util/Map;
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
.field public b:Ljava/lang/String;

.field public byI:Lcom/layer/b/f/a/e;

.field public byJ:Lcom/layer/b/f/a/c;

.field public byK:Ljava/nio/ByteBuffer;

.field private byL:B

.field private byM:[Lcom/layer/b/f/a/d$a;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xb

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "IdentityPatch"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d;->byA:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "type"

    invoke-direct {v0, v1, v5, v6}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->byB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "provider_user_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->byC:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "properties"

    const/16 v2, 0xd

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->byD:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "properties_removed"

    const/16 v2, 0xf

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->byE:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "identity"

    const/16 v2, 0xc

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->byF:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "changed_at"

    const/16 v2, 0xa

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->byG:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "user_id"

    invoke-direct {v0, v1, v7, v5}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/d;->bxT:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/d;->byH:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/a/d$c;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/d$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/a/d;->byH:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/a/d$e;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/d$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/a/d$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/a/d$a;->byN:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "type"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/a/e;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byO:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "provider_user_id"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byP:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "properties"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v7}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/c;

    invoke-direct {v6, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byQ:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "properties_removed"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byR:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "identity"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byS:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "changed_at"

    new-instance v4, Lc/a/a/a/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byT:Lcom/layer/b/f/a/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "user_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/a/d;->bsv:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/d;

    sget-object v1, Lcom/layer/b/f/a/d;->bsv:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/d;->byL:B

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/f/a/d$a;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byP:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/d$a;->byQ:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/a/d$a;->byR:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/a/d$a;->byS:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/a/d$a;->byT:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/d;->byM:[Lcom/layer/b/f/a/d$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/a/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/d;->byL:B

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/f/a/d$a;

    sget-object v1, Lcom/layer/b/f/a/d$a;->byP:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/d$a;->byQ:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/a/d$a;->byR:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/a/d$a;->byS:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/a/d$a;->byT:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/d;->byM:[Lcom/layer/b/f/a/d$a;

    iget-byte v0, p1, Lcom/layer/b/f/a/d;->byL:B

    iput-byte v0, p0, Lcom/layer/b/f/a/d;->byL:B

    invoke-direct {p1}, Lcom/layer/b/f/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    iput-object v0, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    :cond_0
    invoke-direct {p1}, Lcom/layer/b/f/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    :cond_2
    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    :cond_3
    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/layer/b/f/a/c;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    invoke-direct {v0, v1}, Lcom/layer/b/f/a/c;-><init>(Lcom/layer/b/f/a/c;)V

    iput-object v0, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    :cond_4
    iget-wide v0, p1, Lcom/layer/b/f/a/d;->f:J

    iput-wide v0, p0, Lcom/layer/b/f/a/d;->f:J

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    :cond_5
    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

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

    iget-object v0, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic xH()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byA:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic xI()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xJ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byC:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xK()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byD:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xL()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byE:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xM()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byF:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xN()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->byG:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xO()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d;->bxT:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/a/d;->byH:Ljava/util/Map;

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

    sget-object v0, Lcom/layer/b/f/a/d;->byH:Ljava/util/Map;

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
    .locals 4

    check-cast p1, Lcom/layer/b/f/a/d;

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
    invoke-direct {p0}, Lcom/layer/b/f/a/d;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/layer/b/f/a/d;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/d;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xj()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/layer/b/f/a/d;->f:J

    iget-wide v2, p1, Lcom/layer/b/f/a/d;->f:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/a/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/a/d;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/d;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/d;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    iget-object v2, p1, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/layer/b/f/a/d;->d()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/d;->d()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->j()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    iget-object v2, p1, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/c;->a(Lcom/layer/b/f/a/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xj()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xj()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/a/d;->f:J

    iget-wide v4, p1, Lcom/layer/b/f/a/d;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'provider_user_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    invoke-virtual {v0}, Lcom/layer/b/f/a/c;->z()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdentityPatch("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "provider_user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "properties_removed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xE()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xj()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "changed_at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/a/d;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/d;->xG()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public final xE()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xF()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/a/d;->byL:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/a/d;->byL:B

    return-void
.end method

.method public final xG()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/d;->byK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xi()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xj()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/a/d;->byL:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method
