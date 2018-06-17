.class final Lcom/vent/d/f$19$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f$19;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic coa:Lcom/vent/d/f$19;


# direct methods
.method constructor <init>(Lcom/vent/d/f$19;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/16 v3, 0x1a6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/vent/d/f$19$1;->ccY:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vent/d/f$19$1;->ccY:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/vent/d/f$19$1;->ccY:I

    const/16 v1, 0x12b

    if-ge v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v0, v0, Lcom/vent/d/f$19;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/support/v7/app/c$a;

    iget-object v0, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v0, v0, Lcom/vent/d/f$19;->bXe:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v2, v0, Lcom/vent/d/f$19;->bXe:Landroid/app/Activity;

    iget v0, p0, Lcom/vent/d/f$19$1;->ccY:I

    if-ne v0, v3, :cond_2

    const v0, 0x7f0f007e

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v4, v4, Lcom/vent/d/f$19;->cbv:Lcom/vent/a/x;

    iget-object v4, v4, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v5, v5, Lcom/vent/d/f$19;->cnZ:Lcom/vent/a/k;

    invoke-virtual {v5}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    :goto_1
    iget-object v0, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v0, v0, Lcom/vent/d/f$19;->cnO:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v0, v0, Lcom/vent/d/f$19;->cnO:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0f007d

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v0, v0, Lcom/vent/d/f$19;->bXe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vent/d/f$19$1;->coa:Lcom/vent/d/f$19;

    iget-object v1, v1, Lcom/vent/d/f$19;->bXe:Landroid/app/Activity;

    iget v2, p0, Lcom/vent/d/f$19$1;->ccU:I

    iget-object v3, p0, Lcom/vent/d/f$19$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method
