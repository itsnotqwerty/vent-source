.class public final Lcom/google/android/gms/internal/my;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/mx",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final aZP:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final aZQ:Z

.field public final tag:I

.field private type:I


# virtual methods
.method protected final W(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/my;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/my;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/my;->type:I

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/nd;

    shl-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mv;->db(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nd;->sZ()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/nd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/Object;Lcom/google/android/gms/internal/mv;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/my;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mv;->da(I)V

    iget v0, p0, Lcom/google/android/gms/internal/my;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/my;->type:I

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/my;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    check-cast p1, Lcom/google/android/gms/internal/nd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mv;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/mv;->ay(II)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/nd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mv;->b(Lcom/google/android/gms/internal/nd;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/my;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/my;

    iget v2, p0, Lcom/google/android/gms/internal/my;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/my;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/my;->aZP:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/my;->aZP:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/my;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/my;->tag:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/my;->aZQ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/my;->aZQ:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/my;->type:I

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/my;->aZP:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/my;->tag:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/my;->aZQ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
