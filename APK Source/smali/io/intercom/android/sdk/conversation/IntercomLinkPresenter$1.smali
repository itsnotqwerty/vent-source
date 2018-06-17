.class Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->setup(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/IntercomLinkView;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    iget-object v1, v1, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->intercomLinkView:Lio/intercom/android/sdk/views/IntercomLinkView;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-static {v2}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->access$000(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)Lio/intercom/android/sdk/Provider;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-static {v3}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->access$100(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)Lio/intercom/android/sdk/models/Part;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-static {v4}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->access$200(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;)Lio/intercom/android/sdk/api/Api;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/intercom/android/sdk/views/IntercomLinkView;->followIntercomLink(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/api/Api;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
