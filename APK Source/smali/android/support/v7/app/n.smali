.class final Landroid/support/v7/app/n;
.super Landroid/support/v7/app/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/n$b;,
        Landroid/support/v7/app/n$a;,
        Landroid/support/v7/app/n$c;
    }
.end annotation


# instance fields
.field Ol:Landroid/support/v7/widget/ak;

.field Om:Z

.field On:Landroid/view/Window$Callback;

.field private Oo:Z

.field private Op:Z

.field private Oq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Or:Ljava/lang/Runnable;

.field private final Os:Landroid/support/v7/widget/Toolbar$c;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/n;->Oq:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/app/n$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$1;-><init>(Landroid/support/v7/app/n;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->Or:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/app/n$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/n$2;-><init>(Landroid/support/v7/app/n;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->Os:Landroid/support/v7/widget/Toolbar$c;

    new-instance v0, Landroid/support/v7/widget/bp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/bp;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    new-instance v0, Landroid/support/v7/app/n$c;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/n$c;-><init>(Landroid/support/v7/app/n;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/app/n;->On:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ak;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Landroid/support/v7/app/n;->Os:Landroid/support/v7/widget/Toolbar$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$c;)V

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/ak;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDisplayOptions(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getDisplayOptions()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ak;->setDisplayOptions(I)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    return-void
.end method

.method public final B(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/n;->Op:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/n;->Op:Z

    iget-object v0, p0, Landroid/support/v7/app/n;->Oq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/n;->Oq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/n;->er()Z

    :cond_0
    return v1
.end method

.method public final collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->collapseActionView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ep()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/n;->setDisplayOptions(II)V

    return-void
.end method

.method public final eq()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/n;->setDisplayOptions(II)V

    return-void
.end method

.method public final er()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final es()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final et()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->gy()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/n;->Or:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->gy()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/n;->Or:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method final getMenu()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/n;->Oo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    new-instance v1, Landroid/support/v7/app/n$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/n$a;-><init>(Landroid/support/v7/app/n;)V

    new-instance v2, Landroid/support/v7/app/n$b;

    invoke-direct {v2, p0}, Landroid/support/v7/app/n$b;-><init>(Landroid/support/v7/app/n;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/ak;->setMenuCallbacks(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/n;->Oo:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final onDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->gy()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/n;->Or:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/app/n;->getMenu()Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    :cond_0
    return v2

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/n;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setTitle(I)V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/widget/ak;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/n;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final z(Z)V
    .locals 0

    return-void
.end method
