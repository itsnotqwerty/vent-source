.class final enum Lio/branch/referral/r$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/branch/referral/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cBe:Lio/branch/referral/r$a;

.field public static final enum cBf:Lio/branch/referral/r$a;

.field public static final enum cBg:Lio/branch/referral/r$a;

.field public static final enum cBh:Lio/branch/referral/r$a;

.field public static final enum cBi:Lio/branch/referral/r$a;

.field private static final synthetic cBj:[Lio/branch/referral/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/branch/referral/r$a;

    const-string v1, "FB_APP_LINK_WAIT_LOCK"

    invoke-direct {v0, v1, v2}, Lio/branch/referral/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/r$a;->cBe:Lio/branch/referral/r$a;

    new-instance v0, Lio/branch/referral/r$a;

    const-string v1, "GAID_FETCH_WAIT_LOCK"

    invoke-direct {v0, v1, v3}, Lio/branch/referral/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/r$a;->cBf:Lio/branch/referral/r$a;

    new-instance v0, Lio/branch/referral/r$a;

    const-string v1, "INTENT_PENDING_WAIT_LOCK"

    invoke-direct {v0, v1, v4}, Lio/branch/referral/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/r$a;->cBg:Lio/branch/referral/r$a;

    new-instance v0, Lio/branch/referral/r$a;

    const-string v1, "STRONG_MATCH_PENDING_WAIT_LOCK"

    invoke-direct {v0, v1, v5}, Lio/branch/referral/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/r$a;->cBh:Lio/branch/referral/r$a;

    new-instance v0, Lio/branch/referral/r$a;

    const-string v1, "INSTALL_REFERRER_FETCH_WAIT_LOCK"

    invoke-direct {v0, v1, v6}, Lio/branch/referral/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/r$a;->cBi:Lio/branch/referral/r$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/branch/referral/r$a;

    sget-object v1, Lio/branch/referral/r$a;->cBe:Lio/branch/referral/r$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/branch/referral/r$a;->cBf:Lio/branch/referral/r$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/branch/referral/r$a;->cBg:Lio/branch/referral/r$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/branch/referral/r$a;->cBh:Lio/branch/referral/r$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/branch/referral/r$a;->cBi:Lio/branch/referral/r$a;

    aput-object v1, v0, v6

    sput-object v0, Lio/branch/referral/r$a;->cBj:[Lio/branch/referral/r$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/r$a;
    .locals 1

    const-class v0, Lio/branch/referral/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r$a;

    return-object v0
.end method

.method public static values()[Lio/branch/referral/r$a;
    .locals 1

    sget-object v0, Lio/branch/referral/r$a;->cBj:[Lio/branch/referral/r$a;

    invoke-virtual {v0}, [Lio/branch/referral/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/r$a;

    return-object v0
.end method
