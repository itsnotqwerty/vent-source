.class public final Lcom/theartofdev/edmodo/cropper/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/theartofdev/edmodo/cropper/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final bSZ:I

.field public static final bTa:I

.field public static final bTb:I

.field public static final bTc:I

.field public static final bTd:I

.field public static final bTe:I

.field public static final bTf:I

.field public static final bTg:I

.field public static final bTh:I

.field private static final synthetic bTi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/theartofdev/edmodo/cropper/h$a;->bSZ:I

    sput v4, Lcom/theartofdev/edmodo/cropper/h$a;->bTa:I

    sput v5, Lcom/theartofdev/edmodo/cropper/h$a;->bTb:I

    sput v6, Lcom/theartofdev/edmodo/cropper/h$a;->bTc:I

    sput v7, Lcom/theartofdev/edmodo/cropper/h$a;->bTd:I

    const/4 v0, 0x6

    sput v0, Lcom/theartofdev/edmodo/cropper/h$a;->bTe:I

    const/4 v0, 0x7

    sput v0, Lcom/theartofdev/edmodo/cropper/h$a;->bTf:I

    const/16 v0, 0x8

    sput v0, Lcom/theartofdev/edmodo/cropper/h$a;->bTg:I

    const/16 v0, 0x9

    sput v0, Lcom/theartofdev/edmodo/cropper/h$a;->bTh:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/theartofdev/edmodo/cropper/h$a;->bSZ:I

    aput v2, v0, v1

    sget v1, Lcom/theartofdev/edmodo/cropper/h$a;->bTa:I

    aput v1, v0, v3

    sget v1, Lcom/theartofdev/edmodo/cropper/h$a;->bTb:I

    aput v1, v0, v4

    sget v1, Lcom/theartofdev/edmodo/cropper/h$a;->bTc:I

    aput v1, v0, v5

    sget v1, Lcom/theartofdev/edmodo/cropper/h$a;->bTd:I

    aput v1, v0, v6

    sget v1, Lcom/theartofdev/edmodo/cropper/h$a;->bTe:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lcom/theartofdev/edmodo/cropper/h$a;->bTf:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/theartofdev/edmodo/cropper/h$a;->bTg:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/theartofdev/edmodo/cropper/h$a;->bTh:I

    aput v2, v0, v1

    sput-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->bTi:[I

    return-void
.end method

.method public static AY()[I
    .locals 1

    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->bTi:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
