.class Lio/intercom/android/sdk/overlay/DefaultLauncher$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/DefaultLauncher;->callListenerWithFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/DefaultLauncher;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$2;->this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$2;->this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/DefaultLauncher;->listener:Lio/intercom/android/sdk/overlay/DefaultLauncher$Listener;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/DefaultLauncher$2;->this$0:Lio/intercom/android/sdk/overlay/DefaultLauncher;

    iget-object v1, v1, Lio/intercom/android/sdk/overlay/DefaultLauncher;->launcherRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/overlay/DefaultLauncher$Listener;->onLauncherClicked(Landroid/content/Context;)V

    return-void
.end method
