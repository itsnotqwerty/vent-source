.class Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;
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

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->access$000(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;)Lcom/intercom/composer/b;

    move-result-object v0

    const-string v1, "text_input"

    invoke-virtual {v0, v1}, Lcom/intercom/composer/b;->ds(Ljava/lang/String;)Lcom/intercom/composer/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v0, v1, v2, v2}, Lcom/intercom/composer/ComposerView;->a(Lcom/intercom/composer/b/b;ZZ)Z

    :cond_0
    return-void
.end method
