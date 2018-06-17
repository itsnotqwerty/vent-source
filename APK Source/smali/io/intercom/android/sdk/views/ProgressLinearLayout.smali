.class public Lio/intercom/android/sdk/views/ProgressLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lio/intercom/android/sdk/conversation/UploadProgressListener;


# instance fields
.field attachmentIcon:Landroid/widget/ImageView;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/ProgressLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method


# virtual methods
.method public setAttachmentIcon(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->attachmentIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setUploadProgressBar(Lio/intercom/android/sdk/views/UploadProgressBar;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    return-void
.end method

.method public uploadNotice(B)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "progress"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/views/ProgressLinearLayout$1;-><init>(Lio/intercom/android/sdk/views/ProgressLinearLayout;B)V

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uploadStarted()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/UploadProgressBar;->smoothStartAnimation()V

    return-void
.end method

.method public uploadStopped()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/ProgressLinearLayout;->uploadProgressBar:Lio/intercom/android/sdk/views/UploadProgressBar;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/UploadProgressBar;->hideBar()V

    return-void
.end method
