.class abstract Lcom/vent/f;
.super Lcom/vent/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<",
        "Lcom/vent/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field bZH:Z


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vent/l;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method final Bc()Lcom/vent/ba;
    .locals 1

    iget-object v0, p0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/a;->Bc()Lcom/vent/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final CB()V
    .locals 0

    return-void
.end method

.method public final CC()V
    .locals 0

    invoke-super {p0}, Lcom/vent/l;->CC()V

    return-void
.end method

.method final CD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vent/f;->bZH:Z

    return v0
.end method

.method abstract CE()V
.end method

.method final CF()Lcom/layer/sdk/LayerClient;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vent/a;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method final Cw()I
    .locals 1

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v0

    return v0
.end method

.method final aZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vent/f;->bZH:Z

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vent/f;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/l;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/f;->CL()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    iget-object v0, v0, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isEmpty()Z
    .locals 1

    sget-object v0, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 8

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/f;->CE()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/vent/f$a;

    invoke-virtual {p0}, Lcom/vent/f;->CL()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/vent/f;->Bc()Lcom/vent/ba;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vent/f;->CF()Lcom/layer/sdk/LayerClient;

    move-result-object v4

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v1

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/vent/ba;->g(Landroid/content/Context;Z)V

    :cond_2
    if-nez v1, :cond_7

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p1, Lcom/vent/f$a;->bUF:Lcom/vent/CachedImageView;

    sget v6, Lcom/vent/MyApplication;->cgm:I

    sget v7, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v0, v5, v6, v7}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    :goto_3
    iget-object v5, p1, Lcom/vent/f$a;->bZI:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/vent/a/f;->cjN:Ljava/lang/String;

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v5, v0, Lcom/vent/ba;->state:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_3

    :try_start_0
    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v5, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getLastMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/vent/a/f;->b(Landroid/content/Context;Lcom/layer/sdk/messaging/Message;)V
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_4
    iget-object v5, p1, Lcom/vent/f$a;->bZJ:Landroid/widget/TextView;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/vent/f$a;->bZK:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    if-nez v0, :cond_a

    :cond_4
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    iget v0, v3, Lcom/vent/ba;->state:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_5

    :try_start_1
    iget-object v0, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/a/f;->cjM:Ljava/lang/Long;
    :try_end_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_7
    if-eqz v1, :cond_c

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/vent/MyApplication;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    iget-object v2, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/vent/a/f;->a(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;)Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_c

    const/4 v0, 0x1

    move v2, v0

    :goto_9
    if-nez v1, :cond_d

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_b
    if-nez v2, :cond_f

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_f

    iget-object v3, p1, Lcom/vent/f$a;->bZL:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vent/f$a;->bZL:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    iget-object v1, p1, Lcom/vent/f$a;->bZM:Landroid/widget/TextView;

    if-eqz v2, :cond_10

    const v0, 0x7f0f014f

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/vent/f$a;->bZM:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/vent/f$a;->bZN:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vent/f$a;->bWe:Landroid/view/View;

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/f;

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/vent/a/f;->EQ()Lcom/vent/a/x;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->printStackTrace()V

    goto/16 :goto_4

    :cond_9
    iget-object v0, v1, Lcom/vent/a/f;->cjN:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/e;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    iget-object v0, v1, Lcom/vent/a/f;->cjO:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/e;->m(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->printStackTrace()V

    goto/16 :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9

    :cond_d
    iget-object v0, v1, Lcom/vent/a/f;->cjM:Ljava/lang/Long;

    goto :goto_a

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_f
    iget-object v0, p1, Lcom/vent/f$a;->bZL:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_10
    const v0, 0x7f0f00b7

    goto :goto_d

    :cond_11
    const/16 v0, 0x8

    goto :goto_e
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/l;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/f$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/f$a;-><init>(Lcom/vent/f;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
