.class public Lcom/layer/b/f/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/c/l$d;,
        Lcom/layer/b/f/c/l$e;,
        Lcom/layer/b/f/c/l$b;,
        Lcom/layer/b/f/c/l$c;,
        Lcom/layer/b/f/c/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/c/l;",
        "Lcom/layer/b/f/c/l$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/c/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final bAF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/c/l$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final bEh:Lc/a/a/b/m;

.field private static final bEi:Ljava/util/Map;
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

.field private static final bxT:Lc/a/a/b/d;

.field private static final bxU:Lc/a/a/b/d;

.field private static final bxV:Lc/a/a/b/d;

.field private static final bxW:Lc/a/a/b/d;

.field private static final bxX:Lc/a/a/b/d;

.field private static final bxY:Lc/a/a/b/d;

.field private static final bxZ:Lc/a/a/b/d;

.field private static final byG:Lc/a/a/b/d;

.field private static final bya:Lc/a/a/b/d;

.field private static final byb:Lc/a/a/b/d;

.field private static final byc:Lc/a/a/b/d;

.field private static final byd:Lc/a/a/b/d;


# instance fields
.field public bEj:Lcom/layer/b/f/c/b;

.field public bEk:Lcom/layer/b/f/c/d;

.field public bEl:Lcom/layer/b/f/c/m;

.field public bEm:Lcom/layer/b/f/c/n;

.field public bEn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/b/f/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public bEo:Lcom/layer/b/f/c/p;

.field public bEp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public bEq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bEr:Ljava/nio/ByteBuffer;

.field private bEs:[Lcom/layer/b/f/c/l$a;

.field public bwV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/b/f/c/p;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/b/f/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v6, 0x0

    const/16 v8, 0xb

    const/16 v5, 0xe

    const/16 v4, 0xc

    const/4 v7, 0x2

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l;->bEh:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->byG:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "event"

    invoke-direct {v0, v1, v4, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxT:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "stream"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxU:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "streams"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxV:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "stream_metadata"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxW:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "content"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxX:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "mutation"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxY:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "mutations"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bxZ:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "ids"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->bya:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "events"

    const/16 v2, 0xf

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->byb:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "tags"

    invoke-direct {v0, v1, v5, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->byc:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "paging_key"

    invoke-direct {v0, v1, v8, v4}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/l;->byd:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/l;->bEi:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/c/l$c;

    invoke-direct {v2, v6}, Lcom/layer/b/f/c/l$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/c/l;->bEi:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/c/l$e;

    invoke-direct {v2, v6}, Lcom/layer/b/f/c/l$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/c/l$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEt:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "error"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/c/b;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEu:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "event"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/c/d;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEv:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "stream"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/c/m;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEw:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "streams"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/c/m;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEx:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "stream_metadata"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/c/n;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEy:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "content"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/c/a;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEz:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "mutation"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/c/p;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEA:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "mutations"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/c/p;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEB:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "ids"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/c;

    const-string v6, "UUID"

    invoke-direct {v5, v6}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEC:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "events"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/c/d;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bED:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "tags"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEE:Lcom/layer/b/f/c/l$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "paging_key"

    new-instance v4, Lc/a/a/a/c;

    const/4 v5, 0x1

    invoke-direct {v4, v8, v5}, Lc/a/a/a/c;-><init>(BZ)V

    invoke-direct {v2, v3, v7, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/c/l;->bAF:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/l;

    sget-object v1, Lcom/layer/b/f/c/l;->bAF:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/layer/b/f/c/l$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEt:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEu:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEv:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEw:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEx:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEy:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEz:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEA:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEB:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEC:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/l$a;->bED:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEE:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/l;->bEs:[Lcom/layer/b/f/c/l$a;

    return-void
.end method

.method static synthetic xI()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxU:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xJ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxV:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xK()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxW:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xL()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxX:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xM()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxY:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xN()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxZ:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xO()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bya:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xZ()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bEh:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic yY()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->byd:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic ya()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->byG:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yb()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->bxT:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yc()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->byb:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yd()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l;->byc:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/c/l;->bEi:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

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

    sget-object v0, Lcom/layer/b/f/c/l;->bEi:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

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

    check-cast p1, Lcom/layer/b/f/c/l;

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
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

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
    instance-of v1, p1, Lcom/layer/b/f/c/l;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/c/l;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/b;->a(Lcom/layer/b/f/c/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/d;->a(Lcom/layer/b/f/c/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/m;->b(Lcom/layer/b/f/c/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->e()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/n;->c(Lcom/layer/b/f/c/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->f()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/p;->a(Lcom/layer/b/f/c/p;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->h()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->i()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->j()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->k()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/b;->g()V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v0}, Lcom/layer/b/f/c/d;->yA()V

    :cond_1
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v0}, Lcom/layer/b/f/c/m;->zj()V

    :cond_2
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/b/f/c/n;->g()V

    :cond_3
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v0}, Lcom/layer/b/f/c/p;->t()V

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Response("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "error:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "event:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "stream:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    if-nez v0, :cond_18

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "streams:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    if-nez v0, :cond_19

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "stream_metadata:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    if-nez v0, :cond_1a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "content:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    if-nez v0, :cond_1b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "mutation:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    if-nez v0, :cond_1c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "mutations:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    if-nez v0, :cond_1d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "ids:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    if-nez v0, :cond_1e

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v0, v1

    :cond_10
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "events:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    if-nez v0, :cond_1f

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v0, v1

    :cond_12
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->k()Z

    move-result v3

    if-eqz v3, :cond_22

    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v0, "tags:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    if-nez v0, :cond_20

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez v1, :cond_14

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v0, "paging_key:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_21

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_b
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_19
    iget-object v0, p0, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1a
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1d
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1f
    iget-object v0, p0, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_20
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_21
    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lc/a/a/d;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_b

    :cond_22
    move v1, v0

    goto :goto_a
.end method

.method public final xE()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

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

    iget-object v0, p0, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
