.class public final Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;
.implements Lcom/layer/sdk/listeners/LayerProgressListener$BackgroundThread$Weak;


# static fields
.field private static bpt:Lcom/layer/sdk/LayerClient;


# instance fields
.field private boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

.field private bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field private bpv:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static b(Lcom/layer/sdk/LayerClient;)V
    .locals 0

    sput-object p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpt:Lcom/layer/sdk/LayerClient;

    invoke-static {p0}, Lcom/layer/atlas/util/imagepopup/a;->b(Lcom/layer/sdk/LayerClient;)V

    invoke-static {p0}, Lcom/layer/atlas/util/imagepopup/b;->b(Lcom/layer/sdk/LayerClient;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method public final ky()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/layer/atlas/b$c;->atlas_image_popup_background:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget v0, Lcom/layer/atlas/b$g;->atlas_image_popup:I

    invoke-virtual {p0, v0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->setContentView(I)V

    sget v0, Lcom/layer/atlas/b$f;->image_popup:I

    invoke-virtual {p0, v0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    sget v0, Lcom/layer/atlas/b$f;->image_popup_progress:I

    invoke-virtual {p0, v0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/ContentLoadingProgressBar;

    iput-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumDpi(I)V

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const-class v1, Lcom/layer/atlas/util/imagepopup/a;

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setBitmapDecoderClass(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const-class v1, Lcom/layer/atlas/util/imagepopup/b;

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setRegionDecoderClass(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "fullId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    const-string v0, "previewId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/layer/atlas/b/e/a$b;

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->show()V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/layer/atlas/b/e/a$b;->orientation:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v3

    iget v4, v1, Lcom/layer/atlas/b/e/a$b;->width:I

    iget v1, v1, Lcom/layer/atlas/b/e/a$b;->height:I

    invoke-virtual {v3, v4, v1}, Lcom/davemorrissey/labs/subscaleview/a;->as(II)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/a;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v3, 0x10e

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v3

    iget v4, v1, Lcom/layer/atlas/b/e/a$b;->height:I

    iget v1, v1, Lcom/layer/atlas/b/e/a$b;->width:I

    invoke-virtual {v3, v4, v1}, Lcom/davemorrissey/labs/subscaleview/a;->as(II)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/a;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v3

    iget v4, v1, Lcom/layer/atlas/b/e/a$b;->width:I

    iget v1, v1, Lcom/layer/atlas/b/e/a$b;->height:I

    invoke-virtual {v3, v4, v1}, Lcom/davemorrissey/labs/subscaleview/a;->as(II)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/a;)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v3, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-static {v3}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v3

    iget v4, v1, Lcom/layer/atlas/b/e/a$b;->height:I

    iget v1, v1, Lcom/layer/atlas/b/e/a$b;->width:I

    invoke-virtual {v3, v4, v1}, Lcom/davemorrissey/labs/subscaleview/a;->as(II)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/a;Lcom/davemorrissey/labs/subscaleview/a;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/a;->i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/a;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpu:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpt:Lcom/layer/sdk/LayerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/layer/sdk/LayerClient;->unregisterProgressListener(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)Lcom/layer/sdk/LayerClient;

    return-void
.end method

.method public final onProgressComplete(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onProgressError(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/atlas/util/b;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/layer/atlas/util/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onProgressStart(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onProgressUpdate(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;J)V
    .locals 5

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpv:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    long-to-double v0, p3

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/layer/atlas/util/imagepopup/AtlasImagePopupActivity;->bpt:Lcom/layer/sdk/LayerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/layer/sdk/LayerClient;->registerProgressListener(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)Lcom/layer/sdk/LayerClient;

    return-void
.end method
