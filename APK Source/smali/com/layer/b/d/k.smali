.class public Lcom/layer/b/d/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/b/d/k$b;,
        Lcom/layer/b/d/k$c;,
        Lcom/layer/b/d/k$a;,
        Lcom/layer/b/d/k$f;,
        Lcom/layer/b/d/k$e;,
        Lcom/layer/b/d/k$d;
    }
.end annotation


# static fields
.field private static final bxl:Ljava/util/regex/Pattern;

.field private static final bxm:Ljava/util/regex/Pattern;


# instance fields
.field private final bpP:Lcom/layer/b/b/a;

.field private final bxa:Lcom/layer/b/d/a;

.field final bxb:Lcom/layer/b/a/a;

.field private final bxc:I

.field protected bxd:Lcom/layer/b/c/b;

.field private bxe:Lcom/b/a/n;

.field private bxf:Lcom/b/a/z;

.field private bxg:Lcom/layer/b/d/e;

.field public bxh:Z

.field private bxi:Lcom/b/a/h;

.field private bxj:Ljava/util/concurrent/CountDownLatch;

.field private final bxk:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/streams/(.+)/events.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/layer/b/d/k;->bxl:Ljava/util/regex/Pattern;

    const-string v0, "/presence/(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/layer/b/d/k;->bxm:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/a;Lcom/layer/b/b/a;Lcom/layer/b/a/a;ILjava/util/concurrent/ExecutorService;Lcom/layer/b/d/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/b/d/k;->bxa:Lcom/layer/b/d/a;

    iput-object p2, p0, Lcom/layer/b/d/k;->bpP:Lcom/layer/b/b/a;

    const/16 v0, 0x64

    iput v0, p0, Lcom/layer/b/d/k;->bxk:I

    new-instance v0, Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k;->bxa:Lcom/layer/b/d/a;

    iget v2, p0, Lcom/layer/b/d/k;->bxk:I

    invoke-direct {v0, v1, v2, p5, p3}, Lcom/layer/b/c/b;-><init>(Lcom/layer/b/d/a;ILjava/util/concurrent/ExecutorService;Lcom/layer/b/c/a;)V

    iget-object v1, p0, Lcom/layer/b/d/k;->bxe:Lcom/b/a/n;

    invoke-virtual {v0, v1}, Lcom/layer/b/c/b;->a(Lcom/b/a/n;)V

    iput-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iput-object p3, p0, Lcom/layer/b/d/k;->bxb:Lcom/layer/b/a/a;

    iput p4, p0, Lcom/layer/b/d/k;->bxc:I

    sget-object v0, Lcom/layer/b/d/k$16;->bqe:[I

    iget v1, p0, Lcom/layer/b/d/k;->bxc:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown serialization format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "json"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application/vnd.layer.messaging+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";version=10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/d/k;->f:Ljava/lang/String;

    sget-object v0, Lcom/layer/b/d/k$16;->bqe:[I

    iget v1, p0, Lcom/layer/b/d/k;->bxc:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown serialization format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "thrift"

    goto :goto_0

    :pswitch_2
    const-string v0, "json"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application/vnd.layer.policy+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";version=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/d/k;->g:Ljava/lang/String;

    sget-object v0, Lcom/layer/b/d/k$16;->bqe:[I

    iget v1, p0, Lcom/layer/b/d/k;->bxc:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown serialization format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const-string v0, "thrift"

    goto :goto_1

    :pswitch_4
    const-string v0, "json"

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application/vnd.layer.identity+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";version=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/d/k;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/b/d/k;->bxh:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    iput-object p6, p0, Lcom/layer/b/d/k;->bxg:Lcom/layer/b/d/e;

    new-instance v0, Lcom/layer/b/d/k$1;

    invoke-direct {v0, p0, p6}, Lcom/layer/b/d/k$1;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/e;)V

    iput-object v0, p0, Lcom/layer/b/d/k;->bxf:Lcom/b/a/z;

    return-void

    :pswitch_5
    const-string v0, "thrift"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/layer/b/d/k;->b(Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/layer/b/d/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    invoke-direct {p0}, Lcom/layer/b/d/k;->w()V

    return-void
.end method

.method static synthetic b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->bpP:Lcom/layer/b/b/a;

    return-object v0
.end method

.method private b(Lcom/b/a/ac;)Lcom/layer/b/d/j;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    const/4 v8, 0x6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/layer/b/d/k;->c(Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v0

    iget-object v4, v0, Lcom/layer/b/d/j;->bwQ:Lcom/layer/b/d/l;

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/layer/b/c/b;->a(Lcom/b/a/ac;)Z

    move-result v0

    iget-object v3, v4, Lcom/layer/b/d/l;->buJ:Lcom/layer/b/d/b;

    invoke-virtual {p1}, Lcom/b/a/ac;->c()I

    move-result v5

    invoke-static {v5}, Lcom/layer/b/d/g;->dn(I)Lcom/layer/b/d/g;

    move-result-object v2

    invoke-static {v3, v0}, Lcom/layer/b/d/f;->a(Lcom/layer/b/d/b;Z)Lcom/layer/b/d/f;

    move-result-object v1

    sget-object v0, Lcom/layer/b/d/k$16;->b:[I

    invoke-virtual {v1}, Lcom/layer/b/d/f;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/layer/b/d/m;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status code ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/layer/b/d/l;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Lcom/layer/b/d/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lc/a/a/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    invoke-static {v8}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    throw v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/b/d/k;->bxb:Lcom/layer/b/a/a;

    invoke-virtual {v0}, Lcom/layer/b/a/a;->f()V
    :try_end_1
    .catch Lcom/layer/b/d/m; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc/a/a/g; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v8}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwu:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Lc/a/a/g;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-static {v8}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-static {v8}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/layer/b/d/k;)Lcom/layer/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->bxb:Lcom/layer/b/a/a;

    return-object v0
.end method

.method private c(Lcom/b/a/ac;)Lcom/layer/b/d/j;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/ac;->Ap()Lcom/b/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/b/a/b;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/layer/b/d/j;

    invoke-direct {v0}, Lcom/layer/b/d/j;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/b/a/b;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v10}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TransportException: "

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "\\s"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v2, p0, Lcom/layer/b/d/k;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v4, Lcom/layer/b/f/b/c;

    invoke-direct {v4}, Lcom/layer/b/f/b/c;-><init>()V

    invoke-direct {p0}, Lcom/layer/b/d/k;->wY()Lc/a/a/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/b/a/b;->yf()[B

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lc/a/a/f;->a(Lc/a/a/c;[B)V

    new-instance v2, Lcom/layer/b/d/j;

    invoke-direct {v2}, Lcom/layer/b/d/j;-><init>()V

    iget-object v0, v4, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_1
    iput-object v0, v2, Lcom/layer/b/d/j;->bwQ:Lcom/layer/b/d/l;

    iget-object v0, v4, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    if-nez v0, :cond_8

    :goto_2
    iput-object v1, v2, Lcom/layer/b/d/j;->g:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    :goto_3
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Lcom/b/a/b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v10}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TransportException: "

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v5, v4, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    if-nez v5, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/layer/b/d/l;

    iget-object v6, v5, Lcom/layer/b/f/b/a;->bAo:Lcom/layer/b/f/b/b;

    invoke-static {v6}, Lcom/layer/b/d/b;->a(Lcom/layer/b/f/b/b;)Lcom/layer/b/d/b;

    move-result-object v6

    iget-object v7, v5, Lcom/layer/b/f/b/a;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/layer/b/f/b/a;->c:Ljava/util/Map;

    invoke-direct {v0, v6, v7, v5}, Lcom/layer/b/d/l;-><init>(Lcom/layer/b/d/b;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Lcom/b/a/b;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_5
    throw v0

    :cond_8
    :try_start_7
    iget-object v5, v4, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    move-object v1, v4

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/layer/b/d/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v4, Lcom/layer/b/f/a/l;

    invoke-direct {v4}, Lcom/layer/b/f/a/l;-><init>()V

    invoke-direct {p0}, Lcom/layer/b/d/k;->wY()Lc/a/a/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/b/a/b;->yf()[B

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lc/a/a/f;->a(Lc/a/a/c;[B)V

    new-instance v0, Lcom/layer/b/d/j;

    invoke-direct {v0}, Lcom/layer/b/d/j;-><init>()V

    iget-object v2, v4, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    if-nez v2, :cond_b

    move-object v2, v1

    :goto_7
    iput-object v2, v0, Lcom/layer/b/d/j;->bwQ:Lcom/layer/b/d/l;

    iget-object v2, v4, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    if-nez v2, :cond_d

    move-object v2, v1

    :goto_8
    iput-object v2, v0, Lcom/layer/b/d/j;->bwX:Lcom/layer/b/f/a/g;

    iget-object v2, v4, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    if-nez v2, :cond_e

    move-object v2, v1

    :goto_9
    iput-object v2, v0, Lcom/layer/b/d/j;->bwY:Lcom/layer/b/f/a/i;

    iget-object v2, v4, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    if-nez v2, :cond_f

    :goto_a
    iput-object v1, v0, Lcom/layer/b/d/j;->bwZ:Ljava/util/List;

    goto/16 :goto_3

    :cond_b
    iget-object v5, v4, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    if-nez v5, :cond_c

    move-object v2, v1

    goto :goto_7

    :cond_c
    new-instance v2, Lcom/layer/b/d/l;

    iget-object v6, v5, Lcom/layer/b/f/a/a;->bxC:Lcom/layer/b/f/a/b;

    invoke-static {v6}, Lcom/layer/b/d/b;->a(Lcom/layer/b/f/a/b;)Lcom/layer/b/d/b;

    move-result-object v6

    iget-object v5, v5, Lcom/layer/b/f/a/a;->b:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v6, v5, v7}, Lcom/layer/b/d/l;-><init>(Lcom/layer/b/d/b;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    :cond_d
    new-instance v2, Lcom/layer/b/f/a/g;

    iget-object v5, v4, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-direct {v2, v5}, Lcom/layer/b/f/a/g;-><init>(Lcom/layer/b/f/a/g;)V

    goto :goto_8

    :cond_e
    new-instance v2, Lcom/layer/b/f/a/i;

    iget-object v5, v4, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-direct {v2, v5}, Lcom/layer/b/f/a/i;-><init>(Lcom/layer/b/f/a/i;)V

    goto :goto_9

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v4, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-static {v2}, Lcom/layer/b/d/j;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a

    :cond_10
    new-instance v4, Lcom/layer/b/f/c/l;

    invoke-direct {v4}, Lcom/layer/b/f/c/l;-><init>()V

    invoke-direct {p0}, Lcom/layer/b/d/k;->wY()Lc/a/a/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/b/a/b;->yf()[B

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lc/a/a/f;->a(Lc/a/a/c;[B)V

    new-instance v0, Lcom/layer/b/d/j;

    invoke-direct {v0}, Lcom/layer/b/d/j;-><init>()V

    iget-object v5, v4, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    if-nez v5, :cond_11

    move-object v2, v1

    :goto_b
    iput-object v2, v0, Lcom/layer/b/d/j;->bwQ:Lcom/layer/b/d/l;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    if-nez v2, :cond_12

    move-object v2, v1

    :goto_c
    iput-object v2, v0, Lcom/layer/b/d/j;->bwR:Lcom/layer/b/d/c;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    if-nez v2, :cond_13

    move-object v2, v1

    :goto_d
    iput-object v2, v0, Lcom/layer/b/d/j;->c:Ljava/util/List;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    if-nez v2, :cond_14

    move-object v2, v1

    :goto_e
    iput-object v2, v0, Lcom/layer/b/d/j;->bwS:Lcom/layer/b/d/h;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    if-nez v2, :cond_15

    move-object v2, v1

    :goto_f
    iput-object v2, v0, Lcom/layer/b/d/j;->bwT:Ljava/util/List;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    iput-object v2, v0, Lcom/layer/b/d/j;->bwU:Lcom/layer/b/f/c/n;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    iput-object v2, v0, Lcom/layer/b/d/j;->bwV:Ljava/util/Set;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    if-nez v2, :cond_16

    move-object v2, v1

    :goto_10
    iput-object v2, v0, Lcom/layer/b/d/j;->bwW:Lcom/layer/b/d/i;

    iget-object v2, v4, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    if-nez v2, :cond_17

    :goto_11
    iput-object v1, v0, Lcom/layer/b/d/j;->j:Ljava/util/List;

    goto/16 :goto_3

    :cond_11
    new-instance v2, Lcom/layer/b/d/l;

    iget-object v6, v5, Lcom/layer/b/f/c/b;->bAP:Lcom/layer/b/f/c/c;

    invoke-static {v6}, Lcom/layer/b/d/b;->a(Lcom/layer/b/f/c/c;)Lcom/layer/b/d/b;

    move-result-object v6

    iget-object v7, v5, Lcom/layer/b/f/c/b;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/layer/b/f/c/b;->c:Ljava/util/Map;

    invoke-direct {v2, v6, v7, v5}, Lcom/layer/b/d/l;-><init>(Lcom/layer/b/d/b;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b

    :cond_12
    new-instance v2, Lcom/layer/b/d/c;

    iget-object v5, v4, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/layer/b/d/c;-><init>(Lcom/layer/b/f/c/d;B)V

    goto :goto_c

    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-static {v5}, Lcom/layer/b/d/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_14
    new-instance v2, Lcom/layer/b/d/h;

    iget-object v5, v4, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/layer/b/d/h;-><init>(Lcom/layer/b/f/c/m;B)V

    goto :goto_e

    :cond_15
    iget-object v2, v4, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-static {v2}, Lcom/layer/b/d/j;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    goto :goto_f

    :cond_16
    new-instance v2, Lcom/layer/b/d/i;

    iget-object v5, v4, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-direct {v2, v5}, Lcom/layer/b/d/i;-><init>(Lcom/layer/b/f/c/p;)V

    goto :goto_10

    :cond_17
    iget-object v1, v4, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-static {v1}, Lcom/layer/b/d/j;->f(Ljava/util/Set;)Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    goto :goto_11

    :catch_2
    move-exception v1

    invoke-static {v10}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "TransportException: "

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_4
.end method

.method static synthetic d(Lcom/layer/b/d/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/layer/b/d/k;)Lc/a/a/h;
    .locals 2

    new-instance v0, Lc/a/a/h;

    invoke-direct {p0}, Lcom/layer/b/d/k;->wX()Lc/a/a/b/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/h;-><init>(Lc/a/a/b/j;)V

    return-object v0
.end method

.method static synthetic f(Lcom/layer/b/d/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/layer/b/d/k;)Lcom/b/a/h;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    return-object v0
.end method

.method static synthetic g(Ljava/util/Set;)Ljava/lang/StringBuilder;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->bxj:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic i(Lcom/layer/b/d/k;)Lcom/layer/b/d/e;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->bxg:Lcom/layer/b/d/e;

    return-object v0
.end method

.method private declared-synchronized w()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/b/d/k;->bxh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/d/k;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private wX()Lc/a/a/b/j;
    .locals 2

    sget-object v0, Lcom/layer/b/d/k$16;->bqe:[I

    iget v1, p0, Lcom/layer/b/d/k;->bxc:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown serialization format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lc/a/a/b/e$a;

    invoke-direct {v0}, Lc/a/a/b/e$a;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lc/a/a/b/c$a;

    invoke-direct {v0}, Lc/a/a/b/c$a;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private wY()Lc/a/a/f;
    .locals 2

    new-instance v0, Lc/a/a/f;

    invoke-direct {p0}, Lcom/layer/b/d/k;->wX()Lc/a/a/b/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/f;-><init>(Lc/a/a/b/j;)V

    return-object v0
.end method

.method static synthetic wZ()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/layer/b/d/k;->bxl:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic xa()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/layer/b/d/k;->bxm:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Accept"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layer/b/d/k;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/b/d/k;->bxe:Lcom/b/a/n;

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0, p1}, Lcom/layer/b/c/b;->a(Lcom/b/a/n;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/layer/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/layer/b/d/m;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Reconfiguring HTTP client with new configuration"

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/d/k;->bxb:Lcom/layer/b/a/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/a/a;->a(Lcom/layer/b/b/a;)V

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0}, Lcom/layer/b/c/b;->b()V

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0}, Lcom/layer/b/c/b;->a()V

    invoke-direct {p0}, Lcom/layer/b/d/k;->w()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/layer/b/f/a/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    new-instance v0, Lcom/layer/b/d/k$f;

    invoke-direct {v0, p0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v0

    new-instance v1, Lcom/layer/b/d/k$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/layer/b/d/k$20;-><init>(Lcom/layer/b/d/k;Ljava/lang/String;Lcom/layer/b/f/a/m;)V

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0, p1}, Lcom/layer/b/c/b;->a(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public final aJ(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    new-instance v0, Lcom/layer/b/d/k$f;

    invoke-direct {v0, p0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v0

    new-instance v1, Lcom/layer/b/d/k$23;

    invoke-direct {v1, p0, p1}, Lcom/layer/b/d/k$23;-><init>(Lcom/layer/b/d/k;Z)V

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Accept"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layer/b/d/k;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/layer/b/d/m;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Configuring HTTP client"

    invoke-static {v0}, Lcom/layer/b/e/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0}, Lcom/layer/b/c/b;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layer/b/d/k;->aJ(Z)Z

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/k;->l()V

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0}, Lcom/layer/b/c/b;->b()V

    return-void
.end method

.method public final g()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    invoke-virtual {v0}, Lcom/layer/b/c/b;->wU()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/b/d/k;->bxh:Z

    iget-object v0, p0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k;->bpP:Lcom/layer/b/b/a;

    invoke-interface {v1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/layer/b/c/b$a;->buB:Lcom/layer/b/c/b$a;

    const-string v3, "push?ack&include_channels&presence_subscribe"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s,%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/layer/b/d/k;->f:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/layer/b/d/k;->h:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Accept"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/layer/b/d/k;->bxf:Lcom/b/a/z;

    new-instance v6, Lcom/layer/b/d/k$15;

    invoke-direct {v6, p0}, Lcom/layer/b/d/k$15;-><init>(Lcom/layer/b/d/k;)V

    invoke-virtual/range {v0 .. v6}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/z;Lcom/b/a/i;)Lcom/b/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    iget-object v1, p0, Lcom/layer/b/d/k;->bxg:Lcom/layer/b/d/e;

    invoke-interface {v1, v0}, Lcom/layer/b/d/e;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/layer/b/d/k;->w()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/layer/b/d/k;->bxj:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/d/k;->bxj:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x9c4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/k;->bxi:Lcom/b/a/h;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/b/d/k;->bxh:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final wW()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Accept"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layer/b/d/k;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
