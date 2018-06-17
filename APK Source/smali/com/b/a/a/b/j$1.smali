.class final Lcom/b/a/a/b/j$1;
.super Lb/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b/j;-><init>(Lb/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKT:Lcom/b/a/a/b/j;


# direct methods
.method constructor <init>(Lcom/b/a/a/b/j;Lb/s;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/j$1;->bKT:Lcom/b/a/a/b/j;

    invoke-direct {p0, p2}, Lb/h;-><init>(Lb/s;)V

    return-void
.end method


# virtual methods
.method public final b(Lb/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/b/a/a/b/j$1;->bKT:Lcom/b/a/a/b/j;

    iget v2, v2, Lcom/b/a/a/b/j;->b:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/b/a/a/b/j$1;->bKT:Lcom/b/a/a/b/j;

    iget v2, v2, Lcom/b/a/a/b/j;->b:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lb/h;->b(Lb/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/j$1;->bKT:Lcom/b/a/a/b/j;

    iget v1, v0, Lcom/b/a/a/b/j;->b:I

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    iput v1, v0, Lcom/b/a/a/b/j;->b:I

    move-wide v0, v2

    goto :goto_0
.end method
