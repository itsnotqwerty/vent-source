.class public Lio/intercom/android/sdk/activities/IntercomArticleActivity;
.super Lio/intercom/android/sdk/activities/IntercomBaseActivity;


# static fields
.field private static final ENTRANCE_ANIMATION_TIME_MS:I = 0x12c

.field private static final EXIT_ANIMATION_TIME_MS:I = 0x96

.field public static final LINK_TRANSITION_KEY:Ljava/lang/String; = "link_background"

.field private static final PARCEL_CONVERSATION_ID:Ljava/lang/String; = "parcel_conversation_id"

.field private static final PARCEL_LINK_ID:Ljava/lang/String; = "parcel_link_id"

.field private static final PARCEL_PART_ID:Ljava/lang/String; = "parcel_part_id"


# instance fields
.field api:Lio/intercom/android/sdk/api/Api;

.field private final apiCallback:Lio/intercom/android/sdk/api/BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/api/BaseCallback",
            "<",
            "Lio/intercom/android/sdk/models/LinkResponse$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private author:Landroid/widget/TextView;

.field private avatar:Landroid/widget/ImageView;

.field private avatarSize:I

.field private composerLayout:Landroid/view/View;

.field conversationId:Ljava/lang/String;

.field private description:Landroid/widget/TextView;

.field private intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

.field private linkContainer:Landroid/widget/LinearLayout;

.field linkId:Ljava/lang/String;

.field linkView:Landroid/widget/FrameLayout;

.field loadingView:Landroid/widget/ProgressBar;

.field metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private noteHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private partId:Ljava/lang/String;

.field private reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

.field private requestManager:Lio/intercom/a/a/a/j;

.field scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

.field private timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

.field private title:Landroid/widget/TextView;

.field titleBar:Landroid/widget/FrameLayout;

.field titleBarEnabled:Z

.field titleBarText:Landroid/widget/TextView;

.field titleSize:I

.field private updated:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->conversationId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->partId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkId:Ljava/lang/String;

    iput v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleSize:I

    iput-boolean v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarEnabled:Z

    new-instance v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->apiCallback:Lio/intercom/android/sdk/api/BaseCallback;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)Lio/intercom/android/sdk/api/BaseCallback;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->apiCallback:Lio/intercom/android/sdk/api/BaseCallback;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)Lio/intercom/android/sdk/views/IntercomErrorView;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    return-object v0
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/activities/IntercomArticleActivity;Lio/intercom/android/sdk/models/Link;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->updateContent(Lio/intercom/android/sdk/models/Link;)V

    return-void
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->partId:Ljava/lang/String;

    return-object v0
.end method

.method public static buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "parcel_link_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "parcel_part_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "parcel_conversation_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private enterTransition()Landroid/transition/Transition;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    new-instance v1, Landroid/support/v4/view/b/b;

    invoke-direct {v1}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    return-object v0
.end method

.method private fadeOutView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private returnTransition()Landroid/transition/Transition;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    new-instance v1, Landroid/support/v4/view/b/b;

    invoke-direct {v1}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    return-object v0
.end method

.method private setAuthorSpannable(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Written by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v1, v2

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->author:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContent(Lio/intercom/android/sdk/models/Link;)V
    .locals 12

    const-wide/16 v10, 0x12c

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getAuthor()Lio/intercom/android/sdk/blocks/models/Author;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Author;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lio/intercom/android/sdk/models/Avatar;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->avatar:Landroid/widget/ImageView;

    iget v3, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->avatarSize:I

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v1, v2, v3, v0, v4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->createAvatar(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;ILio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->description:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getAuthor()Lio/intercom/android/sdk/blocks/models/Author;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Author;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->setAuthorSpannable(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->updated:Landroid/widget/TextView;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getUpdated(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->noteHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->createLayoutFromBlocks(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Ljava/util/List;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v0, p0}, Lio/intercom/android/sdk/utilities/BlockUtils;->getBlockView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleSize:I

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setListener(Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v0, v7}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/ReactionReply;->isNull(Lio/intercom/android/sdk/models/ReactionReply;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_link_reaction_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v3}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v4}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v5}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setPadding(IIII)V

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v2, v0, v3}, Lio/intercom/android/sdk/conversation/ReactionInputView;->preloadReactionImages(Lio/intercom/android/sdk/models/ReactionReply;Lio/intercom/a/a/a/j;)V

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    new-instance v3, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;

    invoke-direct {v3, p0, p1}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;Lio/intercom/android/sdk/models/Link;)V

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v2, v0, v6, v3, v4}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setUpReactions(Lio/intercom/android/sdk/models/ReactionReply;ZLio/intercom/android/sdk/conversation/ReactionListener;Lio/intercom/a/a/a/j;)V

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->composerLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->composerLayout:Landroid/view/View;

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->composerLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->composerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomArticleActivity$6;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$6;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply;->getReactionIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->reaction_text:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_article_response:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method closeLink()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarEnabled:Z

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->fadeOutView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->composerLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->fadeOutView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBar:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->fadeOutView(Landroid/view/View;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedArticle(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->closeLink()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_activity_article:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "parcel_conversation_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->conversationId:Ljava/lang/String;

    const-string v1, "parcel_part_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->partId:Ljava/lang/String;

    const-string v1, "parcel_link_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkId:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lio/intercom/a/a/a/c;->b(Landroid/support/v4/app/j;)Lio/intercom/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v9

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->apiCallback:Lio/intercom/android/sdk/api/BaseCallback;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/api/Api;->getLink(Ljava/lang/String;Lio/intercom/retrofit2/Callback;)V

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v11

    new-instance v0, Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    sget v0, Lio/intercom/android/sdk/R$id;->link_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkView:Landroid/widget/FrameLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->link_title_bar:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBar:Landroid/widget/FrameLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->title_bar_text:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarText:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarText:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lio/intercom/android/sdk/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->loadingView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->loadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lio/intercom/android/sdk/R$id;->title:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lio/intercom/android/sdk/R$id;->description:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->description:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->reaction_input_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/conversation/ReactionInputView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    sget v0, Lio/intercom/android/sdk/R$id;->link_composer_container:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->composerLayout:Landroid/view/View;

    sget v0, Lio/intercom/android/sdk/R$id;->author:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->author:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->updated:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->updated:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->avatarSize:I

    sget v0, Lio/intercom/android/sdk/R$id;->avatar_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->avatar:Landroid/widget/ImageView;

    new-instance v0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;

    new-instance v1, Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/UploadingImageCache;-><init>()V

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->conversationId:Ljava/lang/String;

    new-instance v5, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;

    iget-object v6, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->api:Lio/intercom/android/sdk/api/Api;

    invoke-direct {v5, v6}, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;-><init>(Lio/intercom/android/sdk/api/Api;)V

    new-instance v6, Lio/intercom/android/sdk/blocks/LinkOpeningButtonClickListener;

    iget-object v7, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->api:Lio/intercom/android/sdk/api/Api;

    invoke-direct {v6, v7}, Lio/intercom/android/sdk/blocks/LinkOpeningButtonClickListener;-><init>(Lio/intercom/android/sdk/api/Api;)V

    iget-object v7, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v8

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v9

    iget-object v10, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-direct/range {v0 .. v10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;-><init>(Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/android/sdk/blocks/ButtonClickListener;Lio/intercom/a/a/a/j;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getNoteHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->noteHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    sget v0, Lio/intercom/android/sdk/R$id;->error_layout_article:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomErrorView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    invoke-virtual {v0, v11}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$1;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lio/intercom/android/sdk/R$id;->link_container:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->scroll_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ContentAwareScrollView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    sget v0, Lio/intercom/android/sdk/R$id;->dismiss:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$2;-><init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->enterTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->returnTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    sget v0, Lio/intercom/android/sdk/R$id;->link_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "link_background"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
