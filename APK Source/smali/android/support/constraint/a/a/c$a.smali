.class public final Landroid/support/constraint/a/a/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/a/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final fF:I

.field public static final fG:I

.field private static final synthetic fH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Landroid/support/constraint/a/a/c$a;->fF:I

    sput v0, Landroid/support/constraint/a/a/c$a;->fG:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/constraint/a/a/c$a;->fF:I

    aput v2, v0, v1

    sget v1, Landroid/support/constraint/a/a/c$a;->fG:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/constraint/a/a/c$a;->fH:[I

    return-void
.end method
