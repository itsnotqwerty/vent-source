.class public final Landroid/support/constraint/a/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/a/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final fl:I

.field public static final fm:I

.field public static final fn:I

.field public static final fo:I

.field public static final fp:I

.field private static final synthetic fq:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Landroid/support/constraint/a/h$a;->fl:I

    sput v4, Landroid/support/constraint/a/h$a;->fm:I

    sput v5, Landroid/support/constraint/a/h$a;->fn:I

    sput v6, Landroid/support/constraint/a/h$a;->fo:I

    sput v0, Landroid/support/constraint/a/h$a;->fp:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/constraint/a/h$a;->fl:I

    aput v2, v0, v1

    sget v1, Landroid/support/constraint/a/h$a;->fm:I

    aput v1, v0, v3

    sget v1, Landroid/support/constraint/a/h$a;->fn:I

    aput v1, v0, v4

    sget v1, Landroid/support/constraint/a/h$a;->fo:I

    aput v1, v0, v5

    sget v1, Landroid/support/constraint/a/h$a;->fp:I

    aput v1, v0, v6

    sput-object v0, Landroid/support/constraint/a/h$a;->fq:[I

    return-void
.end method
