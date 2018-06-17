.class final Lokhttp3/q$a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/q$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final cYS:I

.field public static final cYT:I

.field public static final cYU:I

.field public static final cYV:I

.field public static final cYW:I

.field private static final synthetic cYX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lokhttp3/q$a$a;->cYS:I

    sput v4, Lokhttp3/q$a$a;->cYT:I

    sput v5, Lokhttp3/q$a$a;->cYU:I

    sput v6, Lokhttp3/q$a$a;->cYV:I

    sput v0, Lokhttp3/q$a$a;->cYW:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lokhttp3/q$a$a;->cYS:I

    aput v2, v0, v1

    sget v1, Lokhttp3/q$a$a;->cYT:I

    aput v1, v0, v3

    sget v1, Lokhttp3/q$a$a;->cYU:I

    aput v1, v0, v4

    sget v1, Lokhttp3/q$a$a;->cYV:I

    aput v1, v0, v5

    sget v1, Lokhttp3/q$a$a;->cYW:I

    aput v1, v0, v6

    sput-object v0, Lokhttp3/q$a$a;->cYX:[I

    return-void
.end method
