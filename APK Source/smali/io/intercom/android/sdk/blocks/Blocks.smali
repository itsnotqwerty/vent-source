.class public Lio/intercom/android/sdk/blocks/Blocks;
.super Ljava/lang/Object;


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/Blocks;->inflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Blocks;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method


# virtual methods
.method public createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;",
            "Lio/intercom/android/sdk/blocks/BlocksViewHolder;",
            ")",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Blocks;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->getLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v6, v7

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/blocks/models/Block;

    if-nez v6, :cond_0

    move v4, v8

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_1

    move v5, v8

    :goto_2
    :try_start_0
    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/BlockType;->getView(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/blocks/models/Block;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lio/intercom/android/sdk/blocks/BlockTypeNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Blocks;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v4, "Error creating view for block with type %s "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v1, v0, v4, v5}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    return-object v3
.end method
