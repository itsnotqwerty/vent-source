.class public final enum Lcom/layer/sdk/internal/lsdki/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdki/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/lsdki/c$a;

.field public static final enum b:Lcom/layer/sdk/internal/lsdki/c$a;

.field public static final enum c:Lcom/layer/sdk/internal/lsdki/c$a;

.field private static final synthetic e:[Lcom/layer/sdk/internal/lsdki/c$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdki/c$a;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2, v2}, Lcom/layer/sdk/internal/lsdki/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/c$a;->a:Lcom/layer/sdk/internal/lsdki/c$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/c$a;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/layer/sdk/internal/lsdki/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/c$a;->b:Lcom/layer/sdk/internal/lsdki/c$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/c$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4, v4}, Lcom/layer/sdk/internal/lsdki/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/internal/lsdki/c$a;->c:Lcom/layer/sdk/internal/lsdki/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdki/c$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$a;->a:Lcom/layer/sdk/internal/lsdki/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$a;->b:Lcom/layer/sdk/internal/lsdki/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$a;->c:Lcom/layer/sdk/internal/lsdki/c$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/internal/lsdki/c$a;->e:[Lcom/layer/sdk/internal/lsdki/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/layer/sdk/internal/lsdki/c$a;->d:I

    return-void
.end method

.method public static a(I)Lcom/layer/sdk/internal/lsdki/c$a;
    .locals 5

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/c$a;->values()[Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c$a;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/c$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/c$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdki/c$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/c$a;->e:[Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdki/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdki/c$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdki/c$a;->d:I

    return v0
.end method
