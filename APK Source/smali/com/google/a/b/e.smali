.class public final Lcom/google/a/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final bhu:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/b/e;->dm(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lcom/google/a/b/e;->dn(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x6

    :cond_1
    sput v0, Lcom/google/a/b/e;->bhu:I

    return-void
.end method

.method private static dm(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "[._]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    array-length v2, v1

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static dn(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static vr()I
    .locals 1

    sget v0, Lcom/google/a/b/e;->bhu:I

    return v0
.end method

.method public static vs()Z
    .locals 2

    sget v0, Lcom/google/a/b/e;->bhu:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
