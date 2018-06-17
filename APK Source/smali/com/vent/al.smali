.class public final Lcom/vent/al;
.super Lcom/vent/ak;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ak;-><init>()V

    return-void
.end method

.method public static Dz()Lcom/vent/ak;
    .locals 1

    new-instance v0, Lcom/vent/al;

    invoke-direct {v0}, Lcom/vent/al;-><init>()V

    return-object v0
.end method

.method private bp(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    :goto_1
    const v1, 0x7f090047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0900cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final Dy()V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/al;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/al;->bp(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    if-nez v0, :cond_2

    const/16 v0, 0xa

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/my/groups.json?per_page="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&from%5border%5d=desc&from%5bfield%5d=last_vented_at&from%5bvalue%5d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_3

    const-string v0, "9999-01-01T00:00:00.000Z"

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->CJ()Lcom/vent/a/k;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/al;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget v0, v0, Lcom/vent/i;->cap:I

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/vent/a/k;->ckl:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected final getLayoutId()I
    .locals 1

    const v0, 0x7f0b006b

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/vent/ak;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "didJoinLeave"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v2, v1}, Lcom/vent/aq;->c(ZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/al;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vent/ActGroupsJoin;->a(Landroid/app/Activity;Landroid/support/v4/app/i;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f09019e
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/al;->cdb:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vent/al;->cev:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/al;->cew:Z

    invoke-super {p0, p1}, Lcom/vent/ak;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/vent/ak;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f09019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f017b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v1}, Lcom/vent/al;->bp(Landroid/view/View;)V

    return-object v1
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/ak;->onResume()V

    invoke-virtual {p0}, Lcom/vent/al;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/al;->bp(Landroid/view/View;)V

    return-void
.end method
