.class final Lcom/layer/atlas/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/query/ListViewController$PreProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/a/a;-><init>(Landroid/content/Context;Lcom/layer/sdk/LayerClient;Lcom/c/a/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/query/ListViewController$PreProcessCallback",
        "<",
        "Lcom/layer/sdk/messaging/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bnP:Lcom/layer/atlas/a/a;


# direct methods
.method constructor <init>(Lcom/layer/atlas/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/a/a$1;->bnP:Lcom/layer/atlas/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCache(Lcom/layer/sdk/query/ListViewController;Lcom/layer/sdk/query/Queryable;)V
    .locals 3

    check-cast p2, Lcom/layer/sdk/messaging/Message;

    iget-object v0, p0, Lcom/layer/atlas/a/a$1;->bnP:Lcom/layer/atlas/a/a;

    iget-object v0, v0, Lcom/layer/atlas/a/a;->bnA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/a;

    invoke-virtual {v0, p2}, Lcom/layer/atlas/b/a;->a(Lcom/layer/sdk/messaging/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/layer/atlas/b/a;->c(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;

    :cond_1
    return-void
.end method
