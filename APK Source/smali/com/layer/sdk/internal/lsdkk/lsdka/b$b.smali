.class public final enum Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/lsdka/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

.field private static final synthetic e:[Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->e:[Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->e:[Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    return-object v0
.end method
