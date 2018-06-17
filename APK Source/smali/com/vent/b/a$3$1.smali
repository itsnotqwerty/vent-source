.class final Lcom/vent/b/a$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/b/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clp:Lcom/vent/b/a$3;


# direct methods
.method constructor <init>(Lcom/vent/b/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$3$1;->clp:Lcom/vent/b/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vent/b/d;Lcom/vent/b/e;)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/b/a;->cli:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vent/b/d;->mQ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vent/b/a$3$1;->clp:Lcom/vent/b/a$3;

    iget-object v0, v0, Lcom/vent/b/a$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/vent/b/a;->e(Landroid/app/Application;)V

    :goto_0
    iget-object v0, p0, Lcom/vent/b/a$3$1;->clp:Lcom/vent/b/a$3;

    iget-object v1, v0, Lcom/vent/b/a$3;->clo:Lcom/vent/b/a;

    iget-object v0, p0, Lcom/vent/b/a$3$1;->clp:Lcom/vent/b/a$3;

    iget-object v0, v0, Lcom/vent/b/a$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/b/a;->clj:Z

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/vent/b/e;->cmf:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/f;

    iget-object v2, v0, Lcom/vent/b/f;->cmm:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v3, v0, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vent/b/a$3$1;->clp:Lcom/vent/b/a$3;

    iget-object v0, v0, Lcom/vent/b/a$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/vent/b/a;->f(Landroid/app/Application;)V

    goto :goto_0
.end method
