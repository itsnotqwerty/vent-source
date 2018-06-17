.class public final enum Lcom/layer/sdk/internal/lsdke/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdke/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdke/f;

.field private static final synthetic c:[Lcom/layer/sdk/internal/lsdke/f;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdke/f;

    const-string v1, "IDENTITY_SEQUENCE"

    const-string v2, "identity_sequence"

    invoke-direct {v0, v1, v3, v2}, Lcom/layer/sdk/internal/lsdke/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdke/f;->a:Lcom/layer/sdk/internal/lsdke/f;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdke/f;

    sget-object v1, Lcom/layer/sdk/internal/lsdke/f;->a:Lcom/layer/sdk/internal/lsdke/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layer/sdk/internal/lsdke/f;->c:[Lcom/layer/sdk/internal/lsdke/f;

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

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdke/f;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdke/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/f;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdke/f;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/f;->c:[Lcom/layer/sdk/internal/lsdke/f;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdke/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdke/f;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/f;->b:Ljava/lang/String;

    return-object v0
.end method
