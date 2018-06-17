.class final Lio/branch/referral/d$k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/branch/referral/d$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final cwH:I

.field public static final cwI:I

.field public static final cwJ:I

.field private static final synthetic cwK:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lio/branch/referral/d$k;->cwH:I

    sput v4, Lio/branch/referral/d$k;->cwI:I

    sput v0, Lio/branch/referral/d$k;->cwJ:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lio/branch/referral/d$k;->cwH:I

    aput v2, v0, v1

    sget v1, Lio/branch/referral/d$k;->cwI:I

    aput v1, v0, v3

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    aput v1, v0, v4

    sput-object v0, Lio/branch/referral/d$k;->cwK:[I

    return-void
.end method
