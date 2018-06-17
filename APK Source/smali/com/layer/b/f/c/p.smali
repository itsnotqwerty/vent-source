.class public Lcom/layer/b/f/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/c/p$d;,
        Lcom/layer/b/f/c/p$e;,
        Lcom/layer/b/f/c/p$b;,
        Lcom/layer/b/f/c/p$c;,
        Lcom/layer/b/f/c/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/c/p;",
        "Lcom/layer/b/f/c/p$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/c/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final bEU:Ljava/util/Map;
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

.field private static final bFx:Lc/a/a/b/m;

.field private static final bxT:Lc/a/a/b/d;

.field private static final bxU:Lc/a/a/b/d;

.field private static final bxV:Lc/a/a/b/d;

.field private static final byC:Lc/a/a/b/d;

.field private static final byD:Lc/a/a/b/d;

.field private static final byE:Lc/a/a/b/d;

.field private static final byF:Lc/a/a/b/d;

.field private static final byG:Lc/a/a/b/d;

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/c/p$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bFA:B

.field private bFB:[Lcom/layer/b/f/c/p$a;

.field public bFy:Lcom/layer/b/f/c/g;

.field public bFz:Lcom/layer/b/f/c/f;

.field public bpD:I

.field public bzk:Ljava/nio/ByteBuffer;

.field public bzl:Ljava/nio/ByteBuffer;

.field public f:I

.field public g:J

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v5, 0x0

    const/16 v4, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0x8

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "SyncUserMutation"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p;->bFx:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "type"

    invoke-direct {v0, v1, v6, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->byC:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "target"

    invoke-direct {v0, v1, v6, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->byD:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "deprecated_do_not_use"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->byE:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "stream_id"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->byF:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "target_seq"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->byG:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "seq"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->bxT:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "timestamp"

    const/16 v2, 0xa

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->bxU:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "provider_user_id"

    invoke-direct {v0, v1, v4, v6}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/p;->bxV:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/p;->bEU:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/c/p$c;

    invoke-direct {v2, v5}, Lcom/layer/b/f/c/p$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/c/p;->bEU:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/c/p$e;

    invoke-direct {v2, v5}, Lcom/layer/b/f/c/p$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/c/p$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFC:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "type"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/c/g;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFD:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "target"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/c/f;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFE:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "deprecated_do_not_use"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFF:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "stream_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFG:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "target_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v6}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFH:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v6}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFI:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "timestamp"

    new-instance v4, Lc/a/a/a/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFJ:Lcom/layer/b/f/c/p$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "provider_user_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "ProviderUserId"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/c/p;->i:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/p;

    sget-object v1, Lcom/layer/b/f/c/p;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/f/c/p$a;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFE:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFF:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFH:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFI:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFJ:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bFB:[Lcom/layer/b/f/c/p$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/p;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/f/c/p$a;

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFE:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFF:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFH:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFI:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFJ:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bFB:[Lcom/layer/b/f/c/p$a;

    iget-byte v0, p1, Lcom/layer/b/f/c/p;->bFA:B

    iput-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    invoke-direct {p1}, Lcom/layer/b/f/c/p;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    :cond_0
    invoke-direct {p1}, Lcom/layer/b/f/c/p;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    :cond_3
    iget v0, p1, Lcom/layer/b/f/c/p;->bpD:I

    iput v0, p0, Lcom/layer/b/f/c/p;->bpD:I

    iget v0, p1, Lcom/layer/b/f/c/p;->f:I

    iput v0, p0, Lcom/layer/b/f/c/p;->f:I

    iget-wide v0, p1, Lcom/layer/b/f/c/p;->g:J

    iput-wide v0, p0, Lcom/layer/b/f/c/p;->g:J

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic xN()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->byC:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xO()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->byD:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xr()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->bxU:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xs()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->bxV:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yY()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->byG:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yc()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->byE:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yd()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->byF:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic zm()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->bFx:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic zn()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p;->bxT:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/c/p;->bEU:Ljava/util/Map;

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

.method public final a(Lcom/layer/b/f/c/p;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/layer/b/f/c/p;->h()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/c/p;->h()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    iget-object v2, p1, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/layer/b/f/c/p;->j()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/c/p;->j()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    iget-object v2, p1, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->k()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    iget v1, p0, Lcom/layer/b/f/c/p;->bpD:I

    iget v2, p1, Lcom/layer/b/f/c/p;->bpD:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->q()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/p;->f:I

    iget v2, p1, Lcom/layer/b/f/c/p;->f:I

    if-ne v1, v2, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->r()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/p;->g:J

    iget-wide v4, p1, Lcom/layer/b/f/c/p;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->s()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/p;->bEU:Ljava/util/Map;

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

    check-cast p1, Lcom/layer/b/f/c/p;

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
    invoke-direct {p0}, Lcom/layer/b/f/c/p;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/c/p;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/c/p;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    iget-object v1, p1, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/layer/b/f/c/p;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/c/p;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/c/p;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    iget-object v1, p1, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->xk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xk()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/layer/b/f/c/p;->bpD:I

    iget v1, p1, Lcom/layer/b/f/c/p;->bpD:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/layer/b/f/c/p;->f:I

    iget v1, p1, Lcom/layer/b/f/c/p;->f:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/layer/b/f/c/p;->g:J

    iget-wide v2, p1, Lcom/layer/b/f/c/p;->g:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/p;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final dH(I)Lcom/layer/b/f/c/p;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/p;->bpD:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->yg()V

    return-object p0
.end method

.method public final dI(I)Lcom/layer/b/f/c/p;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xF()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/c/p;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/c/p;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/c/p;->a(Lcom/layer/b/f/c/p;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    if-nez v0, :cond_1

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'target\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->toString()Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncUserMutation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deprecated_do_not_use:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stream_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target_seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/p;->bpD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/p;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/p;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "provider_user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public final xF()V
    .locals 2

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    invoke-static {v0, v1, v1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    return-void
.end method

.method public final xj()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xk()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final yg()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    return-void
.end method

.method public final yl()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/p;->bFA:B

    return-void
.end method

.method public final zl()[B
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method
