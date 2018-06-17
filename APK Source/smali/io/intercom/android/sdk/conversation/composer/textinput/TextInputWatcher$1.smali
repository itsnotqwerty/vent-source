.class Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher$1;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher$1;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher;->shouldSendIsTyping:Z

    return-void
.end method
