.class public final Lcom/intercom/composer/b/a/a;
.super Lcom/intercom/composer/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intercom/composer/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/intercom/composer/g$f;->intercom_composer_fragment_empty:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onInputDeselected()V
    .locals 0

    return-void
.end method

.method public final onInputReselected()V
    .locals 0

    return-void
.end method

.method public final onInputSelected()V
    .locals 0

    return-void
.end method

.method protected final passDataOnViewCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
