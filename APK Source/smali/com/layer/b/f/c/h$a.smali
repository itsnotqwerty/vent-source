.class public final enum Lcom/layer/b/f/c/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/h$a;",
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
            "Lcom/layer/b/f/c/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum bDO:Lcom/layer/b/f/c/h$a;

.field public static final enum bDP:Lcom/layer/b/f/c/h$a;

.field public static final enum bDQ:Lcom/layer/b/f/c/h$a;

.field public static final enum bDR:Lcom/layer/b/f/c/h$a;

.field public static final enum bDS:Lcom/layer/b/f/c/h$a;

.field private static final synthetic bDT:[Lcom/layer/b/f/c/h$a;


# instance fields
.field private final bxI:S

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/layer/b/f/c/h$a;

    const-string v1, "TOTAL_MESSAGE_COUNT"

    const-string v2, "total_message_count"

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/layer/b/f/c/h$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/h$a;->bDO:Lcom/layer/b/f/c/h$a;

    new-instance v0, Lcom/layer/b/f/c/h$a;

    const-string v1, "UNREAD_MESSAGE_COUNT"

    const-string v2, "unread_message_count"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/layer/b/f/c/h$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/h$a;->bDP:Lcom/layer/b/f/c/h$a;

    new-instance v0, Lcom/layer/b/f/c/h$a;

    const-string v1, "OLDEST_UNREAD_MESSAGE_SEQ"

    const-string v2, "oldest_unread_message_seq"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/layer/b/f/c/h$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/h$a;->bDQ:Lcom/layer/b/f/c/h$a;

    new-instance v0, Lcom/layer/b/f/c/h$a;

    const-string v1, "LAST_MESSAGE_RECEIVED_AT"

    const-string v2, "last_message_received_at"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/layer/b/f/c/h$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/h$a;->bDR:Lcom/layer/b/f/c/h$a;

    new-instance v0, Lcom/layer/b/f/c/h$a;

    const-string v1, "LAST_MESSAGE_SEQ"

    const/4 v2, 0x5

    const-string v3, "last_message_seq"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/layer/b/f/c/h$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/h$a;->bDS:Lcom/layer/b/f/c/h$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/f/c/h$a;

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDO:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDP:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDQ:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDR:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/c/h$a;->bDS:Lcom/layer/b/f/c/h$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/layer/b/f/c/h$a;->bDT:[Lcom/layer/b/f/c/h$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/b/f/c/h$a;->a:Ljava/util/Map;

    const-class v0, Lcom/layer/b/f/c/h$a;

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

    check-cast v0, Lcom/layer/b/f/c/h$a;

    sget-object v2, Lcom/layer/b/f/c/h$a;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/layer/b/f/c/h$a;->c:Ljava/lang/String;

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

    iput-short p3, p0, Lcom/layer/b/f/c/h$a;->bxI:S

    iput-object p4, p0, Lcom/layer/b/f/c/h$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/h$a;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/h$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/h$a;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/h$a;->bDT:[Lcom/layer/b/f/c/h$a;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/h$a;

    return-object v0
.end method
