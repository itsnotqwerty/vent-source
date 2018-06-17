.class public Lio/intercom/android/sdk/conversation/composer/textinput/MessengerTextInput;
.super Lcom/intercom/composer/b/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/intercom/composer/b/c/b",
        "<",
        "Lcom/intercom/composer/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/intercom/composer/b/c/a;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/intercom/composer/b/c/b;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/composer/b/c/a;Ljava/util/List;)V

    iput-object p6, p0, Lio/intercom/android/sdk/conversation/composer/textinput/MessengerTextInput;->editText:Landroid/widget/EditText;

    invoke-virtual {p6, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p6, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/composer/textinput/MessengerTextInput;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public createFragment()Lcom/intercom/composer/b/a/a;
    .locals 1

    new-instance v0, Lcom/intercom/composer/b/a/a;

    invoke-direct {v0}, Lcom/intercom/composer/b/a/a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFragment()Lcom/intercom/composer/b/c;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/composer/textinput/MessengerTextInput;->createFragment()Lcom/intercom/composer/b/a/a;

    move-result-object v0

    return-object v0
.end method
