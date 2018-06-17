.class final Lcom/layer/sdk/internal/lsdkf/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkf/c;->b(Lcom/layer/sdk/policy/Policy;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bse:Lcom/layer/sdk/policy/Policy;

.field final synthetic bsf:Lcom/layer/sdk/internal/lsdkf/c;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkf/c;Lcom/layer/sdk/policy/Policy;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkf/c$2;->bsf:Lcom/layer/sdk/internal/lsdkf/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkf/c$2;->bse:Lcom/layer/sdk/policy/Policy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c$2;->bsf:Lcom/layer/sdk/internal/lsdkf/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkf/c;->a(Lcom/layer/sdk/internal/lsdkf/c;)Lcom/layer/sdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/c$2;->bse:Lcom/layer/sdk/policy/Policy;

    invoke-virtual {v1}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdke/g;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c$2;->bsf:Lcom/layer/sdk/internal/lsdkf/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/c;->d()V

    return-void
.end method
