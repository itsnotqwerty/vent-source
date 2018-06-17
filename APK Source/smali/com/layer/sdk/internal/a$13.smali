.class final Lcom/layer/sdk/internal/a$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$13;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$13;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->l()V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$13;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->f()Lcom/layer/sdk/internal/lsdkf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/c;->d()V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/a$13;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->v()V

    return-void
.end method
