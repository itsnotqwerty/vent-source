.class public Lcom/layer/sdk/internal/lsdkj/a;
.super Lcom/layer/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/b",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/a$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkj/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkj/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layer/a/c/b;-><init>(Lcom/layer/a/c/b$a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/a$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/a;->a(Lcom/layer/sdk/internal/lsdkj/a$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/a$a;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x6

    :try_start_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sending challenge answer request"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/a$a;->c(Lcom/layer/sdk/internal/lsdkj/a$a;)Lcom/layer/b/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/a$a;->b(Lcom/layer/sdk/internal/lsdkj/a$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Lcom/layer/b/a/a;->e()V

    iget-object v2, v0, Lcom/layer/b/a/a;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v1}, Lcom/layer/b/a/g;->dy(Ljava/lang/String;)Lcom/layer/b/a/g;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/a/a;->bug:Lcom/layer/b/a/g;

    iput-object v1, v0, Lcom/layer/b/a/a;->j:Ljava/lang/String;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Challenge answer request succeeded"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    :try_start_6
    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Identity Token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdkj/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Could not answer challenge"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Could not answer challenge"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0
.end method
