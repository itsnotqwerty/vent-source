.class public final Lcom/google/ads/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final ayp:I

.field public static final ayq:I

.field public static final ayr:I

.field private static final synthetic ays:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/google/ads/a$b;->ayp:I

    sput v4, Lcom/google/ads/a$b;->ayq:I

    sput v0, Lcom/google/ads/a$b;->ayr:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/ads/a$b;->ayp:I

    aput v2, v0, v1

    sget v1, Lcom/google/ads/a$b;->ayq:I

    aput v1, v0, v3

    sget v1, Lcom/google/ads/a$b;->ayr:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/ads/a$b;->ays:[I

    return-void
.end method

.method public static kW()[I
    .locals 1

    sget-object v0, Lcom/google/ads/a$b;->ays:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
