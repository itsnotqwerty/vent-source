.class public final Lcom/vent/ActReport3;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bXE:Lcom/vent/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/vent/a/x;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActReport3;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method final Cg()V
    .locals 5

    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    invoke-virtual {v1}, Lcom/vent/a/x;->Fk()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f0186

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vent/ActReport3;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    iget-object v4, v4, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f0f0148

    goto :goto_0
.end method

.method public final aR(Z)Z
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "blocked"

    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->Fk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "backLongPress"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActReport3;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActReport3;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->Fk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    new-instance v1, Lcom/vent/ActReport3$1;

    invoke-direct {v1, p0}, Lcom/vent/ActReport3$1;-><init>(Lcom/vent/ActReport3;)V

    invoke-static {p0, v0, v1}, Lcom/vent/d/f;->e(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    new-instance v1, Lcom/vent/ActReport3$2;

    invoke-direct {v1, p0}, Lcom/vent/ActReport3$2;-><init>(Lcom/vent/ActReport3;)V

    invoke-static {p0, v0, v1}, Lcom/vent/d/f;->f(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/vent/a/x;

    invoke-direct {v0}, Lcom/vent/a/x;-><init>()V

    const-string v1, "kokobot"

    iput-object v1, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    new-instance v1, Lcom/vent/a/m;

    const-string v2, "a9eb26e5-0d22-4b09-be79-2394e44e00b5"

    invoke-direct {v1, v2}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    const/4 v1, 0x4

    iput v1, v0, Lcom/vent/a/x;->flags:I

    invoke-static {p0, v3, v0, v3}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f09004d -> :sswitch_0
        0x7f09019f -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f09004e

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActReport3;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActReport3;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v2, 0x7f0f00fd

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActReport3;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->Fk()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0f001a

    invoke-virtual {p0, v4}, Lcom/vent/ActReport3;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    iget-object v6, v6, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0f00fe

    invoke-virtual {p0, v4}, Lcom/vent/ActReport3;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vent/ActReport3;->bXE:Lcom/vent/a/x;

    iget-object v5, v5, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vent/ActReport3;->Cg()V

    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v8}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0901a0

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902bc

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const v1, 0x7f0f0102

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0902bb

    invoke-virtual {p0, v0}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const v1, 0x7f0f0101

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    move v2, v3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, v8}, Lcom/vent/ActReport3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0f00ff

    goto :goto_2

    :cond_3
    const v1, 0x7f0f0100

    goto :goto_3
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "Report3"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
