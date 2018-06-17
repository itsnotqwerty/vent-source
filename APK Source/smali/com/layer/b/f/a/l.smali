.class public Lcom/layer/b/f/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/a/l$d;,
        Lcom/layer/b/f/a/l$e;,
        Lcom/layer/b/f/a/l$b;,
        Lcom/layer/b/f/a/l$c;,
        Lcom/layer/b/f/a/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/a/l;",
        "Lcom/layer/b/f/a/l$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/a/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final bxT:Lc/a/a/b/d;

.field private static final bxU:Lc/a/a/b/d;

.field private static final bxV:Lc/a/a/b/d;

.field private static final bxW:Lc/a/a/b/d;

.field private static final bxX:Lc/a/a/b/d;

.field private static final bxY:Lc/a/a/b/d;

.field private static final bxZ:Lc/a/a/b/d;

.field private static final byF:Lc/a/a/b/d;

.field private static final byG:Lc/a/a/b/d;

.field private static final bya:Lc/a/a/b/d;

.field private static final byb:Lc/a/a/b/d;

.field private static final bzM:Lc/a/a/b/m;

.field private static final bzN:Ljava/util/Map;
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

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/a/l$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bzO:Lcom/layer/b/f/a/a;

.field public bzP:Lcom/layer/b/f/a/c;

.field public bzQ:Lcom/layer/b/f/a/g;

.field public bzR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public bzS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public bzT:Lcom/layer/b/f/a/i;

.field private bzU:[Lcom/layer/b/f/a/l$a;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
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

.field public f:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v5, 0x0

    const/16 v8, 0x8

    const/16 v4, 0xc

    const/16 v3, 0xf

    const/4 v7, 0x2

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l;->bzM:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->byF:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "identity"

    invoke-direct {v0, v1, v4, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->byG:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "followers"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxT:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "followees"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxU:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "identity_updates"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxV:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "external_badge_count"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxW:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "identities"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxX:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "identity_updates_batch"

    invoke-direct {v0, v1, v3, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxY:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "presence"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bxZ:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "presences_with_internal"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->bya:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "presences"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/l;->byb:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/l;->bzN:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/a/l$c;

    invoke-direct {v2, v5}, Lcom/layer/b/f/a/l$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/a/l;->bzN:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/a/l$e;

    invoke-direct {v2, v5}, Lcom/layer/b/f/a/l$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/a/l$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzV:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "error"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/a/a;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzW:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "identity"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/a/c;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzX:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "followers"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/c;

    const-string v6, "UUID"

    invoke-direct {v5, v6}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzY:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "followees"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/c;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzZ:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "identity_updates"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/a/g;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAa:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "external_badge_count"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAb:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "identities"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/a/c;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAc:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "identity_updates_batch"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/a/h;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAd:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "presence"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/a/i;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAe:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "presences_with_internal"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/a/j;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAf:Lcom/layer/b/f/a/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "presences"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/a/i;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/a/l;->l:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/l;

    sget-object v1, Lcom/layer/b/f/a/l;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/l;->z:B

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/layer/b/f/a/l$a;

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzV:Lcom/layer/b/f/a/l$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/l$a;->bzW:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/a/l$a;->bzX:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/a/l$a;->bzY:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/a/l$a;->bzZ:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/a/l$a;->bAa:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/a/l$a;->bAb:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/a/l$a;->bAc:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/a/l$a;->bAd:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/a/l$a;->bAe:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/a/l$a;->bAf:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/l;->bzU:[Lcom/layer/b/f/a/l$a;

    return-void
.end method

.method static synthetic xI()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxT:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xJ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxU:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xK()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxV:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xL()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxW:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xM()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxX:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xN()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxY:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xO()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bxZ:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xZ()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bzM:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic ya()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->byF:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yb()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->byG:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yc()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->bya:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yd()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l;->byb:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/a/l;->bzN:Ljava/util/Map;

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

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/a/l;->bzN:Ljava/util/Map;

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

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/layer/b/f/a/l;

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
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/layer/b/f/a/l;->f:I

    iget v1, p1, Lcom/layer/b/f/a/l;->f:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/a/l;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/a/l;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/a;->a(Lcom/layer/b/f/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/c;->a(Lcom/layer/b/f/a/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->f()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/g;->c(Lcom/layer/b/f/a/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/a/l;->f:I

    iget v2, p1, Lcom/layer/b/f/a/l;->f:I

    if-ne v1, v2, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->h()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->i()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->j()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/i;->b(Lcom/layer/b/f/a/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->k()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    invoke-virtual {v0}, Lcom/layer/b/f/a/a;->f()V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    invoke-virtual {v0}, Lcom/layer/b/f/a/c;->z()V

    :cond_1
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-virtual {v0}, Lcom/layer/b/f/a/g;->g()V

    :cond_2
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-virtual {v0}, Lcom/layer/b/f/a/i;->g()V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Response("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "error:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    if-nez v0, :cond_14

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "identity:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    if-nez v0, :cond_15

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "followers:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "followees:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "identity_updates:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    if-nez v0, :cond_18

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "external_badge_count:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/layer/b/f/a/l;->f:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->h()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "identities:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    if-nez v0, :cond_19

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->i()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "identity_updates_batch:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    if-nez v0, :cond_1a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->j()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "presence:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    if-nez v0, :cond_1b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v0, v1

    :cond_10
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->k()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "presences_with_internal:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    if-nez v0, :cond_1c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {p0}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez v1, :cond_12

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v0, "presences:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    if-nez v0, :cond_1d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_17
    iget-object v0, p0, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_19
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1a
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1c
    iget-object v0, p0, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1d
    iget-object v0, p0, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1e
    move v1, v0

    goto :goto_8
.end method

.method public final xE()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

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

    iget-byte v0, p0, Lcom/layer/b/f/a/l;->z:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/a/l;->z:B

    return-void
.end method

.method public final xi()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/a/l;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method
