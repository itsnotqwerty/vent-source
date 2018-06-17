.class Lio/intercom/android/sdk/lightbox/LightBoxImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/lightbox/LightBoxImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/lightbox/LightBoxImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/lightbox/LightBoxImageView$GestureListener;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxImageView$GestureListener;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;

    iget-object v0, v0, Lio/intercom/android/sdk/lightbox/LightBoxImageView;->lightBoxListener:Lio/intercom/android/sdk/lightbox/LightBoxListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxImageView$GestureListener;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;

    iget-object v0, v0, Lio/intercom/android/sdk/lightbox/LightBoxImageView;->lightBoxListener:Lio/intercom/android/sdk/lightbox/LightBoxListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/lightbox/LightBoxListener;->closeLightBox()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
