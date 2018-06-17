.class public final enum Lcom/layer/b/f/c/p$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/p$a;",
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
            "Lcom/layer/b/f/c/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum bFC:Lcom/layer/b/f/c/p$a;

.field public static final enum bFD:Lcom/layer/b/f/c/p$a;

.field public static final enum bFE:Lcom/layer/b/f/c/p$a;

.field public static final enum bFF:Lcom/layer/b/f/c/p$a;

.field public static final enum bFG:Lcom/layer/b/f/c/p$a;

.field public static final enum bFH:Lcom/layer/b/f/c/p$a;

.field public static final enum bFI:Lcom/layer/b/f/c/p$a;

.field public static final enum bFJ:Lcom/layer/b/f/c/p$a;

.field private static final synthetic bFK:[Lcom/layer/b/f/c/p$a;


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

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    const-string v3, "type"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFC:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "TARGET"

    const-string v2, "target"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFD:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "DEPRECATED_DO_NOT_USE"

    const-string v2, "deprecated_do_not_use"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFE:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "STREAM_ID"

    const-string v2, "stream_id"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFF:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "TARGET_SEQ"

    const-string v2, "target_seq"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFG:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "SEQ"

    const/4 v2, 0x6

    const-string v3, "seq"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFH:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "timestamp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFI:Lcom/layer/b/f/c/p$a;

    new-instance v0, Lcom/layer/b/f/c/p$a;

    const-string v1, "PROVIDER_USER_ID"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "provider_user_id"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/b/f/c/p$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFJ:Lcom/layer/b/f/c/p$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/layer/b/f/c/p$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFC:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFD:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFE:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFF:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFG:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layer/b/f/c/p$a;->bFH:Lcom/layer/b/f/c/p$a;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFI:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/b/f/c/p$a;->bFJ:Lcom/layer/b/f/c/p$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/b/f/c/p$a;->bFK:[Lcom/layer/b/f/c/p$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/p$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/p$a;

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

    check-cast v0, Lcom/layer/b/f/c/p$a;

    sget-object v2, Lcom/layer/b/f/c/p$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/c/p$a;->c:Ljava/lang/String;

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

    iput-short p3, p0, Lcom/layer/b/f/c/p$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/c/p$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/p$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/p$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/p$a;->bFK:[Lcom/layer/b/f/c/p$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/p$a;

    return-object v0
.end method
