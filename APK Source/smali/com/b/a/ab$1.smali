.class final Lcom/b/a/ab$1;
.super Lcom/b/a/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic bMv:Lcom/b/a/w;

.field final synthetic bMw:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/b/a/w;I[B)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/ab$1;->bMv:Lcom/b/a/w;

    iput p2, p0, Lcom/b/a/ab$1;->b:I

    iput-object p3, p0, Lcom/b/a/ab$1;->bMw:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ab$1;->d:I

    invoke-direct {p0}, Lcom/b/a/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, Lcom/b/a/ab$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Lb/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/ab$1;->bMw:[B

    iget v1, p0, Lcom/b/a/ab$1;->d:I

    iget v2, p0, Lcom/b/a/ab$1;->b:I

    invoke-interface {p1, v0, v1, v2}, Lb/d;->f([BII)Lb/d;

    return-void
.end method

.method public final wt()Lcom/b/a/w;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ab$1;->bMv:Lcom/b/a/w;

    return-object v0
.end method
