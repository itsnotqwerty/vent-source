.class final Lb/p;
.super Ljava/lang/Object;


# instance fields
.field b:I

.field final bIG:[B

.field c:I

.field cUP:Lb/p;

.field cUQ:Lb/p;

.field d:Z

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lb/p;->bIG:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/p;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/p;->d:Z

    return-void
.end method

.method constructor <init>(Lb/p;)V
    .locals 3

    iget-object v0, p1, Lb/p;->bIG:[B

    iget v1, p1, Lb/p;->b:I

    iget v2, p1, Lb/p;->c:I

    invoke-direct {p0, v0, v1, v2}, Lb/p;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/p;->d:Z

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/p;->bIG:[B

    iput p2, p0, Lb/p;->b:I

    iput p3, p0, Lb/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/p;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/p;->d:Z

    return-void
.end method


# virtual methods
.method public final Lp()Lb/p;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lb/p;->cUP:Lb/p;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lb/p;->cUP:Lb/p;

    :goto_0
    iget-object v2, p0, Lb/p;->cUQ:Lb/p;

    iget-object v3, p0, Lb/p;->cUP:Lb/p;

    iput-object v3, v2, Lb/p;->cUP:Lb/p;

    iget-object v2, p0, Lb/p;->cUP:Lb/p;

    iget-object v3, p0, Lb/p;->cUQ:Lb/p;

    iput-object v3, v2, Lb/p;->cUQ:Lb/p;

    iput-object v1, p0, Lb/p;->cUP:Lb/p;

    iput-object v1, p0, Lb/p;->cUQ:Lb/p;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lb/p;)Lb/p;
    .locals 1

    iput-object p0, p1, Lb/p;->cUQ:Lb/p;

    iget-object v0, p0, Lb/p;->cUP:Lb/p;

    iput-object v0, p1, Lb/p;->cUP:Lb/p;

    iget-object v0, p0, Lb/p;->cUP:Lb/p;

    iput-object p1, v0, Lb/p;->cUQ:Lb/p;

    iput-object p1, p0, Lb/p;->cUP:Lb/p;

    return-object p1
.end method

.method public final a(Lb/p;I)V
    .locals 6

    const/16 v2, 0x800

    const/4 v5, 0x0

    iget-boolean v0, p1, Lb/p;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p1, Lb/p;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    iget-boolean v0, p1, Lb/p;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p1, Lb/p;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lb/p;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p1, Lb/p;->bIG:[B

    iget v1, p1, Lb/p;->b:I

    iget-object v2, p1, Lb/p;->bIG:[B

    iget v3, p1, Lb/p;->c:I

    iget v4, p1, Lb/p;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lb/p;->c:I

    iget v1, p1, Lb/p;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lb/p;->c:I

    iput v5, p1, Lb/p;->b:I

    :cond_3
    iget-object v0, p0, Lb/p;->bIG:[B

    iget v1, p0, Lb/p;->b:I

    iget-object v2, p1, Lb/p;->bIG:[B

    iget v3, p1, Lb/p;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lb/p;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lb/p;->c:I

    iget v0, p0, Lb/p;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lb/p;->b:I

    return-void
.end method
