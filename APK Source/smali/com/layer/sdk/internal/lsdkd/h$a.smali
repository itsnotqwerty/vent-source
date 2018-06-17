.class public Lcom/layer/sdk/internal/lsdkd/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/layer/sdk/internal/lsdkd/h;

.field final b:Lcom/layer/sdk/internal/lsdkd/f;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/f;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdkd/f;-><init>(Lcom/layer/sdk/internal/lsdkd/h;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->b:Lcom/layer/sdk/internal/lsdkd/f;

    return-void
.end method


# virtual methods
.method public g()Lcom/layer/sdk/internal/lsdkc/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/layer/sdk/internal/lsdke/b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->a:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/layer/sdk/internal/lsdkd/f;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/h$a;->b:Lcom/layer/sdk/internal/lsdkd/f;

    return-object v0
.end method

.method public n()Lcom/layer/sdk/internal/lsdkd/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
