.class final Lcom/layer/sdk/internal/lsdke/g$25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/lang/Iterable;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/g$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/layer/b/d/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic bru:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$25;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$25;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$25;->bru:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$25;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    if-ne v1, v2, :cond_3

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->i(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$25;->bru:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    iget-boolean v4, v0, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdke/g$25;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-static {p1, v0, v4, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)Lcom/layer/b/d/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/layer/sdk/internal/lsdke/g$25;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-static {p1, v0, v4}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    goto :goto_1

    :cond_2
    return-object v2

    :cond_3
    move v1, v0

    goto :goto_0
.end method
