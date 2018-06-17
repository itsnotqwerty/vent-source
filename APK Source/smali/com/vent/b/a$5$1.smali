.class final Lcom/vent/b/a$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/b/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clt:Lcom/vent/b/a$5;


# direct methods
.method constructor <init>(Lcom/vent/b/a$5;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final Ft()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iget-object v1, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v1, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v0, Lcom/vent/b/a$5;->clq:[Landroid/support/v7/app/c;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v1, v0, Lcom/vent/b/a$5;->clq:[Landroid/support/v7/app/c;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/vent/b/a$5;->clr:Lcom/vent/b/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vent/b/a$a;->aQ(Z)V

    return-void
.end method

.method public final a(Lcom/vent/b/d;Lcom/vent/b/e;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    iget-object v2, p2, Lcom/vent/b/e;->cme:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/h;

    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vent/b/d;->mQ()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/vent/b/d;->mQ()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/vent/b/d;->cmd:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v1, 0x7f0f01f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (5."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vent/b/a$5$1;->el(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/vent/b/d;->cmc:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/vent/b/a$5$1;->el(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bYv:Lcom/vent/a/x;

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/vent/b/h;->cmt:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v1, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v3, 0x7f0f0272

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/vent/b/h;->cmu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_4
    new-instance v3, Landroid/support/v7/app/c$a;

    iget-object v4, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v4, v4, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-static {v1}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/b/a$5$1$3;

    invoke-direct {v1, p0}, Lcom/vent/b/a$5$1$3;-><init>(Lcom/vent/b/a$5$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v3, Lcom/vent/b/a$5$1$2;

    invoke-direct {v3, p0}, Lcom/vent/b/a$5$1$2;-><init>(Lcom/vent/b/a$5$1;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/vent/b/a$5$1$1;

    invoke-direct {v3, p0, v2}, Lcom/vent/b/a$5$1$1;-><init>(Lcom/vent/b/a$5$1;Lcom/vent/b/h;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v1, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v3, 0x7f0f0273

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/vent/b/h;->cmt:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/vent/b/h;->cmu:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method final el(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iget-object v1, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v1, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    invoke-virtual {v0, p1}, Lcom/vent/b/a$5;->ek(Ljava/lang/String;)V

    return-void
.end method
