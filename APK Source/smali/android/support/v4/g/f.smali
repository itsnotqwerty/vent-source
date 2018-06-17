.class public final Landroid/support/v4/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final Ez:Ljava/lang/Object;


# instance fields
.field public EA:Z

.field public EB:[J

.field public EC:[Ljava/lang/Object;

.field public ai:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/g/f;->Ez:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/g/f;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/support/v4/g/f;->EA:Z

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/support/v4/g/c;->aq(I)I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/support/v4/g/f;->EB:[J

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    iput v2, p0, Landroid/support/v4/g/f;->ai:I

    return-void
.end method

.method private dI()Landroid/support/v4/g/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/f",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/support/v4/g/f;->EB:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/g/f;->EB:[J

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/g/f;->ai:I

    iget-object v3, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/support/v4/g/f;->ai:I

    iput-boolean v1, p0, Landroid/support/v4/g/f;->EA:Z

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/g/f;->dI()Landroid/support/v4/g/f;

    move-result-object v0

    return-object v0
.end method

.method public final gc()V
    .locals 10

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/g/f;->ai:I

    iget-object v4, p0, Landroid/support/v4/g/f;->EB:[J

    iget-object v5, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Landroid/support/v4/g/f;->Ez:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget-wide v8, v4, v1

    aput-wide v8, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/g/f;->EA:Z

    iput v0, p0, Landroid/support/v4/g/f;->ai:I

    return-void
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/g/f;->EB:[J

    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/g/c;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/g/f;->Ez:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final keyAt(I)J
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/g/f;->EA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/g/f;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/g/f;->EB:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final put(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/g/f;->EB:[J

    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/g/c;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/g/f;->Ez:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/g/f;->EB:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/g/f;->EA:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    iget-object v2, p0, Landroid/support/v4/g/f;->EB:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/g/f;->gc()V

    iget-object v0, p0, Landroid/support/v4/g/f;->EB:[J

    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/g/c;->a([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    iget-object v2, p0, Landroid/support/v4/g/f;->EB:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/g/c;->aq(I)I

    move-result v1

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/g/f;->EB:[J

    iget-object v4, p0, Landroid/support/v4/g/f;->EB:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v4/g/f;->EB:[J

    iput-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Landroid/support/v4/g/f;->ai:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/g/f;->EB:[J

    iget-object v2, p0, Landroid/support/v4/g/f;->EB:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/g/f;->ai:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/g/f;->ai:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Landroid/support/v4/g/f;->EB:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aput-object p3, v1, v0

    iget v0, p0, Landroid/support/v4/g/f;->ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/g/f;->ai:I

    goto/16 :goto_0
.end method

.method public final size()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/g/f;->EA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/g/f;->gc()V

    :cond_0
    iget v0, p0, Landroid/support/v4/g/f;->ai:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/g/f;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/g/f;->ai:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v4/g/f;->ai:I

    if-ge v0, v2, :cond_3

    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v4/g/f;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/support/v4/g/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/g/f;->EA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/g/f;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
