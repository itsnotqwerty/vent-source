.class final Lcom/layer/sdk/internal/a$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->b(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/j$b",
        "<",
        "Lcom/layer/sdk/listeners/LayerPolicyListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$27;->c:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$27;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$27;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/layer/sdk/listeners/LayerPolicyListener;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$27;->c:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$27;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/layer/sdk/internal/a$27;->b:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/layer/sdk/listeners/LayerPolicyListener;->onPolicyListUpdate(Lcom/layer/sdk/LayerClient;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
