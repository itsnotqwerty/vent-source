.class public Lcom/layer/b/f/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/f/c/m$d;,
        Lcom/layer/b/f/c/m$e;,
        Lcom/layer/b/f/c/m$b;,
        Lcom/layer/b/f/c/m$c;,
        Lcom/layer/b/f/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/c",
        "<",
        "Lcom/layer/b/f/c/m;",
        "Lcom/layer/b/f/c/m$a;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/b/f/c/m;",
        ">;"
    }
.end annotation


# static fields
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

.field private static final bEG:Lc/a/a/b/m;

.field private static final bEH:Ljava/util/Map;
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

.field public static final bEU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/f/c/m$a;",
            "Lc/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final bxY:Lc/a/a/b/d;

.field private static final bxZ:Lc/a/a/b/d;

.field private static final bya:Lc/a/a/b/d;

.field private static final byb:Lc/a/a/b/d;

.field private static final byc:Lc/a/a/b/d;

.field private static final byd:Lc/a/a/b/d;

.field private static final bye:Lc/a/a/b/d;

.field private static final byf:Lc/a/a/b/d;


# instance fields
.field public bEI:Ljava/nio/ByteBuffer;

.field public bEJ:Lcom/layer/b/f/c/o;

.field public bEK:Ljava/nio/ByteBuffer;

.field public bEL:Ljava/nio/ByteBuffer;

.field public bEM:Lcom/layer/b/f/c/h;

.field public bEN:I

.field public bEO:I

.field public bEP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/b/f/c/p;",
            ">;"
        }
    .end annotation
.end field

.field public bEQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bER:Ljava/lang/String;

.field private bES:B

.field private bET:[Lcom/layer/b/f/c/m$a;

.field public byH:Ljava/util/Map;
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

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public f:J

.field public g:Ljava/util/Map;
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

.field public h:Z

.field public k:Ljava/util/Map;
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

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v4, 0xd

    const/16 v10, 0xa

    const/16 v7, 0x8

    const/16 v9, 0xb

    const/4 v8, 0x2

    new-instance v0, Lc/a/a/b/m;

    const-string v1, "Stream"

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/m;->bEG:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "stream_id"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bxY:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "type"

    invoke-direct {v0, v1, v7, v8}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bxZ:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "member_ids"

    const/16 v2, 0xe

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bya:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "seq"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->byb:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "client_id"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->byc:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "metadata_timestamp"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v10, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->byd:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "config"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bye:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "distinct"

    invoke-direct {v0, v1, v8, v7}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->byf:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "request_client_id"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCn:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "partial_sync_hints"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v10}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCo:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "initial_metadata"

    invoke-direct {v0, v1, v4, v9}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCp:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "starting_seq"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v7, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCq:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "mutation_seq"

    invoke-direct {v0, v1, v7, v4}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCr:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "created_at"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v10, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCs:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "mutations"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCt:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "tags"

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCu:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "participants_internal"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCv:Lc/a/a/b/d;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, "name"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v9, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/layer/b/f/c/m;->bCw:Lc/a/a/b/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/m;->bEH:Ljava/util/Map;

    const-class v1, Lc/a/a/c/c;

    new-instance v2, Lcom/layer/b/f/c/m$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/m$c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/b/f/c/m;->bEH:Ljava/util/Map;

    const-class v1, Lc/a/a/c/d;

    new-instance v2, Lcom/layer/b/f/c/m$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/layer/b/f/c/m$e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/layer/b/f/c/m$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEV:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "stream_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEW:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "type"

    new-instance v4, Lc/a/a/a/a;

    const-class v5, Lcom/layer/b/f/c/o;

    invoke-direct {v4, v5}, Lc/a/a/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEX:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "member_ids"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/c;

    const-string v6, "ProviderUserId"

    invoke-direct {v5, v6}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEY:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEZ:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "client_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFa:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "metadata_timestamp"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v10}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFb:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "config"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/c;

    invoke-direct {v6, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFc:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "distinct"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v8}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFd:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "request_client_id"

    new-instance v4, Lc/a/a/a/c;

    const-string v5, "UUID"

    invoke-direct {v4, v5}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFe:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "partial_sync_hints"

    new-instance v4, Lc/a/a/a/g;

    const-class v5, Lcom/layer/b/f/c/h;

    invoke-direct {v4, v5}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFf:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "initial_metadata"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/c;

    invoke-direct {v6, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFg:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "starting_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFh:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "mutation_seq"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v7}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFi:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "created_at"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v10}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFj:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "mutations"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/g;

    const-class v6, Lcom/layer/b/f/c/p;

    invoke-direct {v5, v6}, Lc/a/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFk:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "tags"

    new-instance v4, Lc/a/a/a/f;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v4, v5}, Lc/a/a/a/f;-><init>(Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFl:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "participants_internal"

    new-instance v4, Lc/a/a/a/e;

    new-instance v5, Lc/a/a/a/c;

    invoke-direct {v5, v9}, Lc/a/a/a/c;-><init>(B)V

    new-instance v6, Lc/a/a/a/c;

    const-string v7, "UUID"

    invoke-direct {v6, v7}, Lc/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lc/a/a/a/e;-><init>(Lc/a/a/a/c;Lc/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bFm:Lcom/layer/b/f/c/m$a;

    new-instance v2, Lc/a/a/a/b;

    const-string v3, "name"

    new-instance v4, Lc/a/a/a/c;

    invoke-direct {v4, v9}, Lc/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lc/a/a/a/b;-><init>(Ljava/lang/String;BLc/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/layer/b/f/c/m;->bEU:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/m;

    sget-object v1, Lcom/layer/b/f/c/m;->bEU:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/m;->bES:B

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/layer/b/f/c/m$a;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEV:Lcom/layer/b/f/c/m$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEW:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEX:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEY:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEZ:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFa:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFb:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFc:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFd:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFe:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFf:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFg:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFh:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFi:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFj:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFk:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFl:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFm:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bET:[Lcom/layer/b/f/c/m$a;

    sget-object v0, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/m;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/layer/b/f/c/m;->bES:B

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/layer/b/f/c/m$a;

    sget-object v1, Lcom/layer/b/f/c/m$a;->bEV:Lcom/layer/b/f/c/m$a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEW:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEX:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEY:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/layer/b/f/c/m$a;->bEZ:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFa:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFb:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFc:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFd:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFe:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFf:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFg:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFh:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFi:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFj:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFk:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFl:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/b/f/c/m$a;->bFm:Lcom/layer/b/f/c/m$a;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bET:[Lcom/layer/b/f/c/m$a;

    iget-byte v0, p1, Lcom/layer/b/f/c/m;->bES:B

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    :cond_3
    iget v0, p1, Lcom/layer/b/f/c/m;->d:I

    iput v0, p0, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    :cond_4
    iget-wide v0, p1, Lcom/layer/b/f/c/m;->f:J

    iput-wide v0, p0, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    :cond_5
    iget-boolean v0, p1, Lcom/layer/b/f/c/m;->h:Z

    iput-boolean v0, p0, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    :cond_6
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/layer/b/f/c/h;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-direct {v0, v1}, Lcom/layer/b/f/c/h;-><init>(Lcom/layer/b/f/c/h;)V

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :cond_7
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    :cond_8
    iget v0, p1, Lcom/layer/b/f/c/m;->bEN:I

    iput v0, p0, Lcom/layer/b/f/c/m;->bEN:I

    iget v0, p1, Lcom/layer/b/f/c/m;->bEO:I

    iput v0, p0, Lcom/layer/b/f/c/m;->bEO:I

    iget-wide v0, p1, Lcom/layer/b/f/c/m;->n:J

    iput-wide v0, p0, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->N()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p;

    new-instance v3, Lcom/layer/b/f/c/p;

    invoke-direct {v3, v0}, Lcom/layer/b/f/c/p;-><init>(Lcom/layer/b/f/c/p;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iput-object v1, p0, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    :cond_a
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->O()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    :cond_b
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, p1, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    iput-object v2, p0, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    :cond_d
    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method static synthetic yF()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bxY:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yG()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bxZ:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yH()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bya:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yI()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->byb:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yJ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->byc:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yK()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->byd:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yL()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bye:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yM()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->byf:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yN()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCn:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yO()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCo:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yP()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCp:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yQ()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCq:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yR()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCr:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yS()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCs:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yT()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCt:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yU()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCu:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yV()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCv:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic yW()Lc/a/a/b/d;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bCw:Lc/a/a/b/d;

    return-object v0
.end method

.method static synthetic zk()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/m;->bEG:Lc/a/a/b/m;

    return-object v0
.end method


# virtual methods
.method public final K()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final N()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final O(J)Lcom/layer/b/f/c/m;
    .locals 1

    iput-wide p1, p0, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yl()V

    return-object p0
.end method

.method public final O()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/m;->bEH:Ljava/util/Map;

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

.method public final aK(Z)Lcom/layer/b/f/c/m;
    .locals 0

    iput-boolean p1, p0, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zc()V

    return-object p0
.end method

.method public final b(Lc/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    sget-object v0, Lcom/layer/b/f/c/m;->bEH:Ljava/util/Map;

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

.method public final b(Lcom/layer/b/f/c/m;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->r()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->t()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/m;->d:I

    iget v2, p1, Lcom/layer/b/f/c/m;->d:I

    if-ne v1, v2, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/m;->f:J

    iget-wide v4, p1, Lcom/layer/b/f/c/m;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/layer/b/f/c/m;->h:Z

    iget-boolean v2, p1, Lcom/layer/b/f/c/m;->h:Z

    if-ne v1, v2, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v1, v2}, Lcom/layer/b/f/c/h;->a(Lcom/layer/b/f/c/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v2

    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/m;->bEN:I

    iget v2, p1, Lcom/layer/b/f/c/m;->bEN:I

    if-ne v1, v2, :cond_0

    :cond_19
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->K()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->K()Z

    move-result v2

    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/layer/b/f/c/m;->bEO:I

    iget v2, p1, Lcom/layer/b/f/c/m;->bEO:I

    if-ne v1, v2, :cond_0

    :cond_1b
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v2

    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/layer/b/f/c/m;->n:J

    iget-wide v4, p1, Lcom/layer/b/f/c/m;->n:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_1d
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->N()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->N()Z

    move-result v2

    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1f
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->O()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->O()Z

    move-result v2

    if-nez v1, :cond_20

    if-eqz v2, :cond_21

    :cond_20
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_21
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v2

    if-nez v1, :cond_22

    if-eqz v2, :cond_23

    :cond_22
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_23
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v2

    if-nez v1, :cond_24

    if-eqz v2, :cond_25

    :cond_24
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    iget-object v2, p1, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_25
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/layer/b/f/c/m;

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
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/layer/b/f/c/m;->d:I

    iget v1, p1, Lcom/layer/b/f/c/m;->d:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/layer/b/f/c/m;->f:J

    iget-wide v2, p1, Lcom/layer/b/f/c/m;->f:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/layer/b/f/c/m;->h:Z

    iget-boolean v1, p1, Lcom/layer/b/f/c/m;->h:Z

    invoke-static {v0, v1}, Lc/a/a/d;->i(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-static {v0, v1}, Lc/a/a/d;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/layer/b/f/c/m;->bEN:I

    iget v1, p1, Lcom/layer/b/f/c/m;->bEN:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->K()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->K()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->K()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/layer/b/f/c/m;->bEO:I

    iget v1, p1, Lcom/layer/b/f/c/m;->bEO:I

    invoke-static {v0, v1}, Lc/a/a/d;->aB(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/layer/b/f/c/m;->n:J

    iget-wide v2, p1, Lcom/layer/b/f/c/m;->n:J

    invoke-static {v0, v1, v2, v3}, Lc/a/a/d;->f(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->N()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->N()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->N()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->O()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->O()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-static {v0, v1}, Lc/a/a/d;->c(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-static {v0, v1}, Lc/a/a/d;->e(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_12
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/d;->W(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final dE(I)Lcom/layer/b/f/c/m;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yg()V

    return-object p0
.end method

.method public final dF(I)Lcom/layer/b/f/c/m;
    .locals 0

    iput p1, p0, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yt()V

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
    instance-of v1, p1, Lcom/layer/b/f/c/m;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/b/f/c/m;

    invoke-virtual {p0, p1}, Lcom/layer/b/f/c/m;->b(Lcom/layer/b/f/c/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Stream("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "stream_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_22

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    if-nez v0, :cond_23

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->r()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "member_ids:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-nez v0, :cond_24

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->t()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "seq:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "client_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_25

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "metadata_timestamp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "config:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    if-nez v0, :cond_26

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "distinct:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "request_client_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_27

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    :cond_10
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "partial_sync_hints:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    if-nez v0, :cond_28

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v0, v1

    :cond_12
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v0, "initial_metadata:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    if-nez v0, :cond_29

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v0, v1

    :cond_14
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v0, :cond_15

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "starting_seq:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/layer/b/f/c/m;->bEN:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_16
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->K()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v0, :cond_17

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v0, "mutation_seq:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_18
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v0, :cond_19

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v0, "created_at:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_1a
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->N()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v0, :cond_1b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v0, "mutations:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    if-nez v0, :cond_2a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v0, v1

    :cond_1c
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->O()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-nez v0, :cond_1d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v0, "tags:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    if-nez v0, :cond_2b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v0, v1

    :cond_1e
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-nez v0, :cond_1f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v0, "participants_internal:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    if-nez v0, :cond_2c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez v1, :cond_20

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v0, "name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    if-nez v0, :cond_2d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_b
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_23
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_24
    iget-object v0, p0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_25
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_26
    iget-object v0, p0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_27
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_28
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_29
    iget-object v0, p0, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_2a
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_2b
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_2c
    iget-object v0, p0, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_2d
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2e
    move v1, v0

    goto :goto_a
.end method

.method public final u([B)Lcom/layer/b/f/c/m;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final v([B)Lcom/layer/b/f/c/m;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final xG()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xm()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xp()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final yZ()[B
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final yg()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    return-void
.end method

.method public final yk()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yl()V
    .locals 2

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    invoke-static {v0, v1, v1}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    return-void
.end method

.method public final yo()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ys()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yt()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    return-void
.end method

.method public final yu()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final yw()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final za()[B
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final zb()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final zc()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    return-void
.end method

.method public final zd()[B
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lc/a/a/d;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final ze()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zf()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    return-void
.end method

.method public final zg()Z
    .locals 2

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lc/a/a/a;->aT(II)Z

    move-result v0

    return v0
.end method

.method public final zh()V
    .locals 3

    iget-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc/a/a/a;->d(IIZ)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/layer/b/f/c/m;->bES:B

    return-void
.end method

.method public final zi()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/h;->k()V

    :cond_0
    return-void
.end method
