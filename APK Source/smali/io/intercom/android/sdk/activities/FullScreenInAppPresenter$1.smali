.class Lio/intercom/android/sdk/activities/FullScreenInAppPresenter$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;->closeWindow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter$1;->this$0:Lio/intercom/android/sdk/activities/FullScreenInAppPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/FullScreenInAppPresenter$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
