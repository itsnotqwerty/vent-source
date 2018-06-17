.class public final Lio/branch/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/branch/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final cuL:I

.field public static final cuM:I

.field private static final synthetic cuN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lio/branch/a/a$a;->cuL:I

    sput v0, Lio/branch/a/a$a;->cuM:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lio/branch/a/a$a;->cuL:I

    aput v2, v0, v1

    sget v1, Lio/branch/a/a$a;->cuM:I

    aput v1, v0, v3

    sput-object v0, Lio/branch/a/a$a;->cuN:[I

    return-void
.end method

.method public static Gp()[I
    .locals 1

    sget-object v0, Lio/branch/a/a$a;->cuN:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
