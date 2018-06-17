.class Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;-><init>(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;Landroid/widget/FrameLayout;Landroid/support/v4/app/n;Landroid/view/LayoutInflater;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/store/Store;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$2;->this$0:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$2;->this$0:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->access$100(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)Lio/intercom/android/sdk/conversation/composer/InputProvider;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/InputProvider;->getInputs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
