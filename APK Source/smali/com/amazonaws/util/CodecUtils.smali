.class public final enum Lcom/amazonaws/util/CodecUtils;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/CodecUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic auO:[Lcom/amazonaws/util/CodecUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/CodecUtils;

    sput-object v0, Lcom/amazonaws/util/CodecUtils;->auO:[Lcom/amazonaws/util/CodecUtils;

    return-void
.end method

.method static ar(II)V
    .locals 2

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid last non-pad character detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static av(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-char v3, v1, v0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character found at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static b(Ljava/lang/String;[B)I
    .locals 6

    const/4 v0, 0x0

    array-length v3, p1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v5, v4, v2

    const/16 v0, 0xd

    if-eq v5, v0, :cond_2

    const/16 v0, 0xa

    if-eq v5, v0, :cond_2

    const/16 v0, 0x20

    if-eq v5, v0, :cond_2

    const/16 v0, 0x7f

    if-le v5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character found at position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static j([B)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    new-array v3, v0, [C

    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    add-int/lit8 v1, v2, 0x1

    int-to-char v5, v5

    aput-char v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/CodecUtils;
    .locals 1

    const-class v0, Lcom/amazonaws/util/CodecUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/CodecUtils;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/CodecUtils;
    .locals 1

    sget-object v0, Lcom/amazonaws/util/CodecUtils;->auO:[Lcom/amazonaws/util/CodecUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/util/CodecUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/CodecUtils;

    return-object v0
.end method
