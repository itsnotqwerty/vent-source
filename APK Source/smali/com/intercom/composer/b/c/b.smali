.class public abstract Lcom/intercom/composer/b/c/b;
.super Lcom/intercom/composer/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/intercom/composer/b/c;",
        ">",
        "Lcom/intercom/composer/b/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/c/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private sendTextCallback:Lcom/intercom/composer/b/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/composer/b/c/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intercom/composer/b/c/b;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/composer/b/c/a;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/composer/b/c/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/intercom/composer/b/a;",
            "Lcom/intercom/composer/b/c/a;",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/c/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/intercom/composer/b/b;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;)V

    iput-object p3, p0, Lcom/intercom/composer/b/c/b;->sendTextCallback:Lcom/intercom/composer/b/c/a;

    iput-object p4, p0, Lcom/intercom/composer/b/c/b;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected abstract createEditText()Landroid/widget/EditText;
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/b/c/b;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/intercom/composer/b/c/b;->createEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/b/c/b;->editText:Landroid/widget/EditText;

    :cond_0
    iget-object v0, p0, Lcom/intercom/composer/b/c/b;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/c/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/intercom/composer/b/c/b;->options:Ljava/util/List;

    return-object v0
.end method

.method public sendTextBack(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/b/c/b;->sendTextCallback:Lcom/intercom/composer/b/c/a;

    invoke-interface {v0, p0, p1}, Lcom/intercom/composer/b/c/a;->textToBeSent(Lcom/intercom/composer/b/b;Ljava/lang/CharSequence;)V

    return-void
.end method
