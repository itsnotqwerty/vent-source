.class public final enum Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

.field private static final synthetic d:[Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;


# instance fields
.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    const-string v1, "DELIVERY_RECEIPTS_ENABLED"

    const-string v2, "delivery_receipts_enabled"

    const-string v3, "1"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->d:[Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->d:[Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->c:Ljava/lang/String;

    return-object v0
.end method
