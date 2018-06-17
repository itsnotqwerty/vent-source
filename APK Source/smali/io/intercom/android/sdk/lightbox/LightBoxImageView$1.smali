.class Lio/intercom/android/sdk/lightbox/LightBoxImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/lightbox/LightBoxImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/lightbox/LightBoxImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/lightbox/LightBoxImageView$1;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/lightbox/LightBoxImageView$1;->this$0:Lio/intercom/android/sdk/lightbox/LightBoxImageView;

    iget-object v0, v0, Lio/intercom/android/sdk/lightbox/LightBoxImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
