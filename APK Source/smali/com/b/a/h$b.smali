.class final Lcom/b/a/h$b;
.super Lcom/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic bGi:Lcom/b/a/h;

.field private final bGj:Lcom/b/a/i;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/b/a/h;Lcom/b/a/i;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    iget-object v2, v2, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    invoke-virtual {v2}, Lcom/b/a/u;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/b/a/h$b;->bGj:Lcom/b/a/i;

    iput-boolean v3, p0, Lcom/b/a/h$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/h;Lcom/b/a/i;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/b/a/h$b;-><init>(Lcom/b/a/h;Lcom/b/a/i;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    invoke-virtual {v0}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-boolean v3, p0, Lcom/b/a/h$b;->d:Z

    invoke-virtual {v0, v3}, Lcom/b/a/h;->aL(Z)Lcom/b/a/ac;

    move-result-object v0

    iget-object v3, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-boolean v2, v3, Lcom/b/a/h;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/b/a/h$b;->bGj:Lcom/b/a/i;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/b/a/i;->a(Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v0, p0}, Lcom/b/a/r;->b(Lcom/b/a/h$b;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/b/a/h$b;->bGj:Lcom/b/a/i;

    invoke-interface {v2, v0}, Lcom/b/a/i;->e(Lcom/b/a/ac;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    sget-object v1, Lcom/b/a/a/b;->bIr:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    invoke-virtual {v4}, Lcom/b/a/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v0, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v0, p0}, Lcom/b/a/r;->b(Lcom/b/a/h$b;)V

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/b/a/h$b;->bGj:Lcom/b/a/i;

    iget-object v2, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-object v2, v2, Lcom/b/a/h;->bGg:Lcom/b/a/a/a/g;

    iget-object v2, v2, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    invoke-interface {v1, v0}, Lcom/b/a/i;->a(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-object v1, v1, Lcom/b/a/h;->bGe:Lcom/b/a/x;

    iget-object v1, v1, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v1, p0}, Lcom/b/a/r;->b(Lcom/b/a/h$b;)V

    throw v0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method final zr()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/b/a/h$b;->bGi:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->bGf:Lcom/b/a/aa;

    iget-object v0, v0, Lcom/b/a/aa;->bMq:Ljava/lang/Object;

    return-object v0
.end method
