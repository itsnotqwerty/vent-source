.class Lio/intercom/android/sdk/experimental/RealIntercom$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/experimental/RealIntercom;->softRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/experimental/RealIntercom;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/experimental/RealIntercom;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/RealIntercom$2;->this$0:Lio/intercom/android/sdk/experimental/RealIntercom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom$2;->this$0:Lio/intercom/android/sdk/experimental/RealIntercom;

    invoke-static {v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->access$000(Lio/intercom/android/sdk/experimental/RealIntercom;)Lio/intercom/android/sdk/overlay/OverlayPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->refreshStateBecauseUserIdentityIsNotInStoreYet()V

    return-void
.end method
