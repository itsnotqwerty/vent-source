.class final Ld/o;
.super Ljava/lang/Object;


# instance fields
.field cUm:Z

.field cUn:Z

.field final data:[B

.field dcl:Ld/o;

.field dcm:Ld/o;

.field limit:I

.field pos:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ld/o;->data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/o;->cUn:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/o;->cUm:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o;->data:[B

    iput p2, p0, Ld/o;->pos:I

    iput p3, p0, Ld/o;->limit:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/o;->cUm:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/o;->cUn:Z

    return-void
.end method


# virtual methods
.method final Ns()Ld/o;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/o;->cUm:Z

    new-instance v0, Ld/o;

    iget-object v1, p0, Ld/o;->data:[B

    iget v2, p0, Ld/o;->pos:I

    iget v3, p0, Ld/o;->limit:I

    invoke-direct {v0, v1, v2, v3}, Ld/o;-><init>([BII)V

    return-object v0
.end method

.method public final Nt()Ld/o;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ld/o;->dcl:Ld/o;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Ld/o;->dcl:Ld/o;

    :goto_0
    iget-object v2, p0, Ld/o;->dcm:Ld/o;

    iget-object v3, p0, Ld/o;->dcl:Ld/o;

    iput-object v3, v2, Ld/o;->dcl:Ld/o;

    iget-object v2, p0, Ld/o;->dcl:Ld/o;

    iget-object v3, p0, Ld/o;->dcm:Ld/o;

    iput-object v3, v2, Ld/o;->dcm:Ld/o;

    iput-object v1, p0, Ld/o;->dcl:Ld/o;

    iput-object v1, p0, Ld/o;->dcm:Ld/o;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ld/o;)Ld/o;
    .locals 1

    iput-object p0, p1, Ld/o;->dcm:Ld/o;

    iget-object v0, p0, Ld/o;->dcl:Ld/o;

    iput-object v0, p1, Ld/o;->dcl:Ld/o;

    iget-object v0, p0, Ld/o;->dcl:Ld/o;

    iput-object p1, v0, Ld/o;->dcm:Ld/o;

    iput-object p1, p0, Ld/o;->dcl:Ld/o;

    return-object p1
.end method

.method public final a(Ld/o;I)V
    .locals 6

    const/16 v2, 0x2000

    const/4 v5, 0x0

    iget-boolean v0, p1, Ld/o;->cUn:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p1, Ld/o;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    iget-boolean v0, p1, Ld/o;->cUm:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p1, Ld/o;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Ld/o;->pos:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p1, Ld/o;->data:[B

    iget v1, p1, Ld/o;->pos:I

    iget-object v2, p1, Ld/o;->data:[B

    iget v3, p1, Ld/o;->limit:I

    iget v4, p1, Ld/o;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ld/o;->limit:I

    iget v1, p1, Ld/o;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Ld/o;->limit:I

    iput v5, p1, Ld/o;->pos:I

    :cond_3
    iget-object v0, p0, Ld/o;->data:[B

    iget v1, p0, Ld/o;->pos:I

    iget-object v2, p1, Ld/o;->data:[B

    iget v3, p1, Ld/o;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ld/o;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Ld/o;->limit:I

    iget v0, p0, Ld/o;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Ld/o;->pos:I

    return-void
.end method
