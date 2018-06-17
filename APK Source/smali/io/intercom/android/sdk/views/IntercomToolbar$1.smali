.class Lio/intercom/android/sdk/views/IntercomToolbar$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/views/IntercomToolbar;->fadeOutTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/views/IntercomToolbar;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/IntercomToolbar;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/IntercomToolbar$1;->this$0:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar$1;->this$0:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget-object v0, v0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
