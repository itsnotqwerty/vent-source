.class public final Lcom/layer/b/d/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/d/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final bwA:I

.field public static final bwB:I

.field public static final bwC:I

.field private static final synthetic bwD:[I

.field public static final bwy:I

.field public static final bwz:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/layer/b/d/g$a;->bwy:I

    sput v4, Lcom/layer/b/d/g$a;->bwz:I

    sput v5, Lcom/layer/b/d/g$a;->bwA:I

    sput v6, Lcom/layer/b/d/g$a;->bwB:I

    sput v0, Lcom/layer/b/d/g$a;->bwC:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/layer/b/d/g$a;->bwy:I

    aput v2, v0, v1

    sget v1, Lcom/layer/b/d/g$a;->bwz:I

    aput v1, v0, v3

    sget v1, Lcom/layer/b/d/g$a;->bwA:I

    aput v1, v0, v4

    sget v1, Lcom/layer/b/d/g$a;->bwB:I

    aput v1, v0, v5

    sget v1, Lcom/layer/b/d/g$a;->bwC:I

    aput v1, v0, v6

    sput-object v0, Lcom/layer/b/d/g$a;->bwD:[I

    return-void
.end method
