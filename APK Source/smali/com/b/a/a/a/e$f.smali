.class final Lcom/b/a/a/a/e$f;
.super Lcom/b/a/a/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic bIW:Lcom/b/a/a/a/e;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/e;)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/a/e$f;->bIW:Lcom/b/a/a/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/a/e$a;-><init>(Lcom/b/a/a/a/e;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/a/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a/e$f;-><init>(Lcom/b/a/a/a/e;)V

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

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

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

    :cond_0
    iget-boolean v2, p0, Lcom/b/a/a/a/e$f;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lcom/b/a/a/a/e$f;->e:Z

    if-eqz v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v2, p0, Lcom/b/a/a/a/e$f;->bIW:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v2, p1, p2, p3}, Lb/e;->b(Lb/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/b/a/a/a/e$f;->e:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/b/a/a/a/e$f;->a(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/e$f;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/a/a/e$f;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/a/e$f;->b()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/e$f;->b:Z

    goto :goto_0
.end method
