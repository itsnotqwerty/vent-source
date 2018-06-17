.class public final enum Lcom/layer/sdk/internal/lsdki/d$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdki/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdki/d$c;

.field public static final enum b:Lcom/layer/sdk/internal/lsdki/d$c;

.field public static final enum c:Lcom/layer/sdk/internal/lsdki/d$c;

.field public static final enum d:Lcom/layer/sdk/internal/lsdki/d$c;

.field public static final enum e:Lcom/layer/sdk/internal/lsdki/d$c;

.field public static final enum f:Lcom/layer/sdk/internal/lsdki/d$c;

.field public static final enum g:Lcom/layer/sdk/internal/lsdki/d$c;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdki/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/layer/sdk/internal/lsdki/d$c;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "EVENTS"

    const-string v2, "events"

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->a:Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "MUTATIONS"

    const-string v2, "mutations"

    invoke-direct {v0, v1, v5, v2}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->b:Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "REMOTE_KEYED_VALUES"

    const-string v2, "remote_keyed_values"

    invoke-direct {v0, v1, v6, v2}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->c:Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "STREAMS"

    const-string v2, "streams"

    invoke-direct {v0, v1, v7, v2}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->d:Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "STREAM_MEMBERS"

    const-string v2, "stream_members"

    invoke-direct {v0, v1, v8, v2}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->e:Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "IDENTITIES"

    const/4 v2, 0x5

    const-string v3, "identities"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/d$c;

    const-string v1, "PRESENCE"

    const/4 v2, 0x6

    const-string v3, "presence"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/d$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->g:Lcom/layer/sdk/internal/lsdki/d$c;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->a:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->b:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->c:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->d:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->e:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$c;->g:Lcom/layer/sdk/internal/lsdki/d$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->j:[Lcom/layer/sdk/internal/lsdki/d$c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->i:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/d$c;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/d$c;
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/d$c;->values()[Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/layer/sdk/internal/lsdki/d$c;->i:Ljava/util/Map;

    iget-object v5, v3, Lcom/layer/sdk/internal/lsdki/d$c;->h:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d$c;

    return-object v0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdki/d$c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d$c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/d$c;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d$c;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdki/d$c;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->j:[Lcom/layer/sdk/internal/lsdki/d$c;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdki/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdki/d$c;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d$c;->h:Ljava/lang/String;

    return-object v0
.end method
