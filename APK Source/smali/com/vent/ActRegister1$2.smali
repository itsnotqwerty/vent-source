.class final Lcom/vent/ActRegister1$2;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister1;->Cd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXu:Lcom/vent/ActRegister1;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    iget-object v0, v0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActRegister1$2;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    const v2, 0x7f0f008b

    invoke-virtual {v1, v2}, Lcom/vent/ActRegister1;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    iget-object v3, v3, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActRegister1$2$3;

    invoke-direct {v1, p0}, Lcom/vent/ActRegister1$2$3;-><init>(Lcom/vent/ActRegister1$2;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0022

    new-instance v2, Lcom/vent/ActRegister1$2$2;

    invoke-direct {v2, p0}, Lcom/vent/ActRegister1$2$2;-><init>(Lcom/vent/ActRegister1$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f009e

    new-instance v2, Lcom/vent/ActRegister1$2$1;

    invoke-direct {v2, p0}, Lcom/vent/ActRegister1$2$1;-><init>(Lcom/vent/ActRegister1$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    iput-boolean v4, v0, Lcom/vent/ActRegister1;->bUV:Z

    goto :goto_0
.end method
