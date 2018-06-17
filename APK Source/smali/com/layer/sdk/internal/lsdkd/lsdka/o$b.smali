.class public final enum Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

.field private static final synthetic e:[Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    const-string v1, "STREAM"

    const-string v2, "stream"

    invoke-direct {v0, v1, v3, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    const-string v1, "IDENTITY"

    const-string v2, "identity"

    invoke-direct {v0, v1, v5, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->e:[Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

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

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;
    .locals 5

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->values()[Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->e:[Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->d:Ljava/lang/String;

    return-object v0
.end method
