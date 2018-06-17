.class public final Landroid/support/constraint/a/a/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/a/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final hh:I

.field public static final hi:I

.field public static final hj:I

.field public static final hk:I

.field private static final synthetic hl:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Landroid/support/constraint/a/a/d$a;->hh:I

    sput v4, Landroid/support/constraint/a/a/d$a;->hi:I

    sput v5, Landroid/support/constraint/a/a/d$a;->hj:I

    sput v0, Landroid/support/constraint/a/a/d$a;->hk:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v2, v0, v1

    sget v1, Landroid/support/constraint/a/a/d$a;->hi:I

    aput v1, v0, v3

    sget v1, Landroid/support/constraint/a/a/d$a;->hj:I

    aput v1, v0, v4

    sget v1, Landroid/support/constraint/a/a/d$a;->hk:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/constraint/a/a/d$a;->hl:[I

    return-void
.end method

.method public static aP()[I
    .locals 1

    sget-object v0, Landroid/support/constraint/a/a/d$a;->hl:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
