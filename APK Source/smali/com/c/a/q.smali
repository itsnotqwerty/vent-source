.class public final enum Lcom/c/a/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bNT:Lcom/c/a/q;

.field public static final enum bNU:Lcom/c/a/q;

.field public static final enum bNV:Lcom/c/a/q;

.field private static final synthetic bNW:[Lcom/c/a/q;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/c/a/q;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v5, v3}, Lcom/c/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/q;->bNT:Lcom/c/a/q;

    new-instance v0, Lcom/c/a/q;

    const-string v1, "NO_STORE"

    invoke-direct {v0, v1, v3, v4}, Lcom/c/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/q;->bNU:Lcom/c/a/q;

    new-instance v0, Lcom/c/a/q;

    const-string v1, "OFFLINE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/c/a/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/q;->bNV:Lcom/c/a/q;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/a/q;

    sget-object v1, Lcom/c/a/q;->bNT:Lcom/c/a/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/a/q;->bNU:Lcom/c/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/q;->bNV:Lcom/c/a/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/c/a/q;->bNW:[Lcom/c/a/q;

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

    iput p3, p0, Lcom/c/a/q;->index:I

    return-void
.end method

.method public static ea(I)Z
    .locals 1

    sget-object v0, Lcom/c/a/q;->bNT:Lcom/c/a/q;

    iget v0, v0, Lcom/c/a/q;->index:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eb(I)Z
    .locals 1

    sget-object v0, Lcom/c/a/q;->bNU:Lcom/c/a/q;

    iget v0, v0, Lcom/c/a/q;->index:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ec(I)Z
    .locals 1

    sget-object v0, Lcom/c/a/q;->bNV:Lcom/c/a/q;

    iget v0, v0, Lcom/c/a/q;->index:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/q;
    .locals 1

    const-class v0, Lcom/c/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/q;

    return-object v0
.end method

.method public static values()[Lcom/c/a/q;
    .locals 1

    sget-object v0, Lcom/c/a/q;->bNW:[Lcom/c/a/q;

    invoke-virtual {v0}, [Lcom/c/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/q;

    return-object v0
.end method
