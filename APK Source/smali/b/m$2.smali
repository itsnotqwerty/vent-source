.class final Lb/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Lb/s;


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

.field final synthetic cUJ:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lb/k;Lb/t;Ljava/io/InputStream;)V
    .locals 2

    iput-object p1, p0, Lb/m$2;->cUG:Lb/k;

    iput-object p2, p0, Lb/m$2;->cUH:Lb/t;

    iput-object p3, p0, Lb/m$2;->cUJ:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lb/m$2;->cUG:Lb/k;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/m$2;->cUF:Ljava/lang/ref/WeakReference;

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

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lb/m$2;->cUF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lb/k;->b(Ljava/io/IOException;)V

    :cond_0
    throw v1

    :cond_1
    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lb/m$2;->cUH:Lb/t;

    invoke-virtual {v0}, Lb/t;->g()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb/c;->fI(I)Lb/p;

    move-result-object v0

    iget v1, v0, Lb/p;->c:I

    rsub-int v1, v1, 0x800

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lb/m$2;->cUJ:Ljava/io/InputStream;

    iget-object v3, v0, Lb/p;->bIG:[B

    iget v4, v0, Lb/p;->c:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_3
    iget v2, v0, Lb/p;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lb/p;->c:I

    iget-wide v2, p1, Lb/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lb/c;->b:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v0, v1

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/m$2;->cUJ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/m$2;->cUJ:Ljava/io/InputStream;

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

    iget-object v0, p0, Lb/m$2;->cUH:Lb/t;

    return-object v0
.end method
