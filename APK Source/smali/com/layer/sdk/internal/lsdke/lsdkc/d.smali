.class public Lcom/layer/sdk/internal/lsdke/lsdkc/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/d;->a:[C

    return-void
.end method

.method public static a(Ljava/util/UUID;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lcom/layer/b/e/d;->d(Ljava/util/UUID;)[B

    move-result-object v1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/layer/sdk/internal/lsdke/lsdkc/d;->a:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/layer/sdk/internal/lsdke/lsdkc/d;->a:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
