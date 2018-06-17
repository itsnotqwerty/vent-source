.class abstract Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lio/intercom/android/sdk/views/holder/ConversationPartViewHolder;


# instance fields
.field final bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

.field protected final cellLayout:Landroid/view/ViewGroup;

.field private final clipboardManager:Landroid/content/ClipboardManager;

.field private final clipboardMessage:Ljava/lang/String;

.field final conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

.field final networkAvatar:Landroid/widget/ImageView;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p2, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    iput-object p3, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_copied_to_clipboard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->clipboardMessage:Ljava/lang/String;

    sget v0, Lio/intercom/android/sdk/R$id;->avatarView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->networkAvatar:Landroid/widget/ImageView;

    sget v0, Lio/intercom/android/sdk/R$id;->cellLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->cellLayout:Landroid/view/ViewGroup;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_bubble:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->bubble:Lio/intercom/android/sdk/views/ExpandableLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static appendLine(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method static getPartText(Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;
    .locals 5

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    sget-object v3, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder$1;->$SwitchMap$io$intercom$android$blocks$BlockType:[I

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/android/sdk/blocks/BlockType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/HtmlCompat;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v1, v0}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->appendLine(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->appendLine(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->appendLine(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->getSummary()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setUpRowFocusRules(Landroid/view/View;Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/views/ExpandableLayout;)V
    .locals 2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Lio/intercom/android/sdk/views/ExpandableLayout;->setAlpha(F)V

    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->UPLOAD_FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    const/high16 v0, 0x60000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_0
.end method


# virtual methods
.method checkForEntranceAnimation(ILio/intercom/android/sdk/models/Part;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->hasEntranceAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, v6}, Lio/intercom/android/sdk/models/Part;->setEntranceAnimation(Z)V

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->beginAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->SENDING:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v6}, Lio/intercom/android/sdk/models/Part;->setEntranceAnimation(Z)V

    invoke-virtual {p4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    invoke-virtual {p4, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3d380000    # -100.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->clipboardManager:Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->conversationListener:Lio/intercom/android/sdk/views/holder/ConversationListener;

    invoke-interface {v2, v1}, Lio/intercom/android/sdk/views/holder/ConversationListener;->getPart(I)Lio/intercom/android/sdk/models/Part;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->clipboardManager:Landroid/content/ClipboardManager;

    const-string v3, "message"

    invoke-static {v1}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->getPartText(Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->clipboardMessage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->twig:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setUpHolderBlocks(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p2, p4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p3}, Lio/intercom/android/sdk/views/holder/BlocksPartViewHolder;->setUpRowFocusRules(Landroid/view/View;Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/views/ExpandableLayout;)V

    return-object p4
.end method

.method showAvatar(Lio/intercom/android/sdk/models/Participant;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method
