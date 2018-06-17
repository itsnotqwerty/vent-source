.class public final Lcom/vent/ActRegister3;
.super Lcom/vent/a;

# interfaces
.implements Landroid/support/v4/widget/n$b;


# instance fields
.field private bTI:Lcom/vent/views/b;

.field bXx:Lcom/vent/j;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActRegister3;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final em()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/vent/ActRegister3;->f(ZZ)V

    return-void
.end method

.method final f(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActRegister3;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ActRegister3$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vent/ActRegister3$2;-><init>(Lcom/vent/ActRegister3;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister3;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActRegister3;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister3;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister3;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    :cond_2
    new-instance v0, Lcom/vent/views/b;

    const-string v1, "gradientpos"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActRegister3;->bTI:Lcom/vent/views/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActRegister3;->bTx:Z

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister3;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister3;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActRegister3;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActRegister3;->bTI:Lcom/vent/views/b;

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/ActRegister3$1;

    invoke-direct {v0, p0, p0}, Lcom/vent/ActRegister3$1;-><init>(Lcom/vent/ActRegister3;Lcom/vent/a;)V

    iput-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    :cond_0
    iget-object v1, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/n;

    iput-object v0, v1, Lcom/vent/j;->cbb:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v0, v0, Lcom/vent/j;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/vent/ActRegister3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/j;->cba:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v0, v0, Lcom/vent/j;->cba:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ActRegister3;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/ActRegister3;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/vent/ActRegister3;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/vent/ActRegister3;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/vent/ActRegister3;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/vent/views/a;

    invoke-direct {v1, p0}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    const-string v1, "adapter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/j;->t(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0}, Lcom/vent/j;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActRegister3;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActRegister3;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActRegister3;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vent/ActAgree;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901ed
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/ax;->cfO:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0, v4, v4}, Lcom/vent/j;->g(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-object v0, v0, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-wide v2, v2, Lcom/vent/j;->bZY:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/vent/ActRegister3;->f(ZZ)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "adapter"

    iget-object v1, p0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v1}, Lcom/vent/j;->CG()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
