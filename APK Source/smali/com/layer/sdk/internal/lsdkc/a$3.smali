.class final Lcom/layer/sdk/internal/lsdkc/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqo:Lcom/layer/sdk/internal/lsdkc/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/a$3;->bqo:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a$3;->bqo:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkc/a;->b(Lcom/layer/sdk/internal/lsdkc/a;)Lcom/layer/sdk/internal/lsdkc/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/f;->c()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide v0, 0x3fe999999999999aL    # 0.8

    long-to-double v2, v4

    mul-double/2addr v0, v2

    double-to-long v6, v0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a$3;->bqo:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/a;)Lcom/layer/sdk/internal/lsdkc/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->a()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a$3;->bqo:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/a;)Lcom/layer/sdk/internal/lsdkc/a$b;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkc/a$b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/a;->ws()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Deleting "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->b()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes of content to get below "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes of total usage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a$3;->bqo:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->a()Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    sget-object v12, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-static {v1, v9, v10, v11, v12}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkc/a;Landroid/net/Uri;Ljava/io/File;ZLcom/layer/sdk/internal/lsdkd/k$a;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    move-wide v2, v0

    goto :goto_0
.end method
