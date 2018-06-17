.class public final enum Lcom/layer/b/f/c/l$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/l$a;",
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
            "Lcom/layer/b/f/c/l$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum bEA:Lcom/layer/b/f/c/l$a;

.field public static final enum bEB:Lcom/layer/b/f/c/l$a;

.field public static final enum bEC:Lcom/layer/b/f/c/l$a;

.field public static final enum bED:Lcom/layer/b/f/c/l$a;

.field public static final enum bEE:Lcom/layer/b/f/c/l$a;

.field private static final synthetic bEF:[Lcom/layer/b/f/c/l$a;

.field public static final enum bEt:Lcom/layer/b/f/c/l$a;

.field public static final enum bEu:Lcom/layer/b/f/c/l$a;

.field public static final enum bEv:Lcom/layer/b/f/c/l$a;

.field public static final enum bEw:Lcom/layer/b/f/c/l$a;

.field public static final enum bEx:Lcom/layer/b/f/c/l$a;

.field public static final enum bEy:Lcom/layer/b/f/c/l$a;

.field public static final enum bEz:Lcom/layer/b/f/c/l$a;


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

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEt:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEu:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "STREAM"

    const-string v2, "stream"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEv:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "STREAMS"

    const-string v2, "streams"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEw:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "STREAM_METADATA"

    const-string v2, "stream_metadata"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEx:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "CONTENT"

    const/4 v2, 0x6

    const-string v3, "content"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEy:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "MUTATION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "mutation"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEz:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "MUTATIONS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "mutations"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEA:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "IDS"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "ids"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEB:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "EVENTS"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "events"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEC:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "TAGS"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "tags"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bED:Lcom/layer/b/f/c/l$a;

    new-instance v0, Lcom/layer/b/f/c/l$a;

    const-string v1, "PAGING_KEY"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "paging_key"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEE:Lcom/layer/b/f/c/l$a;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/layer/b/f/c/l$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/c/l$a;->bEt:Lcom/layer/b/f/c/l$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEu:Lcom/layer/b/f/c/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEv:Lcom/layer/b/f/c/l$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEw:Lcom/layer/b/f/c/l$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEx:Lcom/layer/b/f/c/l$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layer/b/f/c/l$a;->bEy:Lcom/layer/b/f/c/l$a;

    aput-object v1, v0, v9

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

    sput-object v0, Lcom/layer/b/f/c/l$a;->bEF:[Lcom/layer/b/f/c/l$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/l$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/l$a;

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

    check-cast v0, Lcom/layer/b/f/c/l$a;

    sget-object v2, Lcom/layer/b/f/c/l$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/c/l$a;->c:Ljava/lang/String;

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

    iput-short p3, p0, Lcom/layer/b/f/c/l$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/c/l$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/l$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/l$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/l$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/l$a;->bEF:[Lcom/layer/b/f/c/l$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/l$a;

    return-object v0
.end method
