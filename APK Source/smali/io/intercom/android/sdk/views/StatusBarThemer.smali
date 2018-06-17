.class public Lio/intercom/android/sdk/views/StatusBarThemer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setStatusBarColor(ILandroid/view/Window;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, p0, v0}, Lio/intercom/android/sdk/views/StatusBarThemer;->setStatusBarColor(ILandroid/view/Window;I)V

    return-void
.end method
