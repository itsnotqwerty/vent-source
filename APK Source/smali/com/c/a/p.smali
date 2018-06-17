.class public final enum Lcom/c/a/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bNQ:Lcom/c/a/p;

.field public static final enum bNR:Lcom/c/a/p;

.field private static final synthetic bNS:[Lcom/c/a/p;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/c/a/p;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v3, v2}, Lcom/c/a/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/p;->bNQ:Lcom/c/a/p;

    new-instance v0, Lcom/c/a/p;

    const-string v1, "NO_STORE"

    invoke-direct {v0, v1, v2, v4}, Lcom/c/a/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/p;->bNR:Lcom/c/a/p;

    new-array v0, v4, [Lcom/c/a/p;

    sget-object v1, Lcom/c/a/p;->bNQ:Lcom/c/a/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/p;->bNR:Lcom/c/a/p;

    aput-object v1, v0, v2

    sput-object v0, Lcom/c/a/p;->bNS:[Lcom/c/a/p;

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

    iput p3, p0, Lcom/c/a/p;->index:I

    return-void
.end method

.method public static dY(I)Z
    .locals 1

    sget-object v0, Lcom/c/a/p;->bNQ:Lcom/c/a/p;

    iget v0, v0, Lcom/c/a/p;->index:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static dZ(I)Z
    .locals 1

    sget-object v0, Lcom/c/a/p;->bNR:Lcom/c/a/p;

    iget v0, v0, Lcom/c/a/p;->index:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/p;
    .locals 1

    const-class v0, Lcom/c/a/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/p;

    return-object v0
.end method

.method public static values()[Lcom/c/a/p;
    .locals 1

    sget-object v0, Lcom/c/a/p;->bNS:[Lcom/c/a/p;

    invoke-virtual {v0}, [Lcom/c/a/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/p;

    return-object v0
.end method
