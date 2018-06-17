.class public Lcom/layer/b/f/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/c/d$d;,
        Lcom/layer/b/f/c/d$e;,
        Lcom/layer/b/f/c/d$b;,
        Lcom/layer/b/f/c/d$c;,
        Lcom/layer/b/f/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/c/d;",
        "Lcom/layer/b/f/c/d$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/c/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final bCA:Lc/a/a/b/d;

.field private static final bCB:Lc/a/a/b/d;

.field private static final bCC:Lc/a/a/b/d;

.field private static final bCD:Ljava/util/Map;
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

.field public static final bCP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/c/d$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final bCm:Lc/a/a/b/m;

.field private static final bCn:Lc/a/a/b/d;

.field private static final bCo:Lc/a/a/b/d;

.field private static final bCp:Lc/a/a/b/d;

.field private static final bCq:Lc/a/a/b/d;

.field private static final bCr:Lc/a/a/b/d;

.field private static final bCs:Lc/a/a/b/d;

.field private static final bCt:Lc/a/a/b/d;

.field private static final bCu:Lc/a/a/b/d;

.field private static final bCv:Lc/a/a/b/d;

.field private static final bCw:Lc/a/a/b/d;

.field private static final bCx:Lc/a/a/b/d;

.field private static final bCy:Lc/a/a/b/d;

.field private static final bCz:Lc/a/a/b/d;

.field private static final byb:Lc/a/a/b/d;

.field private static final byc:Lc/a/a/b/d;

.field private static final byd:Lc/a/a/b/d;

.field private static final bye:Lc/a/a/b/d;

.field private static final byf:Lc/a/a/b/d;


# instance fields
.field public b:Z

.field public bCE:Lcom/layer/b/f/c/e;

.field public bCF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public bCG:I

.field public bCH:Ljava/lang/String;

.field public bCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/b/f/c/k;",
            ">;"
        }
    .end annotation
.end field

.field public bCJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bCK:Ljava/nio/ByteBuffer;

.field public bCL:Ljava/nio/ByteBuffer;

.field public bCM:J

.field private bCN:S

.field private bCO:[Lcom/layer/b/f/c/d$a;

.field public brV:Ljava/lang/String;

.field public byi:Ljava/nio/ByteBuffer;

.field public bzH:B

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:I

.field public g:I

.field public j:Ljava/lang/String;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0xa

    const/16 v7, 0x8

    const/16 v9, 0xb

    const/4 v8, 0x2

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCm:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "type"

    invoke-direct {v0, v1, v7, v11}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->byb:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "ephemeral"

    invoke-direct {v0, v1, v8, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->byc:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "creator_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->byd:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "seq"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bye:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "server_timestamp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v10, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->byf:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "preceding_seq"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCn:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "client_seq"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCo:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "subtype"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCp:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "content"

    const/16 v2, 0xf

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCq:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "member_id"

    invoke-direct {v0, v1, v9, v10}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCr:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "target_seq"

    invoke-direct {v0, v1, v7, v9}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCs:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "transient_metadata"

    const/16 v2, 0xd

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCt:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "client_id"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCu:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "client_timestamp"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v10, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCv:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "creator_name"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCw:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "initial_recipient_status"

    const/16 v2, 0xd

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCx:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "tags"

    const/16 v2, 0xe

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCy:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "member_id_internal"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCz:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "creator_id_internal"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCA:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "name"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCB:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "target_position"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v10, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/d;->bCC:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/d;->bCD:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/c/d$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/d$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/c/d;->bCD:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/c/d$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/d$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/c/d$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCQ:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "type"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/c/e;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v11, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCR:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "ephemeral"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCS:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "creator_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "ProviderUserId"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCT:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCU:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "server_timestamp"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v10}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCV:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "preceding_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCW:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "client_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCX:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "subtype"

    new-instance v4, Lc/a/a/a/c;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCY:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "content"

    new-instance v4, Lc/a/a/a/d;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/c/a;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/d;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCZ:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "member_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "ProviderUserId"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDa:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "target_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDb:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "transient_metadata"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/c;

    invoke-direct {v6, v9, v11}, Lc/a/a/a/c;-><init>(BZ)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDc:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "client_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDd:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "client_timestamp"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v10}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDe:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "creator_name"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDf:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "initial_recipient_status"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/a;

    const-class v7, Lcom/layer/b/f/c/k;

    invoke-direct {v6, v7}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDg:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "tags"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDh:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "member_id_internal"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDi:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "creator_id_internal"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDj:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "name"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bDk:Lcom/layer/b/f/c/d$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "target_position"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v10}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/c/d;->bCP:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/d;

    sget-object v1, Lcom/layer/b/f/c/d;->bCP:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v2, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/layer/b/f/c/d$a;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCR:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCS:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCT:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCU:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCV:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCW:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCX:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCY:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCZ:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDa:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDb:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDc:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDd:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDe:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDf:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDg:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDh:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDi:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDj:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDk:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCO:[Lcom/layer/b/f/c/d$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/d;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v2, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/layer/b/f/c/d$a;

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCR:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCS:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCT:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCU:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCV:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCW:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCX:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCY:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCZ:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDa:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDb:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDc:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDd:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDe:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDf:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDg:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDh:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDi:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDj:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDk:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCO:[Lcom/layer/b/f/c/d$a;

    iget-short v0, p1, Lcom/layer/b/f/c/d;->bCN:S

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    :cond_0
    iget-boolean v0, p1, Lcom/layer/b/f/c/d;->b:Z

    iput-boolean v0, p0, Lcom/layer/b/f/c/d;->b:Z

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    :cond_1
    iget v0, p1, Lcom/layer/b/f/c/d;->d:I

    iput v0, p0, Lcom/layer/b/f/c/d;->d:I

    iget-wide v0, p1, Lcom/layer/b/f/c/d;->e:J

    iput-wide v0, p0, Lcom/layer/b/f/c/d;->e:J

    iget v0, p1, Lcom/layer/b/f/c/d;->f:I

    iput v0, p0, Lcom/layer/b/f/c/d;->f:I

    iget v0, p1, Lcom/layer/b/f/c/d;->g:I

    iput v0, p0, Lcom/layer/b/f/c/d;->g:I

    iget-byte v0, p1, Lcom/layer/b/f/c/d;->bzH:B

    iput-byte v0, p0, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    new-instance v3, Lcom/layer/b/f/c/a;

    invoke-direct {v3, v0}, Lcom/layer/b/f/c/a;-><init>(Lcom/layer/b/f/c/a;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    :cond_3
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    :cond_4
    iget v0, p1, Lcom/layer/b/f/c/d;->bCG:I

    iput v0, p0, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    :cond_5
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    :cond_6
    iget-wide v0, p1, Lcom/layer/b/f/c/d;->n:J

    iput-wide v0, p0, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    :cond_7
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/k;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    iput-object v2, p0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    :cond_9
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    :cond_a
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    :cond_b
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->K()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    :cond_c
    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    :cond_d
    iget-wide v0, p1, Lcom/layer/b/f/c/d;->bCM:J

    iput-wide v0, p0, Lcom/layer/b/f/c/d;->bCM:J

    return-void
.end method

.method static synthetic yB()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCm:Lc/a/a/b/m;

    return-object v0
.end method

.method static synthetic yC()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->byb:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yD()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->byc:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yE()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->byd:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yF()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bye:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yG()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->byf:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yH()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCn:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yI()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCo:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yJ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCp:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yK()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCq:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yL()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCr:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yM()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCs:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yN()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCt:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yO()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCu:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yP()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCv:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yQ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCw:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yR()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCx:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yS()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCy:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yT()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCz:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yU()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCA:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yV()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCB:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yW()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d;->bCC:Lc/a/a/b/d;

    return-object v0
.end method


# virtual methods
.method public final K()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final M(J)Lcom/layer/b/f/c/d;
    .locals 1

    iput-wide p1, p0, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xF()V

    return-object p0
.end method

.method public final N(J)Lcom/layer/b/f/c/d;
    .locals 1

    iput-wide p1, p0, Lcom/layer/b/f/c/d;->bCM:J

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yz()V

    return-object p0
.end method

.method public final N()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final a(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/d;->bCD:Ljava/util/Map;

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

.method public final a(Lcom/layer/b/f/c/d;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->f()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->h()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/layer/b/f/c/d;->b:Z

    iget-boolean v2, p1, Lcom/layer/b/f/c/d;->b:Z

    if-ne v1, v2, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->j()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/d;->d:I

    iget v2, p1, Lcom/layer/b/f/c/d;->d:I

    if-ne v1, v2, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/d;->e:J

    iget-wide v4, p1, Lcom/layer/b/f/c/d;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/d;->f:I

    iget v2, p1, Lcom/layer/b/f/c/d;->f:I

    if-ne v1, v2, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->r()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/d;->g:I

    iget v2, p1, Lcom/layer/b/f/c/d;->g:I

    if-ne v1, v2, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->t()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-byte v1, p0, Lcom/layer/b/f/c/d;->bzH:B

    iget-byte v2, p1, Lcom/layer/b/f/c/d;->bzH:B

    if-ne v1, v2, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/d;->bCG:I

    iget v2, p1, Lcom/layer/b/f/c/d;->bCG:I

    if-ne v1, v2, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_19
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v2

    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1b
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/d;->n:J

    iget-wide v4, p1, Lcom/layer/b/f/c/d;->n:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_1d
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v2

    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1f
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v2

    if-nez v1, :cond_20

    if-eqz v2, :cond_21

    :cond_20
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_21
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_23

    :cond_22
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_23
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v2

    if-nez v1, :cond_24

    if-eqz v2, :cond_25

    :cond_24
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_25
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->K()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->K()Z

    move-result v2

    if-nez v1, :cond_26

    if-eqz v2, :cond_27

    :cond_26
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_27
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v2

    if-nez v1, :cond_28

    if-eqz v2, :cond_29

    :cond_28
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_29
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->N()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->N()Z

    move-result v2

    if-nez v1, :cond_2a

    if-eqz v2, :cond_2b

    :cond_2a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/d;->bCM:J

    iget-wide v4, p1, Lcom/layer/b/f/c/d;->bCM:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_2b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b(B)Lcom/layer/b/f/c/d;
    .locals 0

    iput-byte p1, p0, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yn()V

    return-object p0
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/d;->bCD:Ljava/util/Map;

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

    check-cast p1, Lcom/layer/b/f/c/d;

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
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/layer/b/f/c/d;->b:Z

    iget-boolean v1, p1, Lcom/layer/b/f/c/d;->b:Z

    invoke-static {v0, v1}, Lc/a/a/d;->i(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/layer/b/f/c/d;->d:I

    iget v1, p1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/layer/b/f/c/d;->e:J

    iget-wide v2, p1, Lcom/layer/b/f/c/d;->e:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/layer/b/f/c/d;->f:I

    iget v1, p1, Lcom/layer/b/f/c/d;->f:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/layer/b/f/c/d;->g:I

    iget v1, p1, Lcom/layer/b/f/c/d;->g:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->t()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-byte v0, p0, Lcom/layer/b/f/c/d;->bzH:B

    iget-byte v1, p1, Lcom/layer/b/f/c/d;->bzH:B

    invoke-static {v0, v1}, Lc/a/a/d;->a(BB)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-static {v0, v1}, Lc/a/a/d;->f(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/layer/b/f/c/d;->bCG:I

    iget v1, p1, Lcom/layer/b/f/c/d;->bCG:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/layer/b/f/c/d;->n:J

    iget-wide v2, p1, Lcom/layer/b/f/c/d;->n:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_12
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->K()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->K()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->K()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_14
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->N()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/d;->N()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->N()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lcom/layer/b/f/c/d;->bCM:J

    iget-wide v2, p1, Lcom/layer/b/f/c/d;->bCM:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final dv(I)Lcom/layer/b/f/c/d;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yg()V

    return-object p0
.end method

.method public final dw(I)Lcom/layer/b/f/c/d;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yl()V

    return-object p0
.end method

.method public final dx(I)Lcom/layer/b/f/c/d;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->ym()V

    return-object p0
.end method

.method public final dy(I)Lcom/layer/b/f/c/d;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xn()V

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
    instance-of v1, p1, Lcom/layer/b/f/c/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/c/d;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/c/d;->a(Lcom/layer/b/f/c/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    if-nez v1, :cond_14

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ephemeral:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/layer/b/f/c/d;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "creator_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    if-nez v1, :cond_15

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "server_timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "preceding_seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "client_seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->t()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "subtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    if-nez v1, :cond_16

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "member_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target_seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "transient_metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    if-nez v1, :cond_18

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "client_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_19

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "client_timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "creator_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    if-nez v1, :cond_1a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "initial_recipient_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    if-nez v1, :cond_1b

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    if-nez v1, :cond_1c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "member_id_internal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->K()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "creator_id_internal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1e

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    if-nez v1, :cond_1f

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->N()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target_position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/layer/b/f/c/d;->bCM:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_16
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_17
    iget-object v1, p0, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_18
    iget-object v1, p0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_19
    iget-object v1, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1a
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1b
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1c
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_1d
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_1e
    iget-object v1, p0, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_1f
    iget-object v1, p0, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method public final xE()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final xF()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final xG()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final xQ()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final xm()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xn()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final xp()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'type\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/f/c/d;->toString()Ljava/lang/String;

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

.method public final yg()V
    .locals 2

    const/4 v1, 0x1

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    invoke-static {v0, v1, v1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final yk()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final yl()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final ym()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final yn()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final yo()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final yp()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yq()[B
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final yr()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ys()Z
    .locals 2

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final yt()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method

.method public final yu()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yv()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yw()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yx()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yy()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yz()V
    .locals 3

    iget-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/layer/b/f/c/d;->bCN:S

    return-void
.end method
