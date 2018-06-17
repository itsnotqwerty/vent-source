.class public Lio/intercom/android/sdk/blocks/ConversationRatingCard;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/ConversationRatingBlock;


# static fields
.field private static final ANIMATION_DURATION_MS:J = 0xc8L

.field private static final DESELECTED_RATING_SCALE:F = 1.0f

.field private static final DIALOG_HORIZONTAL_MARGIN:F = 16.0f

.field private static final RATING_HORIZONTAL_PADDING:F = 17.0f

.field private static final RATING_VERTICAL_PADDING:F = 14.0f

.field private static final SELECTED_RATING_SCALE:F = 1.2f


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationId:Ljava/lang/String;

.field private conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

.field private final deselectedFilter:Landroid/graphics/ColorFilter;

.field private longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

.field private final ratingClickListener:Landroid/view/View$OnClickListener;

.field private final ratingViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private rootLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/Api;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/api/Api;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationId:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->requestManager:Lio/intercom/a/a/a/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingViews:Ljava/util/List;

    invoke-static {}, Lio/intercom/android/sdk/utilities/ColorUtils;->newGreyscaleFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->deselectedFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Lio/intercom/android/sdk/blocks/models/ConversationRating;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    return-object v0
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->updateSelectedRating()V

    return-void
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->showRemarkDialog(Landroid/content/Context;)V

    return-void
.end method

.method private createConversationRatingBlock(Lio/intercom/android/sdk/blocks/models/ConversationRating;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-static {v2}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->newInstance(Landroid/content/Context;)Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_conversation_rating_block:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->updateViewVisibility()V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_rating_tell_us_more_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v1

    new-instance v3, Lio/intercom/android/sdk/views/ButtonSelector;

    sget v4, Lio/intercom/android/sdk/R$drawable;->intercom_border:I

    invoke-direct {v3, v2, v4, v1}, Lio/intercom/android/sdk/views/ButtonSelector;-><init>(Landroid/content/Context;II)V

    invoke-static {v0, v3}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    new-instance v1, Lio/intercom/android/sdk/blocks/ConversationRatingCard$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$2;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->setupRatingsLayout()V

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->updateSelectedRating()V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private deselectView(Landroid/widget/ImageView;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->deselectedFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private findSelectedOption()Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;->getIndex()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRatingIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static imageUrlForUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://js.intercomcdn.com/images/stickers/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectView(FLandroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method private setupRatingsLayout()V
    .locals 12

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_rating_options_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1, v4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v5

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1, v4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v6

    move v2, v3

    :goto_0
    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lio/intercom/android/sdk/R$dimen;->intercom_conversation_rating_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x11

    invoke-direct {v10, v9, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v6, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setLongClickable(Z)V

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;->getUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->imageUrlForUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    new-instance v10, Lio/intercom/android/sdk/blocks/ConversationRatingCard$3;

    invoke-direct {v10, p0, v8}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$3;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/widget/ImageView;)V

    iget-object v11, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v9, v1, v10, v11}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->loadImage(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingViews:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showRemarkDialog(Landroid/content/Context;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    new-instance v1, Landroid/support/v7/app/c$a;

    invoke-direct {v1, p1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_tell_us_more:I

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->setView(Landroid/view/View;)Landroid/support/v7/app/c$a;

    const v0, 0x104000a

    new-instance v2, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;

    invoke-direct {v2, p0, v4}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    const/high16 v0, 0x1040000

    new-instance v2, Lio/intercom/android/sdk/blocks/ConversationRatingCard$6;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$6;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {v1}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/c;->show()V

    new-instance v0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/support/v7/app/c;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1, v8}, Landroid/support/v7/app/c;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v1, v7}, Landroid/support/v7/app/c;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private updateSelectedRating()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->ratingViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRatingIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->selectView(FLandroid/widget/ImageView;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRatingIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;->getIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->selectView(FLandroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->deselectView(Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method private updateViewVisibility()V
    .locals 6

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRatingIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    move v1, v0

    :goto_1
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationRating:Lio/intercom/android/sdk/blocks/models/ConversationRating;

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v0

    :goto_2
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v4, Lio/intercom/android/sdk/R$id;->rate_your_conversation_text_view:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v4, Lio/intercom/android/sdk/R$id;->intercom_rating_options_layout:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v4, Lio/intercom/android/sdk/R$id;->intercom_rating_tell_us_more_button:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_7

    :cond_2
    move v1, v5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_you_rated_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_8

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->findSelectedOption()Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rootLayout:Landroid/widget/LinearLayout;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_you_rated_image_view:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;->getUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->imageUrlForUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->longTermImageLoader:Lio/intercom/android/sdk/imageloader/LongTermImageLoader;

    new-instance v3, Lio/intercom/android/sdk/blocks/ConversationRatingCard$4;

    invoke-direct {v3, p0, v0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard$4;-><init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v2, v1, v3, v0}, Lio/intercom/android/sdk/imageloader/LongTermImageLoader;->loadImage(Ljava/lang/String;Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;Lio/intercom/a/a/a/j;)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    move v2, v5

    goto :goto_6
.end method


# virtual methods
.method public addConversationRatingBlock(Lio/intercom/android/sdk/blocks/models/ConversationRating;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p4}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->createConversationRatingBlock(Lio/intercom/android/sdk/blocks/models/ConversationRating;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method addRemarkToConversation(Lio/intercom/android/sdk/blocks/models/ConversationRating;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->setRemark(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/api/Api;->addConversationRatingRemark(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->updateViewVisibility()V

    goto :goto_0
.end method

.method rateConversation(Lio/intercom/android/sdk/blocks/models/ConversationRating;Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;)V
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getRatingIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;->getIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->setRatingIndex(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->conversationId:Ljava/lang/String;

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;->getIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/api/Api;->rateConversation(Ljava/lang/String;I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->updateViewVisibility()V

    goto :goto_0
.end method
