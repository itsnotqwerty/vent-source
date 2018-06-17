.class final Lcom/layer/sdk/internal/lsdkc/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;ZLcom/layer/sdk/internal/lsdkd/k$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

.field final synthetic b:Z

.field final synthetic bqn:Lcom/layer/sdk/internal/lsdkc/a;

.field final synthetic c:Lcom/layer/sdk/internal/lsdkd/k$a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;ZLcom/layer/sdk/internal/lsdkd/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->bqn:Lcom/layer/sdk/internal/lsdkc/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iput-boolean p3, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->b:Z

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->c:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->bqn:Lcom/layer/sdk/internal/lsdkc/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v2

    iget-boolean v3, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->b:Z

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkc/a$1;->c:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkc/a;Landroid/net/Uri;Ljava/io/File;ZLcom/layer/sdk/internal/lsdkd/k$a;)V

    return-void
.end method
