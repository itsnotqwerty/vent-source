.class public final Lcom/layer/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/a/a/b$a;
    }
.end annotation


# instance fields
.field private final bpD:I

.field private final bpE:I

.field private final bpF:Lcom/layer/a/a/c;

.field c:J

.field private d:I

.field private final f:D

.field private final g:D

.field private final i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/layer/a/a/b$a;

    invoke-direct {v0}, Lcom/layer/a/a/b$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/layer/a/a/b;-><init>(Lcom/layer/a/a/b$a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/layer/a/a/b$a;)V
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/layer/a/a/b$a;->a:I

    iput v0, p0, Lcom/layer/a/a/b;->bpD:I

    iget-wide v4, p1, Lcom/layer/a/a/b$a;->b:D

    iput-wide v4, p0, Lcom/layer/a/a/b;->f:D

    iget-wide v4, p1, Lcom/layer/a/a/b$a;->c:D

    iput-wide v4, p0, Lcom/layer/a/a/b;->g:D

    iget v0, p1, Lcom/layer/a/a/b$a;->d:I

    iput v0, p0, Lcom/layer/a/a/b;->bpE:I

    iget v0, p1, Lcom/layer/a/a/b$a;->bpD:I

    iput v0, p0, Lcom/layer/a/a/b;->i:I

    iget-object v0, p1, Lcom/layer/a/a/b$a;->bpG:Lcom/layer/a/a/c;

    iput-object v0, p0, Lcom/layer/a/a/b;->bpF:Lcom/layer/a/a/c;

    iget v0, p0, Lcom/layer/a/a/b;->bpD:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/layer/a/a/d;->a(Z)V

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/layer/a/a/b;->f:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    iget-wide v4, p0, Lcom/layer/a/a/b;->f:D

    cmpg-double v0, v4, v8

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/layer/a/a/d;->a(Z)V

    iget-wide v4, p0, Lcom/layer/a/a/b;->g:D

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/layer/a/a/d;->a(Z)V

    iget v0, p0, Lcom/layer/a/a/b;->bpE:I

    iget v3, p0, Lcom/layer/a/a/b;->bpD:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/layer/a/a/d;->a(Z)V

    iget v0, p0, Lcom/layer/a/a/b;->i:I

    if-lez v0, :cond_4

    :goto_4
    invoke-static {v1}, Lcom/layer/a/a/d;->a(Z)V

    iget v0, p0, Lcom/layer/a/a/b;->bpD:I

    iput v0, p0, Lcom/layer/a/a/b;->d:I

    iget-object v0, p0, Lcom/layer/a/a/b;->bpF:Lcom/layer/a/a/c;

    invoke-interface {v0}, Lcom/layer/a/a/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/a/a/b;->c:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public final a()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/a/a/b;->bpF:Lcom/layer/a/a/c;

    invoke-interface {v0}, Lcom/layer/a/a/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layer/a/a/b;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget v2, p0, Lcom/layer/a/a/b;->i:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/layer/a/a/b;->f:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/layer/a/a/b;->d:I

    int-to-double v6, v4

    mul-double/2addr v0, v6

    int-to-double v6, v4

    sub-double/2addr v6, v0

    int-to-double v4, v4

    add-double/2addr v0, v4

    sub-double/2addr v0, v6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-int v0, v0

    iget v1, p0, Lcom/layer/a/a/b;->d:I

    int-to-double v2, v1

    iget v1, p0, Lcom/layer/a/a/b;->bpE:I

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/layer/a/a/b;->g:D

    div-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/layer/a/a/b;->bpE:I

    iput v1, p0, Lcom/layer/a/a/b;->d:I

    :goto_1
    int-to-long v0, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/layer/a/a/b;->d:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/layer/a/a/b;->g:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/layer/a/a/b;->d:I

    goto :goto_1
.end method
