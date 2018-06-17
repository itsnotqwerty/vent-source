.class public final Lcom/intercom/composer/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intercom/composer/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final bla:I

.field public static final blb:I

.field public static final blc:I

.field public static final bld:I

.field public static final ble:I

.field private static final synthetic blf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/intercom/composer/a/a;->bla:I

    sput v4, Lcom/intercom/composer/a/a;->blb:I

    sput v5, Lcom/intercom/composer/a/a;->blc:I

    sput v6, Lcom/intercom/composer/a/a;->bld:I

    sput v0, Lcom/intercom/composer/a/a;->ble:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/intercom/composer/a/a;->bla:I

    aput v2, v0, v1

    sget v1, Lcom/intercom/composer/a/a;->blb:I

    aput v1, v0, v3

    sget v1, Lcom/intercom/composer/a/a;->blc:I

    aput v1, v0, v4

    sget v1, Lcom/intercom/composer/a/a;->bld:I

    aput v1, v0, v5

    sget v1, Lcom/intercom/composer/a/a;->ble:I

    aput v1, v0, v6

    sput-object v0, Lcom/intercom/composer/a/a;->blf:[I

    return-void
.end method
