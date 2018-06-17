.class public Lcom/layer/sdk/internal/lsdki/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/layer/sdk/internal/lsdki/b;->a:I

    iput v0, p0, Lcom/layer/sdk/internal/lsdki/b;->b:I

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/b;->c:Z

    iput v0, p0, Lcom/layer/sdk/internal/lsdki/b;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/layer/sdk/internal/lsdki/b;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/b;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/b;->c:Z

    return v0
.end method

.method public b()I
    .locals 3

    const/16 v1, 0x64

    iget v0, p0, Lcom/layer/sdk/internal/lsdki/b;->a:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/layer/sdk/internal/lsdki/b;->b:I

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Lcom/layer/sdk/internal/lsdki/b;->a:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    if-lt v0, v1, :cond_0

    const/16 v0, 0x63

    :cond_0
    iget v1, p0, Lcom/layer/sdk/internal/lsdki/b;->d:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/layer/sdk/internal/lsdki/b;->d:I

    :goto_1
    return v0

    :cond_1
    iput v0, p0, Lcom/layer/sdk/internal/lsdki/b;->d:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdki/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/layer/sdk/internal/lsdki/b;->b:I

    return-void
.end method
