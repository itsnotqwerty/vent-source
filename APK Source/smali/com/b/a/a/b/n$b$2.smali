.class final Lcom/b/a/a/b/n$b$2;
.super Lcom/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b/n$b;->a(ZZIILjava/util/List;Lcom/b/a/a/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bLq:Lcom/b/a/a/b/p;

.field final synthetic bLz:Lcom/b/a/a/b/n$b;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/b/n$b;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/n$b$2;->bLz:Lcom/b/a/a/b/n$b;

    iput-object p4, p0, Lcom/b/a/a/b/n$b$2;->bLq:Lcom/b/a/a/b/p;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$b$2;->bLz:Lcom/b/a/a/b/n$b;

    iget-object v0, v0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->h(Lcom/b/a/a/b/n;)Lcom/b/a/a/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/n$b$2;->bLq:Lcom/b/a/a/b/p;

    invoke-interface {v0, v1}, Lcom/b/a/a/b/i;->b(Lcom/b/a/a/b/p;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/b/a/a/b;->bIr:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StreamHandler failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/a/a/b/n$b$2;->bLz:Lcom/b/a/a/b/n$b;

    iget-object v4, v4, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v4}, Lcom/b/a/a/b/n;->c(Lcom/b/a/a/b/n;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/n$b$2;->bLq:Lcom/b/a/a/b/p;

    sget-object v1, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/p;->a(Lcom/b/a/a/b/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
