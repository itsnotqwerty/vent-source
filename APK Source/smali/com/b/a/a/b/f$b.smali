.class final Lcom/b/a/a/b/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final bKF:Lb/c;


# direct methods
.method constructor <init>(Lb/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    return-void
.end method

.method private aC(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    or-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Lb/c;->fF(I)Lb/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    or-int/lit8 v1, p2, 0x0

    invoke-virtual {v0, v1}, Lb/c;->fF(I)Lb/c;

    sub-int v0, p1, p2

    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lb/c;->fF(I)Lb/c;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    invoke-virtual {v1, v0}, Lb/c;->fF(I)Lb/c;

    goto :goto_0
.end method

.method private b(Lb/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lb/f;->bMw:[B

    array-length v0, v0

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b/f$b;->aC(II)V

    iget-object v0, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->c(Lb/f;)Lb/c;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    invoke-virtual {v0}, Lb/f;->Lj()Lb/f;

    move-result-object v4

    invoke-static {}, Lcom/b/a/a/b/f;->zK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-direct {p0, v0, v4}, Lcom/b/a/a/b/f$b;->aC(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-direct {p0, v0}, Lcom/b/a/a/b/f$b;->b(Lb/f;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/f$b;->bKF:Lb/c;

    invoke-virtual {v0, v2}, Lb/c;->fF(I)Lb/c;

    invoke-direct {p0, v4}, Lcom/b/a/a/b/f$b;->b(Lb/f;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-direct {p0, v0}, Lcom/b/a/a/b/f$b;->b(Lb/f;)V

    goto :goto_1

    :cond_1
    return-void
.end method
