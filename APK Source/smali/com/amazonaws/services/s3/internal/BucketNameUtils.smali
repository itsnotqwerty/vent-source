.class public final enum Lcom/amazonaws/services/s3/internal/BucketNameUtils;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/internal/BucketNameUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic apL:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    sput-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->apL:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-void
.end method

.method public static X(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0x2d

    const/16 v5, 0x2e

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_0

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_0

    :cond_2
    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_3

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_3
    if-ne v3, v6, :cond_5

    if-eq v2, v5, :cond_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_5
    const/16 v2, 0x30

    if-lt v3, v2, :cond_7

    const/16 v2, 0x39

    if-le v3, v2, :cond_6

    const/16 v2, 0x61

    if-lt v3, v2, :cond_7

    :cond_6
    const/16 v2, 0x7a

    if-le v3, v2, :cond_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bucket name should not contain \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    if-eq v2, v5, :cond_0

    if-eq v2, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/BucketNameUtils;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/internal/BucketNameUtils;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->apL:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-object v0
.end method
