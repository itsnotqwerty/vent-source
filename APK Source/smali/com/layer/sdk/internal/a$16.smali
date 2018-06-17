.class final Lcom/layer/sdk/internal/a$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Lcom/layer/sdk/internal/c;Lcom/layer/b/b/b;Lcom/layer/sdk/internal/lsdka/a;Lcom/layer/b/a/b;Lcom/layer/sdk/internal/a$d;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/sdk/exceptions/LayerException;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->e(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->e(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/exceptions/LayerException;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x4

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LayerClient: Connection reported"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->e(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->e(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->e()Lcom/layer/sdk/internal/lsdki/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a;->b()V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->w()Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->g(Lcom/layer/sdk/internal/a;)V

    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "onReportConnected: session is null. Skipping sync"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->f(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/n;

    move-result-object v0

    const-string v1, "user_was_authenticated"

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/n;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "onReportConnected: authManagerHasPreviouslyAuthenticatedSession is false, but user was authenticated. Kicking off authentication"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->e(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "onReportConnected: authManagerHasPreviouslyAuthenticatedSession is false, and user was not authenticated. Skipping sync"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->d(Lcom/layer/sdk/internal/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/services/LayerReceiver;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->e()Lcom/layer/sdk/internal/lsdki/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/a$16;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->h(Lcom/layer/sdk/internal/a;)V

    return-void
.end method
