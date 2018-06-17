.class Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomArticleActivity;->updateContent(Lio/intercom/android/sdk/models/Link;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-static {v0, p0}, Lio/intercom/android/sdk/utilities/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarEnabled:Z

    :cond_0
    return-void
.end method
