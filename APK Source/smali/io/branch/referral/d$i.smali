.class final Lio/branch/referral/d$i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/branch/referral/d$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final cwE:I

.field public static final cwF:I

.field private static final synthetic cwG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lio/branch/referral/d$i;->cwE:I

    sput v0, Lio/branch/referral/d$i;->cwF:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lio/branch/referral/d$i;->cwE:I

    aput v2, v0, v1

    sget v1, Lio/branch/referral/d$i;->cwF:I

    aput v1, v0, v3

    sput-object v0, Lio/branch/referral/d$i;->cwG:[I

    return-void
.end method
