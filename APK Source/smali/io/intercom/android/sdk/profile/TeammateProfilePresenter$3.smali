.class Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/profile/TeammateProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/profile/TeammateProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->locationView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->locationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v1, v1, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->lastAdminLocation:Lio/intercom/android/sdk/models/Location;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/utilities/LocationFormatter;->getLocationString(Landroid/content/Context;Lio/intercom/android/sdk/models/Location;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v2, v2, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->locationView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;->this$0:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->locationView:Landroid/widget/TextView;

    sget-object v1, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-static {v0, p0, v1}, Lio/intercom/android/sdk/utilities/LocationFormatter;->postOnNextMinute(Landroid/view/View;Ljava/lang/Runnable;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    return-void
.end method
