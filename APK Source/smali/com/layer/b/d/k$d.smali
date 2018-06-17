.class public final Lcom/layer/b/d/k$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/d/k$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final bxu:I

.field public static final bxv:I

.field private static final synthetic bxw:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/layer/b/d/k$d;->bxu:I

    sput v0, Lcom/layer/b/d/k$d;->bxv:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/layer/b/d/k$d;->bxu:I

    aput v2, v0, v1

    sget v1, Lcom/layer/b/d/k$d;->bxv:I

    aput v1, v0, v3

    sput-object v0, Lcom/layer/b/d/k$d;->bxw:[I

    return-void
.end method

.method public static xc()[I
    .locals 1

    sget-object v0, Lcom/layer/b/d/k$d;->bxw:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
