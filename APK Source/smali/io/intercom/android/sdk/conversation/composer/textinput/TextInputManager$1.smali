.class Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/composer/b/a;


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

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$1;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager$1;->this$0:Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;->access$000(Lio/intercom/android/sdk/conversation/composer/textinput/TextInputManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
