.class final Lb/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private cUF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lb/k;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic cUG:Lb/k;

.field final synthetic cUH:Lb/t;

.field final synthetic cUI:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lb/k;Lb/t;Ljava/io/OutputStream;)V
    .locals 2

    iput-object p1, p0, Lb/m$1;->cUG:Lb/k;

    iput-object p2, p0, Lb/m$1;->cUH:Lb/t;

    iput-object p3, p0, Lb/m$1;->cUI:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lb/m$1;->cUG:Lb/k;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/m$1;->cUF:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lb/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    :try_start_0
    iget-wide v0, p1, Lb/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    :cond_0
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lb/m$1;->cUH:Lb/t;

    invoke-virtual {v0}, Lb/t;->g()V

    iget-object v0, p1, Lb/c;->cUy:Lb/p;

    iget v1, v0, Lb/p;->c:I

    iget v2, v0, Lb/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lb/m$1;->cUI:Ljava/io/OutputStream;

    iget-object v3, v0, Lb/p;->bIG:[B

    iget v4, v0, Lb/p;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lb/p;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lb/p;->b:I

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-wide v2, p1, Lb/c;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lb/c;->b:J

    iget v1, v0, Lb/p;->b:I

    iget v2, v0, Lb/p;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lb/p;->Lp()Lb/p;

    move-result-object v1

    iput-object v1, p1, Lb/c;->cUy:Lb/p;

    invoke-static {v0}, Lb/q;->b(Lb/p;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lb/m$1;->cUF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lb/k;->b(Ljava/io/IOException;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/m$1;->cUI:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/m$1;->cUI:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/m$1;->cUI:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lb/m$1;->cUH:Lb/t;

    return-object v0
.end method
