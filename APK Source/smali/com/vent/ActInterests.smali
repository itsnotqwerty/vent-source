.class public final Lcom/vent/ActInterests;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/HashSet;Ljava/util/HashMap;ZIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/p;",
            ">;ZIII)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActInterests;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "interest_ids"

    invoke-static {v0, v1, p1}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Set;)V

    const-string v1, "interests"

    invoke-static {v0, v1, p2}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "isNew"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hdrString"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "minInterest"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "maxInterest"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActInterests;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->By()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0902b5
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/vent/ActInterests;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActInterests;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/vent/ActInterests;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "interest_ids"

    invoke-static {v1, v2}, Lcom/vent/d/d;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v3

    invoke-static {v2}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f0029

    :goto_0
    invoke-virtual {v3, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    const v3, 0x7f09010f

    invoke-virtual {v1, v3}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v1

    check-cast v1, Lcom/vent/FrgInterests;

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "hdrString"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "minInterest"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "maxInterest"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vent/FrgInterests;->a(Ljava/util/HashSet;III)V

    invoke-virtual {v1, v9, v8}, Lcom/vent/FrgInterests;->f(ZZ)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v1, 0x7f0f0025

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isNew"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c000b

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0c0010

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v11, -0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/vent/ActInterests;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgInterests;

    iget-object v1, v0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    if-nez v1, :cond_0

    move v2, v3

    :goto_1
    iget-object v1, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/k;

    iget v1, v1, Lcom/vent/k;->caV:I

    if-ge v2, v1, :cond_1

    const v2, 0x7f0f0261

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/k;

    iget v1, v1, Lcom/vent/k;->caV:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget v0, v0, Lcom/vent/k;->caW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/vent/ActInterests;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/vent/ActInterests;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "interest"

    invoke-static {v1, v2}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v1, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-nez v1, :cond_5

    move-object v2, v4

    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/p;

    invoke-static {v0, v1}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_5
    if-nez v1, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/p;

    :cond_4
    if-eqz v1, :cond_2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v0, v0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "interests"

    invoke-static {v0, v1, v7}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "interest_ids"

    invoke-static {v0, v1, v3}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {p0, v11, v0}, Lcom/vent/ActInterests;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActInterests;->finish()V

    goto :goto_2

    :cond_7
    move-object v1, v4

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901ed -> :sswitch_0
        0x7f090254 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
