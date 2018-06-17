.class public final enum Lcom/layer/b/f/a/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/a/d$a;",
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
            "Lcom/layer/b/f/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum byN:Lcom/layer/b/f/a/d$a;

.field public static final enum byO:Lcom/layer/b/f/a/d$a;

.field public static final enum byP:Lcom/layer/b/f/a/d$a;

.field public static final enum byQ:Lcom/layer/b/f/a/d$a;

.field public static final enum byR:Lcom/layer/b/f/a/d$a;

.field public static final enum byS:Lcom/layer/b/f/a/d$a;

.field public static final enum byT:Lcom/layer/b/f/a/d$a;

.field private static final synthetic byU:[Lcom/layer/b/f/a/d$a;


# instance fields
.field private final bxI:S

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    const-string v3, "type"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byN:Lcom/layer/b/f/a/d$a;

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "PROVIDER_USER_ID"

    const-string v2, "provider_user_id"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byO:Lcom/layer/b/f/a/d$a;

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "PROPERTIES"

    const/4 v2, 0x2

    const-string v3, "properties"

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byP:Lcom/layer/b/f/a/d$a;

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "PROPERTIES_REMOVED"

    const-string v2, "properties_removed"

    invoke-direct {v0, v1, v5, v7, v2}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byQ:Lcom/layer/b/f/a/d$a;

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "IDENTITY"

    const-string v2, "identity"

    invoke-direct {v0, v1, v6, v8, v2}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byR:Lcom/layer/b/f/a/d$a;

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "CHANGED_AT"

    const/4 v2, 0x7

    const-string v3, "changed_at"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byS:Lcom/layer/b/f/a/d$a;

    new-instance v0, Lcom/layer/b/f/a/d$a;

    const-string v1, "USER_ID"

    const/16 v2, 0x8

    const-string v3, "user_id"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/layer/b/f/a/d$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/a/d$a;->byT:Lcom/layer/b/f/a/d$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/layer/b/f/a/d$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/a/d$a;->byN:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/a/d$a;->byO:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/layer/b/f/a/d$a;->byP:Lcom/layer/b/f/a/d$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/a/d$a;->byQ:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/a/d$a;->byR:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/a/d$a;->byS:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/a/d$a;->byT:Lcom/layer/b/f/a/d$a;

    aput-object v1, v0, v8

    sput-object v0, Lcom/layer/b/f/a/d$a;->byU:[Lcom/layer/b/f/a/d$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/a/d$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/a/d$a;

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

    check-cast v0, Lcom/layer/b/f/a/d$a;

    sget-object v2, Lcom/layer/b/f/a/d$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/a/d$a;->c:Ljava/lang/String;

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

    iput-short p3, p0, Lcom/layer/b/f/a/d$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/a/d$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/a/d$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/d$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/a/d$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/d$a;->byU:[Lcom/layer/b/f/a/d$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/a/d$a;

    return-object v0
.end method
