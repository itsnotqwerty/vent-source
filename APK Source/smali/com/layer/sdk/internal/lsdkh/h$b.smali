.class public Lcom/layer/sdk/internal/lsdkh/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/Map;)Lcom/layer/sdk/internal/lsdkh/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkh/h$b;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->b:Ljava/util/Map;

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->b:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkh/h$f;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->b:Ljava/util/Map;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/layer/sdk/internal/lsdkh/h$f;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkh/h;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkh/h;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$b;->c:Ljava/util/List;

    return-object v0
.end method
