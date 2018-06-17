.class public Lcom/layer/sdk/internal/lsdkb/a;
.super Lcom/layer/b/b/b;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/layer/b/b/a;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layer/b/b/a;Lcom/layer/sdk/internal/c;Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/layer/b/b/b;-><init>(Lcom/layer/b/d/a;Ljava/net/URL;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkb/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkb/a;->f:Lcom/layer/b/b/a;

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkb/a;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkb/a;->e:Landroid/content/Context;

    const-string v1, "client_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/layer/b/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkb/a;->g:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/layer/b/b/b;->a()Lcom/layer/b/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/layer/b/b/a;)V
    .locals 5

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkb/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkb/a;->b(Lcom/layer/b/b/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Lcom/layer/b/b/a;
    .locals 4

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkb/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkb/a;->f:Lcom/layer/b/b/a;

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/layer/sdk/internal/lsdkb/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/layer/b/b/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkb/a;->f:Lcom/layer/b/b/a;

    invoke-interface {v3}, Lcom/layer/b/b/a;->wF()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkb/a;->a(Ljava/util/Map;)Lcom/layer/b/b/a;

    move-result-object v0

    goto :goto_0
.end method
