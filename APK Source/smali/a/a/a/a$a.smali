.class public final La/a/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final coN:I

.field public static final coO:I

.field public static final coP:I

.field public static final coQ:I

.field private static final synthetic coR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, La/a/a/a$a;->coN:I

    sput v4, La/a/a/a$a;->coO:I

    sput v5, La/a/a/a$a;->coP:I

    sput v0, La/a/a/a$a;->coQ:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, La/a/a/a$a;->coN:I

    aput v2, v0, v1

    sget v1, La/a/a/a$a;->coO:I

    aput v1, v0, v3

    sget v1, La/a/a/a$a;->coP:I

    aput v1, v0, v4

    sget v1, La/a/a/a$a;->coQ:I

    aput v1, v0, v5

    sput-object v0, La/a/a/a$a;->coR:[I

    return-void
.end method

.method public static FH()[I
    .locals 1

    sget-object v0, La/a/a/a$a;->coR:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
