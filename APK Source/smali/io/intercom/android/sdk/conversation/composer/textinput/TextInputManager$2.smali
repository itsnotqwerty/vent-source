.class Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/b/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->createInput()Lcom/intercom/composer/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$2;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textToBeSent(Lcom/intercom/composer/b/b;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$2;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->access$100(Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;)Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;->onSendButtonPressed(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$2;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->access$200(Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;)Lio/intercom/android/sdk/store/Store;

    move-result-object v0

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->composerSendButtonPressed()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method
