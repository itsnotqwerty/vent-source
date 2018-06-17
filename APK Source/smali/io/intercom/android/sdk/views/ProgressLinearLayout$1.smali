.class Lio/intercom/android/sdk/views/ProgressLinearLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadNotice(B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

.field final synthetic val$percentUploaded:B


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/ProgressLinearLayout;B)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iput-byte p2, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->val$percentUploaded:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    iget-byte v1, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->val$percentUploaded:B

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/UploadProgressBar;->setProgress(I)V

    iget-byte v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->val$percentUploaded:B

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;->this$0:Lio/intercom/android/sdk/views/ProgressLinearLayout;

    iget-object v0, v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    new-instance v1, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/views/ProgressLinearLayout$1$1;-><init>(Lio/intercom/android/sdk/views/ProgressLinearLayout$1;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/UploadProgressBar;->smoothEndAnimation(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
