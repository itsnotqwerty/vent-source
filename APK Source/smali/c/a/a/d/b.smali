.class public final Lc/a/a/d/b;
.super Lc/a/a/d/c;


# instance fields
.field public b:I

.field public bIG:[B

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final LT()[B
    .locals 1

    iget-object v0, p0, Lc/a/a/d/b;->bIG:[B

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lc/a/a/d/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/a/a/d/b;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lc/a/a/d/b;->b:I

    return v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lc/a/a/d/b;->c:I

    iget v1, p0, Lc/a/a/d/b;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/d/d;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/d/b;->d()I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lc/a/a/d/b;->bIG:[B

    iget v1, p0, Lc/a/a/d/b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lc/a/a/d/b;->a(I)V

    :cond_1
    return p3
.end method

.method public final h([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/d/d;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No writing allowed!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
