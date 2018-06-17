.class final Lcom/b/a/a/a/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/r;->c(Lcom/b/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bIK:Lcom/b/a/aa;

.field final synthetic bJP:Lcom/b/a/z;

.field final synthetic bJQ:Lcom/b/a/a/a/r;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/r;Lcom/b/a/aa;Lcom/b/a/z;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/r$1;->bJQ:Lcom/b/a/a/a/r;

    iput-object p2, p0, Lcom/b/a/a/a/r$1;->bIK:Lcom/b/a/aa;

    iput-object p3, p0, Lcom/b/a/a/a/r$1;->bJP:Lcom/b/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/b/a/a/b/p;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a/r$1;->bIK:Lcom/b/a/aa;

    iget-object v1, p1, Lcom/b/a/a/b/p;->bzS:Ljava/util/List;

    iget-object v2, p0, Lcom/b/a/a/a/r$1;->bJQ:Lcom/b/a/a/a/r;

    invoke-static {v2}, Lcom/b/a/a/a/r;->a(Lcom/b/a/a/a/r;)Lcom/b/a/a/b/n;

    move-result-object v2

    iget-object v2, v2, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    invoke-static {v0, v1, v2}, Lcom/b/a/a/a/r;->a(Lcom/b/a/aa;Ljava/util/List;Lcom/b/a/y;)Lcom/b/a/ac$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    iget-object v2, p0, Lcom/b/a/a/a/r$1;->bJQ:Lcom/b/a/a/a/r;

    invoke-static {v2}, Lcom/b/a/a/a/r;->b(Lcom/b/a/a/a/r;)Lcom/b/a/a/a/g;

    move-result-object v2

    iget-boolean v2, v2, Lcom/b/a/a/a/g;->brj:Z

    if-eqz v2, :cond_0

    const-string v2, "gzip"

    iget-object v3, v1, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lb/j;

    invoke-direct {v2, v0}, Lb/j;-><init>(Lb/s;)V

    invoke-static {v2}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lcom/b/a/ac;->Aq()Lcom/b/a/ac$a;

    move-result-object v1

    new-instance v2, Lcom/b/a/ac$a$a;

    invoke-direct {v2, v1, v0}, Lcom/b/a/ac$a$a;-><init>(Lcom/b/a/ac$a;Lb/e;)V

    iput-object v2, v1, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    invoke-virtual {v1}, Lcom/b/a/ac$a;->xb()Lcom/b/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/r$1;->bJP:Lcom/b/a/z;

    invoke-interface {v1, v0}, Lcom/b/a/z;->a(Lcom/b/a/ac;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lb/m;->b(Lb/s;)Lb/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method
