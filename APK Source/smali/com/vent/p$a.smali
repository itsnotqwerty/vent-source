.class public final Lcom/vent/p$a;
.super Lcom/vent/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic cbu:Lcom/vent/p;


# direct methods
.method constructor <init>(Lcom/vent/p;Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iput-object p1, p0, Lcom/vent/p$a;->cbu:Lcom/vent/p;

    sget v0, Lcom/vent/MyApplication;->cgk:I

    invoke-direct {p0, p1, p2, v0}, Lcom/vent/o$b;-><init>(Lcom/vent/o;Landroid/view/View;I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/vent/p$a;->CR()Lcom/vent/a/x;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/vent/p$a;->cbu:Lcom/vent/p;

    iget-object v0, v0, Lcom/vent/p;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-virtual {v1}, Lcom/vent/a/x;->EZ()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vent/a;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/vent/a;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/p$a;->cbu:Lcom/vent/p;

    invoke-virtual {v0, v1}, Lcom/vent/p;->a(Lcom/vent/a/x;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/support/v7/app/c$a;

    invoke-direct {v2, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0185

    invoke-virtual {v0, v3}, Lcom/vent/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v2

    const v3, 0x7f0f017d

    invoke-virtual {v0, v3}, Lcom/vent/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x7f0f0165

    new-instance v3, Lcom/vent/p$a$1;

    invoke-direct {v3, p0, v1}, Lcom/vent/p$a$1;-><init>(Lcom/vent/p$a;Lcom/vent/a/x;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901aa -> :sswitch_0
        0x7f090232 -> :sswitch_1
    .end sparse-switch
.end method
