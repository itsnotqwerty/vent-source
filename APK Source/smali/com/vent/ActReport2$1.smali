.class final Lcom/vent/ActReport2$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActReport2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXM:Lcom/vent/ActReport2;


# direct methods
.method constructor <init>(Lcom/vent/ActReport2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    iput-object p1, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    const/4 v1, 0x0

    const v6, 0x7f0f0104

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/ActReport2;->bTT:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    iget-object v0, v0, Lcom/vent/ActReport2;->bXL:Lcom/vent/a/u;

    iget v0, v0, Lcom/vent/a/u;->ckL:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    iget-object v0, v0, Lcom/vent/ActReport2;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    iget-object v1, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    iget-object v1, v1, Lcom/vent/ActReport2;->bXE:Lcom/vent/a/x;

    invoke-static {v0, v1}, Lcom/vent/ActReport3;->a(Landroid/app/Activity;Lcom/vent/a/x;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    invoke-static {v0}, Lcom/vent/ax;->aR(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    invoke-static {v0}, Lcom/vent/ax;->aS(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    invoke-static {v0}, Lcom/vent/ax;->bi(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/ActReport2$1;->bXM:Lcom/vent/ActReport2;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0129

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0103

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActReport2$1$1;

    invoke-direct {v1, p0}, Lcom/vent/ActReport2$1$1;-><init>(Lcom/vent/ActReport2$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
