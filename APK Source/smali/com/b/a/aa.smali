.class public final Lcom/b/a/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/aa$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field final bMn:Lcom/b/a/u;

.field public final bMo:Lcom/b/a/t;

.field public final bMp:Lcom/b/a/ab;

.field final bMq:Ljava/lang/Object;

.field public final bMr:Lcom/b/a/z;

.field private volatile bMs:Ljava/net/URI;

.field private volatile bMt:Lcom/b/a/g;

.field private volatile bue:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/b/a/aa$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/aa$a;->bMn:Lcom/b/a/u;

    iput-object v0, p0, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    iget-object v0, p1, Lcom/b/a/aa$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/aa;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/aa$a;->bMu:Lcom/b/a/t$a;

    invoke-virtual {v0}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    iget-object v0, p1, Lcom/b/a/aa$a;->bMp:Lcom/b/a/ab;

    iput-object v0, p0, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    iget-object v0, p1, Lcom/b/a/aa$a;->bMq:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/b/a/aa$a;->bMq:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/b/a/aa;->bMq:Ljava/lang/Object;

    iget-object v0, p1, Lcom/b/a/aa$a;->bMr:Lcom/b/a/z;

    iput-object v0, p0, Lcom/b/a/aa;->bMr:Lcom/b/a/z;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/b/a/aa$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/aa;-><init>(Lcom/b/a/aa$a;)V

    return-void
.end method


# virtual methods
.method public final Ad()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/b/a/aa;->bMs:Ljava/net/URI;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    invoke-virtual {v0}, Lcom/b/a/u;->Ad()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aa;->bMs:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final Ak()Lcom/b/a/aa$a;
    .locals 2

    new-instance v0, Lcom/b/a/aa$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/aa$a;-><init>(Lcom/b/a/aa;B)V

    return-object v0
.end method

.method public final Al()Lcom/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aa;->bMt:Lcom/b/a/g;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    invoke-static {v0}, Lcom/b/a/g;->b(Lcom/b/a/t;)Lcom/b/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aa;->bMt:Lcom/b/a/g;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    invoke-virtual {v0, p1}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    iget-object v0, v0, Lcom/b/a/u;->b:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/aa;->bMq:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/b/a/aa;->bMq:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final wC()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aa;->bue:Ljava/net/URL;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    invoke-virtual {v0}, Lcom/b/a/u;->wC()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aa;->bue:Ljava/net/URL;

    goto :goto_0
.end method
