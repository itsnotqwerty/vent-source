.class Lio/intercom/android/sdk/profile/ProfilePresenter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/profile/ProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/profile/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->trackOpenMetric()V

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iput-boolean v2, v0, Lio/intercom/android/sdk/profile/ProfilePresenter;->isAnimating:Z

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    iput-object v1, v0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iput-boolean v2, v0, Lio/intercom/android/sdk/profile/ProfilePresenter;->isAnimating:Z

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->COLLAPSED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    iput-object v1, v0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;->this$0:Lio/intercom/android/sdk/profile/ProfilePresenter;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->IDLE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    iput-object v1, v0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    goto :goto_0
.end method
