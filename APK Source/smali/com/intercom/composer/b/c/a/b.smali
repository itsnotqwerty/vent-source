.class public final Lcom/intercom/composer/b/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final blJ:Lcom/intercom/composer/b/c/a/a;

.field private final editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/intercom/composer/b/c/a/a;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intercom/composer/b/c/a/b;->blJ:Lcom/intercom/composer/b/c/a/a;

    iput-object p2, p0, Lcom/intercom/composer/b/c/a/b;->editText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/intercom/composer/b/c/a/b;->blJ:Lcom/intercom/composer/b/c/a/a;

    iget-object v1, p0, Lcom/intercom/composer/b/c/a/b;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intercom/composer/b/c/a/a;->q(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/composer/b/c/a/b;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
