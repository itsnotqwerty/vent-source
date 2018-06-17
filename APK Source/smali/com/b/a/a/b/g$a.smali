.class final Lcom/b/a/a/b/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final bKE:Lb/e;

.field bKG:B

.field bKH:S

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lb/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    return-void
.end method


# virtual methods
.method public final b(Lb/c;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const-wide/16 v0, -0x1

    const/4 v8, 0x0

    :cond_0
    iget v2, p0, Lcom/b/a/a/b/g$a;->d:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    iget-short v3, p0, Lcom/b/a/a/b/g$a;->bKH:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lb/e;->at(J)V

    iput-short v8, p0, Lcom/b/a/a/b/g$a;->bKH:S

    iget-byte v2, p0, Lcom/b/a/a/b/g$a;->bKG:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget v2, p0, Lcom/b/a/a/b/g$a;->c:I

    iget-object v3, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    invoke-static {v3}, Lcom/b/a/a/b/g;->a(Lb/e;)I

    move-result v3

    iput v3, p0, Lcom/b/a/a/b/g$a;->d:I

    iput v3, p0, Lcom/b/a/a/b/g$a;->a:I

    iget-object v3, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    invoke-interface {v3}, Lb/e;->KX()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    invoke-interface {v4}, Lb/e;->KX()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/b/a/a/b/g$a;->bKG:B

    invoke-static {}, Lcom/b/a/a/b/g;->zO()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/b/a/a/b/g;->zO()Ljava/util/logging/Logger;

    move-result-object v4

    iget v5, p0, Lcom/b/a/a/b/g$a;->c:I

    iget v6, p0, Lcom/b/a/a/b/g$a;->a:I

    iget-byte v7, p0, Lcom/b/a/a/b/g$a;->bKG:B

    invoke-static {v9, v5, v6, v3, v7}, Lcom/b/a/a/b/g$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    invoke-interface {v4}, Lb/e;->KZ()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/b/a/a/b/g$a;->c:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/b/a/a/b/g;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget v3, p0, Lcom/b/a/a/b/g$a;->c:I

    if-eq v3, v2, :cond_0

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/b/g;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v2, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    iget v3, p0, Lcom/b/a/a/b/g$a;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lb/e;->b(Lb/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/b/a/a/b/g$a;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/b/a/a/b/g$a;->d:I

    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/g$a;->bKE:Lb/e;

    invoke-interface {v0}, Lb/e;->zA()Lb/t;

    move-result-object v0

    return-object v0
.end method
