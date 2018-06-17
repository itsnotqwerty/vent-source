.class final Lcom/intercom/composer/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intercom/composer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bkJ:Lcom/intercom/composer/b;


# direct methods
.method constructor <init>(Lcom/intercom/composer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/composer/b$1;->bkJ:Lcom/intercom/composer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/intercom/composer/b$1;->bkJ:Lcom/intercom/composer/b;

    iget-object v0, v1, Lcom/intercom/composer/b;->bkH:Lcom/intercom/composer/b/b;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-object v2, v1, Lcom/intercom/composer/b;->bkH:Lcom/intercom/composer/b/b;

    invoke-virtual {v0, v2, v3, v4}, Lcom/intercom/composer/ComposerView;->a(Lcom/intercom/composer/b/b;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, v1, Lcom/intercom/composer/b;->bkB:Lcom/intercom/composer/c;

    invoke-interface {v0}, Lcom/intercom/composer/c;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/intercom/composer/b;->bkE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/intercom/composer/b;->ds(Ljava/lang/String;)Lcom/intercom/composer/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    :cond_1
    iget-object v2, v1, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-boolean v1, v1, Lcom/intercom/composer/b;->bkF:Z

    invoke-virtual {v2, v0, v1, v4}, Lcom/intercom/composer/ComposerView;->a(Lcom/intercom/composer/b/b;ZZ)Z

    :cond_2
    return-void
.end method
