.class public final enum Lcom/amazonaws/services/s3/model/StorageClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/StorageClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum asP:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum asQ:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum asR:Lcom/amazonaws/services/s3/model/StorageClass;

.field private static final synthetic asT:[Lcom/amazonaws/services/s3/model/StorageClass;


# instance fields
.field private final asS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "Standard"

    const-string v2, "STANDARD"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->asP:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "ReducedRedundancy"

    const-string v2, "REDUCED_REDUNDANCY"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->asQ:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "Glacier"

    const-string v2, "GLACIER"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->asR:Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->asP:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->asQ:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->asR:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->asT:[Lcom/amazonaws/services/s3/model/StorageClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/StorageClass;->asS:Ljava/lang/String;

    return-void
.end method

.method public static am(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/amazonaws/services/s3/model/StorageClass;->values()[Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create enum from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->asT:[Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/StorageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StorageClass;->asS:Ljava/lang/String;

    return-object v0
.end method
