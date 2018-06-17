.class public Lcom/layer/sdk/internal/lsdkh/i$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/i$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->f:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->g:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->c:Ljava/util/Set;

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkh/i$c;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkh/i$c;-><init>(Ljava/lang/String;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/layer/sdk/query/SortDescriptor$Order;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->e:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->e:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/SortDescriptor$Order;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, v0, p1, p2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkh/i$b$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a:Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/util/Collection;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    move-result-object p0

    goto :goto_0
.end method

.method public a()Lcom/layer/sdk/internal/lsdkh/i$b;
    .locals 8

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/i$b;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->c:Ljava/util/Set;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->d:Ljava/util/Set;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->e:Ljava/util/Set;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->f:Ljava/lang/Long;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->g:Ljava/lang/Long;

    invoke-direct/range {v0 .. v7}, Lcom/layer/sdk/internal/lsdkh/i$b;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public b(Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->b:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, v0, p1, p2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Collection;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkh/i$b$a;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b:Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b(Ljava/util/Collection;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->c:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, v0, p1, p2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    move-result-object v0

    return-object v0
.end method
