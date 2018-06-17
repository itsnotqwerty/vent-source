.class public Lcom/layer/sdk/internal/lsdkc/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkc/d$b;,
        Lcom/layer/sdk/internal/lsdkc/d$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/b/a/x;

.field private final d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkc/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkc/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x7530

    const/16 v4, 0x14

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->d:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/layer/sdk/internal/lsdkc/d;->e:Z

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/d;->b:Ljava/lang/String;

    new-instance v0, Lcom/b/a/x;

    invoke-direct {v0}, Lcom/b/a/x;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lcom/b/a/x;->a(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lcom/b/a/x;->b(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/b/a/x;->a(Ljava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    invoke-virtual {v0}, Lcom/b/a/x;->Af()Lcom/b/a/x;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/b/a/y;

    sget-object v2, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/x;->x(Ljava/util/List;)Lcom/b/a/x;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    iput-boolean v3, v0, Lcom/b/a/x;->bMi:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v0, v4}, Lcom/b/a/r;->a(I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v0, v4}, Lcom/b/a/r;->b(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkc/d;->a(Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    const-string v1, "Content-Length"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    const-string v1, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes */"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    const-string v1, "PUT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    invoke-virtual {v1, v0}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/b/a/h;->xb()Lcom/b/a/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v2, v0}, Lcom/layer/sdk/internal/lsdkc/d;->a(Lcom/b/a/ac;[I)V

    iget v0, v2, Lcom/b/a/ac;->c:I

    const/16 v3, 0x134

    if-ne v0, v3, :cond_5

    const-string v0, "Range"

    invoke-virtual {v2, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    iget-boolean v0, v1, Lcom/b/a/h;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    :cond_1
    const-wide/16 p2, 0x0

    :cond_2
    :goto_0
    return-wide p2

    :cond_3
    :try_start_3
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long p2, v4, v6

    if-eqz v2, :cond_4

    :try_start_4
    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    iget-boolean v0, v1, Lcom/b/a/h;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    :try_start_5
    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    iget-boolean v0, v1, Lcom/b/a/h;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_7

    :try_start_6
    iget-object v3, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v3, :cond_7

    iget-object v2, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/b;->close()V

    :cond_7
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    iget-boolean v2, v1, Lcom/b/a/h;->a:Z

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    :cond_8
    throw v0

    nop

    :array_0
    .array-data 4
        0xc8
        0xce
        0x134
    .end array-data
.end method

.method protected a(Ljava/lang/String;)Lcom/b/a/aa$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/b/a/aa$a;

    invoke-direct {v0}, Lcom/b/a/aa$a;-><init>()V

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkc/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    iput-object v1, v0, Lcom/b/a/aa$a;->bMq:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/b/a/aa$a;->a(Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/b/a/ac;[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p1, Lcom/b/a/ac;->c:I

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p2, v0

    if-ne v3, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/b/a/ac;->d:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server responded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNAUTHORIZED:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server responded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->CONTENT_NOT_FOUND:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server responded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;JJLcom/layer/sdk/internal/lsdkc/d$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkc/d;->a(Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_2

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_2
    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    invoke-virtual {v1, v0}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/b/a/h;->xb()Lcom/b/a/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v2, v0}, Lcom/layer/sdk/internal/lsdkc/d;->a(Lcom/b/a/ac;[I)V

    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-interface {p6, v0}, Lcom/layer/sdk/internal/lsdkc/d$a;->a(Lcom/b/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    iget-boolean v0, v1, Lcom/b/a/h;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v3, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/b;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-boolean v2, v1, Lcom/b/a/h;->a:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    :cond_5
    throw v0

    nop

    :array_0
    .array-data 4
        0xc8
        0xce
    .end array-data
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkc/d;->a(Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_2

    const-string v1, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    :cond_2
    new-instance v1, Lcom/layer/sdk/internal/lsdkc/d$b;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/layer/sdk/internal/lsdkc/d$b;-><init>(Ljava/io/File;Ljava/lang/String;JLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V

    const-string v2, "PUT"

    invoke-virtual {v0, v2, v1}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    invoke-virtual {v1, v0}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/b/a/h;->xb()Lcom/b/a/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v2, v0}, Lcom/layer/sdk/internal/lsdkc/d;->a(Lcom/b/a/ac;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    iget-boolean v0, v1, Lcom/b/a/h;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v3, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/b;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-boolean v2, v1, Lcom/b/a/h;->a:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/b/a/h;->c()V

    :cond_5
    throw v0

    nop

    :array_0
    .array-data 4
        0xc8
        0xc9
    .end array-data
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/d;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->e:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    sget-object v2, Lcom/layer/sdk/internal/lsdkc/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    iget-object v0, v0, Lcom/b/a/x;->bLW:Lcom/b/a/r;

    invoke-virtual {v0, v2}, Lcom/b/a/r;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d;->c:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->bMf:Lcom/b/a/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/b/a/o;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
