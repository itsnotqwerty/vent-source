.class public final Lcom/b/a/a/a/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lb/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic bJr:Lb/e;

.field final synthetic bJs:Lcom/b/a/a/a/b;

.field final synthetic bJt:Lb/d;

.field final synthetic bJu:Lcom/b/a/a/a/g;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/g;Lb/e;Lcom/b/a/a/a/b;Lb/d;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/g$2;->bJu:Lcom/b/a/a/a/g;

    iput-object p2, p0, Lcom/b/a/a/a/g$2;->bJr:Lb/e;

    iput-object p3, p0, Lcom/b/a/a/a/g$2;->bJs:Lcom/b/a/a/a/b;

    iput-object p4, p0, Lcom/b/a/a/a/g$2;->bJt:Lb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v3, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/a/g$2;->bJr:Lb/e;

    invoke-interface {v2, p1, p2, p3}, Lb/e;->b(Lb/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/b/a/a/a/g$2;->a:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/b/a/a/a/g$2;->a:Z

    iget-object v2, p0, Lcom/b/a/a/a/g$2;->bJt:Lb/d;

    invoke-interface {v2}, Lb/d;->close()V

    :cond_0
    move-wide v4, v0

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/b/a/a/a/g$2;->a:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/b/a/a/a/g$2;->a:Z

    :cond_1
    throw v0

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/a/g$2;->bJt:Lb/d;

    invoke-interface {v0}, Lb/d;->KU()Lb/c;

    move-result-object v1

    iget-wide v2, p1, Lb/c;->b:J

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lb/c;->a(Lb/c;JJ)Lb/c;

    iget-object v0, p0, Lcom/b/a/a/a/g$2;->bJt:Lb/d;

    invoke-interface {v0}, Lb/d;->Li()Lb/d;

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/g$2;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lcom/b/a/a/i;->a(Lb/s;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/g$2;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/g$2;->bJr:Lb/e;

    invoke-interface {v0}, Lb/e;->close()V

    return-void
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/g$2;->bJr:Lb/e;

    invoke-interface {v0}, Lb/e;->zA()Lb/t;

    move-result-object v0

    return-object v0
.end method
