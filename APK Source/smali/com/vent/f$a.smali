.class final Lcom/vent/f$a;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bUF:Lcom/vent/CachedImageView;

.field final bWe:Landroid/view/View;

.field final bZI:Landroid/widget/TextView;

.field final bZJ:Landroid/widget/TextView;

.field final bZK:Landroid/widget/TextView;

.field final bZL:Landroid/widget/TextView;

.field final bZM:Landroid/widget/TextView;

.field final bZN:Landroid/view/View;

.field final synthetic bZO:Lcom/vent/f;


# direct methods
.method constructor <init>(Lcom/vent/f;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vent/CachedImageView;

    iput-object v1, p0, Lcom/vent/f$a;->bUF:Lcom/vent/CachedImageView;

    iget-object v1, p0, Lcom/vent/f$a;->bUF:Lcom/vent/CachedImageView;

    sget v2, Lcom/vent/MyApplication;->cgm:I

    sget v3, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v1, v2, v3}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v1, p0, Lcom/vent/f$a;->bUF:Lcom/vent/CachedImageView;

    const v2, 0x7f08012b

    invoke-virtual {v1, v2}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v1, p0, Lcom/vent/f$a;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v1, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/f$a;->bZI:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vent/f$a;->bZI:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/f$a;->bZJ:Landroid/widget/TextView;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/f$a;->bZK:Landroid/widget/TextView;

    const v1, 0x7f0902cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/f$a;->bZL:Landroid/widget/TextView;

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/f$a;->bZM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vent/f$a;->bZM:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/f$a;->bZN:Landroid/view/View;

    iget-object v1, p0, Lcom/vent/f$a;->bZN:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/f$a;->bWe:Landroid/view/View;

    return-void
.end method

.method private a(Lcom/layer/sdk/messaging/Conversation;IIILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-static {v0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/support/v7/app/c$a;

    invoke-direct {v1, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/f$a$1;

    invoke-direct {v1, p0, p1, p5}, Lcom/vent/f$a$1;-><init>(Lcom/vent/f$a;Lcom/layer/sdk/messaging/Conversation;Ljava/lang/String;)V

    invoke-virtual {v0, p4, v1}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vent/f$a;->getAdapterPosition()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/f;

    iget-object v2, v1, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v2, :cond_0

    new-instance v3, Landroid/support/v7/app/c$a;

    invoke-direct {v3, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0043

    invoke-virtual {v3, v0}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v3, 0x7f0f0140

    invoke-virtual {v0, v3}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v3, 0x7f0f0042

    new-instance v5, Lcom/vent/f$a$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/vent/f$a$2;-><init>(Lcom/vent/f$a;Lcom/vent/a/e;Lcom/vent/a/f;)V

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->CF()Lcom/layer/sdk/LayerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vent/a/f;->d(Lcom/layer/sdk/messaging/Conversation;)Z

    move-result v0

    if-nez v0, :cond_2

    const v2, 0x7f0f00b8

    const v3, 0x7f0f017e

    const v4, 0x7f0f00b7

    const-string v5, "true"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/f$a;->a(Lcom/layer/sdk/messaging/Conversation;IIILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    goto :goto_1

    :cond_2
    const v2, 0x7f0f0150

    const v3, 0x7f0f017f

    const v4, 0x7f0f014f

    const-string v5, "false"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/f$a;->a(Lcom/layer/sdk/messaging/Conversation;IIILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    if-nez v2, :cond_6

    :goto_2
    if-nez v4, :cond_8

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-virtual {v2}, Lcom/vent/f;->CF()Lcom/layer/sdk/LayerClient;

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_1
    iget-object v3, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Conversation;->getParticipants()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/messaging/Identity;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/vent/a/m;

    invoke-direct {v5, v2}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v3, Lcom/vent/a/x;

    invoke-direct {v3}, Lcom/vent/a/x;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iput-object v5, v3, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    if-nez v3, :cond_5

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-virtual {v2}, Lcom/vent/f;->CF()Lcom/layer/sdk/LayerClient;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_3
    iget-object v1, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/layer/sdk/LayerClient;->getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Conversation;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Metadata;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v4, "muted_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/vent/a/m;

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v2, Lcom/vent/a/x;

    invoke-direct {v2}, Lcom/vent/a/x;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iput-object v4, v2, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v3, v2

    :cond_5
    :goto_4
    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    iget-object v1, v1, Lcom/vent/f;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    sget-object v2, Lcom/vent/bb;->ciN:Ljava/util/HashMap;

    invoke-static {v0, v1, v3, v2}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/vent/a/e;->EQ()Lcom/vent/a/x;

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v4

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v3

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    goto :goto_4

    :sswitch_3
    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Lcom/vent/ActChat;->a(Lcom/vent/a;Lcom/vent/a/e;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_5

    :cond_8
    move-object v3, v4

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x7f0900bc -> :sswitch_0
        0x7f0901aa -> :sswitch_3
        0x7f0901e3 -> :sswitch_1
        0x7f090232 -> :sswitch_2
    .end sparse-switch
.end method
