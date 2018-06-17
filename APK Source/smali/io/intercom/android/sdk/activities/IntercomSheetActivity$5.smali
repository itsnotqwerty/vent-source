.class Lio/intercom/android/sdk/activities/IntercomSheetActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomSheetActivity;->animateWindowOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->finish()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-virtual {v0, v1, v1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->overridePendingTransition(II)V

    return-void
.end method
