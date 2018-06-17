.class Lcom/amazonaws/util/Base64Codec$LazyHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/Base64Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final auL:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x7a

    const/16 v0, 0x7b

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v3, :cond_5

    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x13

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_4

    if-gt v0, v3, :cond_4

    add-int/lit8 v2, v0, -0x47

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_5
    sput-object v1, Lcom/amazonaws/util/Base64Codec$LazyHolder;->auL:[B

    return-void
.end method

.method static synthetic ke()[B
    .locals 1

    sget-object v0, Lcom/amazonaws/util/Base64Codec$LazyHolder;->auL:[B

    return-object v0
.end method
