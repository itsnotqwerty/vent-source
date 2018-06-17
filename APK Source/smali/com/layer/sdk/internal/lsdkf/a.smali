.class public Lcom/layer/sdk/internal/lsdkf/a;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/layer/sdk/policy/Policy;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Lcom/layer/b/d/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkf/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkf/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkf/a;->c:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkf/a;->a(Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/a;->c:Lcom/layer/b/d/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/a;->c:Lcom/layer/b/d/k;

    new-instance v1, Lcom/layer/b/d/k$f;

    invoke-direct {v1, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v1

    new-instance v2, Lcom/layer/b/d/k$8;

    invoke-direct {v2, v0}, Lcom/layer/b/d/k$8;-><init>(Lcom/layer/b/d/k;)V

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/layer/sdk/internal/lsdkf/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server says to block: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lcom/layer/sdk/internal/lsdkf/b;

    sget-object v4, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    invoke-direct {v3, v4, v0}, Lcom/layer/sdk/internal/lsdkf/b;-><init>(Lcom/layer/sdk/policy/Policy$PolicyType;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkf/a;->a(Lcom/layer/a/c/e;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
