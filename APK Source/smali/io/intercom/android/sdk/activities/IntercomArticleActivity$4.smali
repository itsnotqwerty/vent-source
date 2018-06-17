.class Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/views/ContentAwareScrollView$Listener;


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

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomReached()V
    .locals 0

    return-void
.end method

.method public onScrollChanged(I)V
    .locals 4

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-boolean v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleSize:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBar:Landroid/widget/FrameLayout;

    int-to-float v2, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBarText:Landroid/widget/TextView;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v2, v2, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->titleBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method
