.class final Lcom/layer/sdk/internal/a$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->J()V
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
        "Lcom/layer/sdk/listeners/LayerAuthenticationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$31;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/layer/sdk/listeners/LayerAuthenticationListener;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$31;->a:Lcom/layer/sdk/internal/a;

    invoke-interface {p1, v0}, Lcom/layer/sdk/listeners/LayerAuthenticationListener;->onDeauthenticated(Lcom/layer/sdk/LayerClient;)V

    return-void
.end method
