.class public final La/a/a/f/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/f/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final ctA:I

.field public static final ctB:I

.field private static final synthetic ctC:[I

.field public static final ctz:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, La/a/a/f/c$a;->ctz:I

    sput v4, La/a/a/f/c$a;->ctA:I

    sput v0, La/a/a/f/c$a;->ctB:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, La/a/a/f/c$a;->ctz:I

    aput v2, v0, v1

    sget v1, La/a/a/f/c$a;->ctA:I

    aput v1, v0, v3

    sget v1, La/a/a/f/c$a;->ctB:I

    aput v1, v0, v4

    sput-object v0, La/a/a/f/c$a;->ctC:[I

    return-void
.end method
