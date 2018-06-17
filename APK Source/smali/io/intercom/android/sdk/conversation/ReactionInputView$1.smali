.class Lio/intercom/android/sdk/conversation/ReactionInputView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/ReactionInputView;->setUpReactions(Lio/intercom/android/sdk/models/ReactionReply;ZLio/intercom/android/sdk/conversation/ReactionListener;Lio/intercom/a/a/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

.field final synthetic val$animated:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reactionCount:I

.field final synthetic val$reactionImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ReactionInputView;Landroid/widget/ImageView;IZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$reactionImageView:Landroid/widget/ImageView;

    iput p3, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$reactionCount:I

    iput-boolean p4, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$animated:Z

    iput-object p5, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$reactionImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget v1, v0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionsLoaded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionsLoaded:I

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget v0, v0, Lio/intercom/android/sdk/conversation/ReactionInputView;->reactionsLoaded:I

    iget v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$reactionCount:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$animated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    invoke-virtual {v1}, Lio/intercom/android/sdk/conversation/ReactionInputView;->getHeight()I

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ReactionInputView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ReactionInputView$1;->this$0:Lio/intercom/android/sdk/conversation/ReactionInputView;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setVisibility(I)V

    goto :goto_0
.end method
