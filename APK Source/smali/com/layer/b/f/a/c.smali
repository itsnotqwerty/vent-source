.class public Lcom/layer/b/f/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/a/c$d;,
        Lcom/layer/b/f/a/c$e;,
        Lcom/layer/b/f/a/c$b;,
        Lcom/layer/b/f/a/c$c;,
        Lcom/layer/b/f/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/a/c;",
        "Lcom/layer/b/f/a/c$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final bxS:Lc/a/a/b/m;

.field private static final bxT:Lc/a/a/b/d;

.field private static final bxU:Lc/a/a/b/d;

.field private static final bxV:Lc/a/a/b/d;

.field private static final bxW:Lc/a/a/b/d;

.field private static final bxX:Lc/a/a/b/d;

.field private static final bxY:Lc/a/a/b/d;

.field private static final bxZ:Lc/a/a/b/d;

.field private static final bya:Lc/a/a/b/d;

.field private static final byb:Lc/a/a/b/d;

.field private static final byc:Lc/a/a/b/d;

.field private static final byd:Lc/a/a/b/d;

.field private static final bye:Lc/a/a/b/d;

.field private static final byf:Lc/a/a/b/d;

.field private static final byg:Ljava/util/Map;
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

.field public static final byl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/a/c$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public byh:Lcom/layer/b/f/a/f;

.field public byi:Ljava/nio/ByteBuffer;

.field private byj:B

.field private byk:[Lcom/layer/b/f/a/c$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
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

.field public j:J

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x2

    const/16 v7, 0xb

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Identity"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxS:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "provider_user_id"

    invoke-direct {v0, v1, v7, v5}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxT:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "display_name"

    invoke-direct {v0, v1, v7, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxU:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "avatar_url"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxV:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "first_name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxW:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "last_name"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxX:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "phone_number"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxY:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "email"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bxZ:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "public_key"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bya:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "metadata"

    const/16 v2, 0xd

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->byb:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "created_at"

    invoke-direct {v0, v1, v9, v9}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->byc:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "updated_at"

    invoke-direct {v0, v1, v9, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->byd:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "identity_type"

    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->bye:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "user_id"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/a/c;->byf:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/c;->byg:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/a/c$c;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/c$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/a/c;->byg:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/a/c$e;

    invoke-direct {v2, v4}, Lcom/layer/b/f/a/c$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/a/c$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/a/c$a;->bym:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "provider_user_id"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byn:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "display_name"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byo:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "avatar_url"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byp:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "first_name"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byq:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "last_name"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byr:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "phone_number"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->bys:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "email"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byt:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "public_key"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byu:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "metadata"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v7}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/c;

    invoke-direct {v6, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byv:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "created_at"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byw:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "updated_at"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byx:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "identity_type"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/a/f;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byy:Lcom/layer/b/f/a/c$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "user_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/a/c;->byl:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/c;

    sget-object v1, Lcom/layer/b/f/a/c;->byl:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/c;->byj:B

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/layer/b/f/a/c$a;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byn:Lcom/layer/b/f/a/c$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/c$a;->byo:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/a/c$a;->byp:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/a/c$a;->byq:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/a/c$a;->byr:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/a/c$a;->bys:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/a/c$a;->byt:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/a/c$a;->byu:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/a/c$a;->byv:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/a/c$a;->byw:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/a/c$a;->byx:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/a/c$a;->byy:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/c;->byk:[Lcom/layer/b/f/a/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/a/c;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/a/c;->byj:B

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/layer/b/f/a/c$a;

    sget-object v1, Lcom/layer/b/f/a/c$a;->byn:Lcom/layer/b/f/a/c$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/c$a;->byo:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/a/c$a;->byp:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/a/c$a;->byq:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/a/c$a;->byr:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/a/c$a;->bys:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/a/c$a;->byt:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/a/c$a;->byu:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/a/c$a;->byv:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/a/c$a;->byw:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/a/c$a;->byx:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/a/c$a;->byy:Lcom/layer/b/f/a/c$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/a/c;->byk:[Lcom/layer/b/f/a/c$a;

    iget-byte v0, p1, Lcom/layer/b/f/a/c;->byj:B

    iput-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    invoke-direct {p1}, Lcom/layer/b/f/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    :cond_6
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    :cond_7
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    :cond_8
    iget-wide v0, p1, Lcom/layer/b/f/a/c;->j:J

    iput-wide v0, p0, Lcom/layer/b/f/a/c;->j:J

    iget-wide v0, p1, Lcom/layer/b/f/a/c;->k:J

    iput-wide v0, p0, Lcom/layer/b/f/a/c;->k:J

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    :cond_9
    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    :cond_a
    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic xA()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->byc:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xB()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->byd:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xC()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bye:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xD()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->byf:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xq()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxS:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic xr()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxT:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xs()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxU:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xt()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxV:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xu()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxW:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xv()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxX:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xw()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxY:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xx()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bxZ:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xy()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->bya:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic xz()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/c;->byb:Lc/a/a/b/d;

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

    sget-object v0, Lcom/layer/b/f/a/c;->byg:Ljava/util/Map;

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

.method public final a(Lcom/layer/b/f/a/c;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/layer/b/f/a/c;->e()Z

    move-result v1

    invoke-direct {p1}, Lcom/layer/b/f/a/c;->e()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->i()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->k()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->q()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->s()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/a/c;->j:J

    iget-wide v4, p1, Lcom/layer/b/f/a/c;->j:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->w()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->w()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/a/c;->k:J

    iget-wide v4, p1, Lcom/layer/b/f/a/c;->k:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_19
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->y()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->y()Z

    move-result v2

    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1b
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

    sget-object v0, Lcom/layer/b/f/a/c;->byg:Ljava/util/Map;

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

    check-cast p1, Lcom/layer/b/f/a/c;

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
    invoke-direct {p0}, Lcom/layer/b/f/a/c;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/layer/b/f/a/c;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/b/f/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/layer/b/f/a/c;->j:J

    iget-wide v2, p1, Lcom/layer/b/f/a/c;->j:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/layer/b/f/a/c;->k:J

    iget-wide v2, p1, Lcom/layer/b/f/a/c;->k:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/a/c;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/b/f/a/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/a/c;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/a/c;->a(Lcom/layer/b/f/a/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Identity("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "provider_user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "display_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "avatar_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    if-nez v1, :cond_e

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "first_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    if-nez v1, :cond_f

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    if-nez v1, :cond_10

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "phone_number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    if-nez v1, :cond_11

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "public_key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    if-nez v1, :cond_13

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    if-nez v1, :cond_14

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "created_at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/a/c;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updated_at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/a/c;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "identity_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    if-nez v1, :cond_15

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_9
    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->y()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_16

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_a
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    iget-object v1, p0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_10
    iget-object v1, p0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_11
    iget-object v1, p0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_12
    iget-object v1, p0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_13
    iget-object v1, p0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_14
    iget-object v1, p0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_15
    iget-object v1, p0, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_16
    iget-object v1, p0, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public final w()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final xi()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xj()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xk()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xl()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xm()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final xn()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    return-void
.end method

.method public final xo()V
    .locals 2

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    invoke-static {v0, v1, v1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/a/c;->byj:B

    return-void
.end method

.method public final xp()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'provider_user_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
