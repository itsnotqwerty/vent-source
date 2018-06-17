.class final Lcom/layer/sdk/internal/a$23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->deauthenticate(Lcom/layer/sdk/LayerClient$DeauthenticationAction;)Lcom/layer/sdk/LayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/a;

.field final synthetic bqf:Lcom/layer/sdk/LayerClient$DeauthenticationAction;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/LayerClient$DeauthenticationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$23;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$23;->bqf:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/a$23;->b:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$23;->bqf:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/LayerClient$DeauthenticationAction;)V

    return-void
.end method
