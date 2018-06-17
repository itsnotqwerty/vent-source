.class public final enum Lcom/layer/sdk/internal/lsdkh/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkh/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkh/i$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkh/i$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkh/i$a;

.field private static final synthetic e:[Lcom/layer/sdk/internal/lsdkh/i$a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/i$a;

    const-string v1, "AND"

    const-string v2, "AND"

    invoke-direct {v0, v1, v3, v2}, Lcom/layer/sdk/internal/lsdkh/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/i$a;

    const-string v1, "OR"

    const-string v2, "OR"

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/sdk/internal/lsdkh/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->b:Lcom/layer/sdk/internal/lsdkh/i$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/i$a;

    const-string v1, "NOT"

    const-string v2, "NOT"

    invoke-direct {v0, v1, v5, v2}, Lcom/layer/sdk/internal/lsdkh/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->c:Lcom/layer/sdk/internal/lsdkh/i$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkh/i$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/i$a;->b:Lcom/layer/sdk/internal/lsdkh/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/i$a;->c:Lcom/layer/sdk/internal/lsdkh/i$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->e:[Lcom/layer/sdk/internal/lsdkh/i$a;

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

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkh/i$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkh/i$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkh/i$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->e:[Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkh/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkh/i$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$a;->d:Ljava/lang/String;

    return-object v0
.end method
