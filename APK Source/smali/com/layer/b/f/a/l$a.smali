.class public final enum Lcom/layer/b/f/a/l$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/a/l$a;",
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
            "Lcom/layer/b/f/a/l$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum bAa:Lcom/layer/b/f/a/l$a;

.field public static final enum bAb:Lcom/layer/b/f/a/l$a;

.field public static final enum bAc:Lcom/layer/b/f/a/l$a;

.field public static final enum bAd:Lcom/layer/b/f/a/l$a;

.field public static final enum bAe:Lcom/layer/b/f/a/l$a;

.field public static final enum bAf:Lcom/layer/b/f/a/l$a;

.field private static final synthetic bAg:[Lcom/layer/b/f/a/l$a;

.field public static final enum bzV:Lcom/layer/b/f/a/l$a;

.field public static final enum bzW:Lcom/layer/b/f/a/l$a;

.field public static final enum bzX:Lcom/layer/b/f/a/l$a;

.field public static final enum bzY:Lcom/layer/b/f/a/l$a;

.field public static final enum bzZ:Lcom/layer/b/f/a/l$a;


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

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bzV:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "IDENTITY"

    const-string v2, "identity"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bzW:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "FOLLOWERS"

    const-string v2, "followers"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bzX:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "FOLLOWEES"

    const-string v2, "followees"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bzY:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "IDENTITY_UPDATES"

    const-string v2, "identity_updates"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bzZ:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "EXTERNAL_BADGE_COUNT"

    const/4 v2, 0x6

    const-string v3, "external_badge_count"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAa:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "IDENTITIES"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "identities"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAb:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "IDENTITY_UPDATES_BATCH"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "identity_updates_batch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAc:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "PRESENCE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "presence"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAd:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "PRESENCES_WITH_INTERNAL"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "presences_with_internal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAe:Lcom/layer/b/f/a/l$a;

    new-instance v0, Lcom/layer/b/f/a/l$a;

    const-string v1, "PRESENCES"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "presences"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/a/l$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAf:Lcom/layer/b/f/a/l$a;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/layer/b/f/a/l$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/a/l$a;->bzV:Lcom/layer/b/f/a/l$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzW:Lcom/layer/b/f/a/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzX:Lcom/layer/b/f/a/l$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzY:Lcom/layer/b/f/a/l$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/a/l$a;->bzZ:Lcom/layer/b/f/a/l$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layer/b/f/a/l$a;->bAa:Lcom/layer/b/f/a/l$a;

    aput-object v1, v0, v9

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

    sput-object v0, Lcom/layer/b/f/a/l$a;->bAg:[Lcom/layer/b/f/a/l$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/l$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/l$a;

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

    check-cast v0, Lcom/layer/b/f/a/l$a;

    sget-object v2, Lcom/layer/b/f/a/l$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/a/l$a;->c:Ljava/lang/String;

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

    iput-short p3, p0, Lcom/layer/b/f/a/l$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/a/l$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/a/l$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/a/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/l$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/a/l$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/l$a;->bAg:[Lcom/layer/b/f/a/l$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/a/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/a/l$a;

    return-object v0
.end method
