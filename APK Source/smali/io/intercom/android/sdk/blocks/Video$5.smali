.class Lio/intercom/android/sdk/blocks/Video$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/Video;->setFailedImage(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/Video;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/Video;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Video$5;->this$0:Lio/intercom/android/sdk/blocks/Video;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Video$5;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Video$5;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Video$5;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_video_thumbnail_fallback:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
