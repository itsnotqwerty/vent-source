.class public Lio/intercom/android/sdk/conversation/ReactionInputView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final REACTION_SCALE:F = 2.5f

.field private static final VIBRATION_DURATION_MS:I = 0xa


# instance fields
.field private final deselectedFilter:Landroid/graphics/ColorFilter;

.field highlightedViewIndex:Ljava/lang/Integer;

.field private listener:Lio/intercom/android/sdk/conversation/ReactionListener;

.field private final longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

.field private reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

.field private final reactionViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field reactionsLoaded:I

.field private final touchListener:Landroid/view/View$OnTouchListener;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/android/sdk/conversation/ReactionInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightedViewIndex:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionsLoaded:I

    new-instance v0, Lio/intercom/android/sdk/conversation/ReactionInputView$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/conversation/ReactionInputView$2;-><init>(Lio/intercom/android/sdk/conversation/ReactionInputView;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->touchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionViews:Ljava/util/List;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->vibrator:Landroid/os/Vibrator;

    :goto_0
    invoke-static {}, Lio/intercom/android/sdk/utilities/ColorUtils;->newGreyscaleFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->deselectedFilter:Landroid/graphics/ColorFilter;

    return-void

    :cond_0
    invoke-static {p1}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->newInstance(Landroid/content/Context;)Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->vibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method


# virtual methods
.method deselectViewAtIndex(I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->deselectedFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method getCurrentSelectedIndex()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionIndex()Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Reaction;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method handleTouchUp()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightedViewIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightedViewIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightedViewIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionSet()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionSet()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightedViewIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Reaction;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/models/ReactionReply;->setReactionIndex(I)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->listener:Lio/intercom/android/sdk/conversation/ReactionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->listener:Lio/intercom/android/sdk/conversation/ReactionListener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/conversation/ReactionListener;->onReactionSelected(Lio/intercom/android/sdk/models/Reaction;)V

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightSelectedReaction()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->highlightedViewIndex:Ljava/lang/Integer;

    return-void
.end method

.method highlightSelectedReaction()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionIndex()Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Reaction;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/conversation/ReactionInputView;->selectViewAtIndex(FI)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/conversation/ReactionInputView;->deselectViewAtIndex(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    invoke-virtual {v0}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t close LongTermImageLoader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public preloadReactionImages(Lio/intercom/android/sdk/models/ReactionReply;Lio/intercom/a/a/a/j;)V
    .locals 4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Reaction;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Reaction;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->loadImage(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method selectViewAtIndex(FI)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method public setUpReactions(Lio/intercom/android/sdk/models/ReactionReply;ZLio/intercom/android/sdk/conversation/ReactionListener;Lio/intercom/a/a/a/j;)V
    .locals 13

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    move-object/from16 v0, p3

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->listener:Lio/intercom/android/sdk/conversation/ReactionListener;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionSet()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_reaction_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v2, v1, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lio/intercom/android/sdk/R$dimen;->intercom_reaction_offset:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionViews:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lio/intercom/android/sdk/models/Reaction;

    iget-object v11, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    invoke-virtual {v7}, Lio/intercom/android/sdk/models/Reaction;->getImageUrl()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lio/intercom/android/sdk/conversation/ReactionInputView$1;

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lio/intercom/android/sdk/conversation/ReactionInputView$1;-><init>(Lio/intercom/android/sdk/conversation/ReactionInputView;Landroid/widget/ImageView;IZLandroid/content/Context;)V

    move-object/from16 v0, p4

    invoke-virtual {v11, v12, v1, v0}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->loadImage(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v8}, Lio/intercom/android/sdk/conversation/ReactionInputView;->deselectViewAtIndex(I)V

    :cond_0
    invoke-virtual {p0, v10}, Lio/intercom/android/sdk/conversation/ReactionInputView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method vibrateForSelection()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lio/intercom/android/sdk/commons/utilities/DeviceUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
