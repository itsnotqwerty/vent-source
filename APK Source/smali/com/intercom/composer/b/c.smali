.class public abstract Lcom/intercom/composer/b/c;
.super Landroid/support/v4/app/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intercom/composer/b/c;->setRetainInstance(Z)V

    return-void
.end method

.method public abstract onInputDeselected()V
.end method

.method public abstract onInputReselected()V
.end method

.method public abstract onInputSelected()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/intercom/composer/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intercom/composer/b/c;->passDataOnViewCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public passData(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/intercom/composer/b/c;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/intercom/composer/b/c;->passDataOnViewCreated(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/intercom/composer/b/c;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract passDataOnViewCreated(Landroid/os/Bundle;)V
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/intercom/composer/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, v0}, Landroid/support/v4/app/i;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
