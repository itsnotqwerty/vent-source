.class public final enum Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/lsdkc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

.field private static final synthetic d:[Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->d:[Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->d:[Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    return-object v0
.end method
