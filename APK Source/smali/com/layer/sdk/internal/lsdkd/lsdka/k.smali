.class public final Lcom/layer/sdk/internal/lsdkd/lsdka/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
    }
.end annotation


# direct methods
.method public static a(J)I
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/layer/b/d/c;)J
    .locals 2

    iget v0, p0, Lcom/layer/b/f/c/d;->d:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    iget v1, p0, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    iget v1, p0, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->c(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/layer/b/f/c/d;->d:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static a()Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;-><init>()V

    return-object v0
.end method

.method public static b(J)I
    .locals 4

    const/4 v0, 0x0

    shr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
