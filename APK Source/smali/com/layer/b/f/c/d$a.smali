.class public final enum Lcom/layer/b/f/c/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/b/f/c/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum bCQ:Lcom/layer/b/f/c/d$a;

.field public static final enum bCR:Lcom/layer/b/f/c/d$a;

.field public static final enum bCS:Lcom/layer/b/f/c/d$a;

.field public static final enum bCT:Lcom/layer/b/f/c/d$a;

.field public static final enum bCU:Lcom/layer/b/f/c/d$a;

.field public static final enum bCV:Lcom/layer/b/f/c/d$a;

.field public static final enum bCW:Lcom/layer/b/f/c/d$a;

.field public static final enum bCX:Lcom/layer/b/f/c/d$a;

.field public static final enum bCY:Lcom/layer/b/f/c/d$a;

.field public static final enum bCZ:Lcom/layer/b/f/c/d$a;

.field public static final enum bDa:Lcom/layer/b/f/c/d$a;

.field public static final enum bDb:Lcom/layer/b/f/c/d$a;

.field public static final enum bDc:Lcom/layer/b/f/c/d$a;

.field public static final enum bDd:Lcom/layer/b/f/c/d$a;

.field public static final enum bDe:Lcom/layer/b/f/c/d$a;

.field public static final enum bDf:Lcom/layer/b/f/c/d$a;

.field public static final enum bDg:Lcom/layer/b/f/c/d$a;

.field public static final enum bDh:Lcom/layer/b/f/c/d$a;

.field public static final enum bDi:Lcom/layer/b/f/c/d$a;

.field public static final enum bDj:Lcom/layer/b/f/c/d$a;

.field public static final enum bDk:Lcom/layer/b/f/c/d$a;

.field private static final synthetic bDl:[Lcom/layer/b/f/c/d$a;


# instance fields
.field private final bxI:S

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    const-string v3, "type"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCQ:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "EPHEMERAL"

    const-string v2, "ephemeral"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCR:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CREATOR_ID"

    const-string v2, "creator_id"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCS:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "SEQ"

    const-string v2, "seq"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCT:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "SERVER_TIMESTAMP"

    const-string v2, "server_timestamp"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCU:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "PRECEDING_SEQ"

    const/4 v2, 0x6

    const-string v3, "preceding_seq"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCV:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CLIENT_SEQ"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "client_seq"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCW:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "SUBTYPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "subtype"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCX:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CONTENT"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "content"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCY:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "MEMBER_ID"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "member_id"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bCZ:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "TARGET_SEQ"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "target_seq"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDa:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "TRANSIENT_METADATA"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "transient_metadata"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDb:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CLIENT_ID"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "client_id"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDc:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CLIENT_TIMESTAMP"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "client_timestamp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDd:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CREATOR_NAME"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "creator_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDe:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "INITIAL_RECIPIENT_STATUS"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "initial_recipient_status"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDf:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "TAGS"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "tags"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDg:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "MEMBER_ID_INTERNAL"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "member_id_internal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDh:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "CREATOR_ID_INTERNAL"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const-string v4, "creator_id_internal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDi:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "NAME"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const-string v4, "name"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDj:Lcom/layer/b/f/c/d$a;

    new-instance v0, Lcom/layer/b/f/c/d$a;

    const-string v1, "TARGET_POSITION"

    const/16 v2, 0x14

    const/16 v3, 0x15

    const-string v4, "target_position"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDk:Lcom/layer/b/f/c/d$a;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/layer/b/f/c/d$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCQ:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCR:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCS:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCT:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCU:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layer/b/f/c/d$a;->bCV:Lcom/layer/b/f/c/d$a;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCW:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCX:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCY:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/b/f/c/d$a;->bCZ:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDa:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDb:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDc:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDd:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDe:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDf:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDg:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDh:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDi:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDj:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/layer/b/f/c/d$a;->bDk:Lcom/layer/b/f/c/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/b/f/c/d$a;->bDl:[Lcom/layer/b/f/c/d$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/d$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/d$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/d$a;

    sget-object v2, Lcom/layer/b/f/c/d$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/c/d$a;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/layer/b/f/c/d$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/c/d$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/d$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/d$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/d$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/d$a;->bDl:[Lcom/layer/b/f/c/d$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/d$a;

    return-object v0
.end method
