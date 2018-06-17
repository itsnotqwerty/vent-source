.class public final Landroid/support/constraint/a/a/c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/a/a/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final fI:I

.field public static final fJ:I

.field public static final fK:I

.field private static final synthetic fL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Landroid/support/constraint/a/a/c$b;->fI:I

    sput v4, Landroid/support/constraint/a/a/c$b;->fJ:I

    sput v0, Landroid/support/constraint/a/a/c$b;->fK:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/constraint/a/a/c$b;->fI:I

    aput v2, v0, v1

    sget v1, Landroid/support/constraint/a/a/c$b;->fJ:I

    aput v1, v0, v3

    sget v1, Landroid/support/constraint/a/a/c$b;->fK:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/constraint/a/a/c$b;->fL:[I

    return-void
.end method
