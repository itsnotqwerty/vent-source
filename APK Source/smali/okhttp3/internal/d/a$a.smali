.class abstract Lokhttp3/internal/d/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ld/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected bytesRead:J

.field protected closed:Z

.field protected final dam:Ld/i;

.field final synthetic dan:Lokhttp3/internal/d/a;


# direct methods
.method private constructor <init>(Lokhttp3/internal/d/a;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/i;

    iget-object v1, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget-object v1, v1, Lokhttp3/internal/d/a;->dad:Ld/e;

    invoke-interface {v1}, Ld/e;->MK()Ld/t;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/i;-><init>(Ld/t;)V

    iput-object v0, p0, Lokhttp3/internal/d/a$a;->dam:Ld/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/d/a$a;->bytesRead:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/d/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/internal/d/a$a;-><init>(Lokhttp3/internal/d/a;)V

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dam:Ld/i;

    return-object v0
.end method

.method public a(Ld/c;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget-object v0, v0, Lokhttp3/internal/d/a;->dad:Ld/e;

    invoke-interface {v0, p1, p2, p3}, Ld/e;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/d/a$a;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/d/a$a;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/d/a$a;->endOfInput(ZLjava/io/IOException;)V

    throw v0
.end method

.method protected final endOfInput(ZLjava/io/IOException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x6

    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget v0, v0, Lokhttp3/internal/d/a;->state:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget v0, v0, Lokhttp3/internal/d/a;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget v2, v2, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dam:Ld/i;

    invoke-static {v0}, Lokhttp3/internal/d/a;->a(Ld/i;)V

    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iput v2, v0, Lokhttp3/internal/d/a;->state:I

    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget-object v0, v0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    iget-object v1, v0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lokhttp3/internal/d/a$a;->dan:Lokhttp3/internal/d/a;

    invoke-virtual {v1, v0, v2, p2}, Lokhttp3/internal/b/g;->a(ZLokhttp3/internal/c/c;Ljava/io/IOException;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
