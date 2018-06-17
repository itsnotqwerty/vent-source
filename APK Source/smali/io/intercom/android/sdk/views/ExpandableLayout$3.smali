.class Lio/intercom/android/sdk/views/ExpandableLayout$3;
.super Lio/intercom/android/sdk/views/AnimatorEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/views/ExpandableLayout;->playExpandAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/views/ExpandableLayout;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/ExpandableLayout$3;->this$0:Lio/intercom/android/sdk/views/ExpandableLayout;

    iput-object p2, p0, Lio/intercom/android/sdk/views/ExpandableLayout$3;->val$child:Landroid/view/View;

    invoke-direct {p0}, Lio/intercom/android/sdk/views/AnimatorEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$3;->val$child:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
