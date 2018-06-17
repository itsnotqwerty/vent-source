.class public final enum Lcom/layer/sdk/internal/lsdkd/k$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum d:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum e:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum f:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum g:Lcom/layer/sdk/internal/lsdkd/k$a;

.field public static final enum h:Lcom/layer/sdk/internal/lsdkd/k$a;

.field private static final synthetic i:[Lcom/layer/sdk/internal/lsdkd/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "API"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "INBOUND_RECON"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->b:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "OUTBOUND_RECON"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->c:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "CACHE_RECONCILER"

    invoke-direct {v0, v1, v6}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->d:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1, v7}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "LAST_MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "READ_COUNTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->g:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    const-string v1, "SYNC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->h:Lcom/layer/sdk/internal/lsdkd/k$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/k$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->b:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->c:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->d:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->g:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->h:Lcom/layer/sdk/internal/lsdkd/k$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->i:[Lcom/layer/sdk/internal/lsdkd/k$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/k$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/k$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdkd/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->i:[Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdkd/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/k$a;

    return-object v0
.end method
