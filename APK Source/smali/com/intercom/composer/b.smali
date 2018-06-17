.class public Lcom/intercom/composer/b;
.super Landroid/support/v4/app/i;


# instance fields
.field public bkB:Lcom/intercom/composer/c;

.field public bkC:Lcom/intercom/composer/f;

.field public bkD:Lcom/intercom/composer/ComposerView;

.field bkE:Ljava/lang/String;

.field bkF:Z

.field private bkG:I

.field bkH:Lcom/intercom/composer/b/b;

.field private bkI:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    new-instance v0, Lcom/intercom/composer/b$1;

    invoke-direct {v0, p0}, Lcom/intercom/composer/b$1;-><init>(Lcom/intercom/composer/b;)V

    iput-object v0, p0, Lcom/intercom/composer/b;->bkI:Ljava/lang/Runnable;

    return-void
.end method

.method public static dj(I)Lcom/intercom/composer/b;
    .locals 4

    new-instance v0, Lcom/intercom/composer/b;

    invoke-direct {v0}, Lcom/intercom/composer/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "initial_input_identifier"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "show_keyboard_for_initial_input"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "theme_color"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/intercom/composer/b;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final ds(Ljava/lang/String;)Lcom/intercom/composer/b/b;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intercom/composer/b;->bkB:Lcom/intercom/composer/c;

    invoke-interface {v0}, Lcom/intercom/composer/c;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    invoke-virtual {v0}, Lcom/intercom/composer/b/b;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/intercom/composer/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intercom/composer/c;

    iput-object v0, p0, Lcom/intercom/composer/b;->bkB:Lcom/intercom/composer/c;

    :cond_0
    instance-of v0, p1, Lcom/intercom/composer/f;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/intercom/composer/f;

    iput-object p1, p0, Lcom/intercom/composer/b;->bkC:Lcom/intercom/composer/f;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intercom/composer/b;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_input_identifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/b;->bkE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_keyboard_for_initial_input"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intercom/composer/b;->bkF:Z

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "theme_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intercom/composer/b;->bkG:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/intercom/composer/g$f;->intercom_composer_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/ComposerView;

    iput-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/intercom/composer/b;->bkG:I

    sget v3, Lcom/intercom/composer/g$d;->intercom_composer_send_background:I

    invoke-static {v1, v3}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    iget-object v0, v0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/composer/ComposerView;->setFragmentManager(Landroid/support/v4/app/n;)V

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-object v1, p0, Lcom/intercom/composer/b;->bkB:Lcom/intercom/composer/c;

    invoke-interface {v1}, Lcom/intercom/composer/c;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/composer/ComposerView;->setInputs(Ljava/util/List;)V

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    new-instance v1, Lcom/intercom/composer/b$2;

    invoke-direct {v1, p0}, Lcom/intercom/composer/b$2;-><init>(Lcom/intercom/composer/b;)V

    invoke-virtual {v0, v1}, Lcom/intercom/composer/ComposerView;->setOnSendButtonClickListener(Lcom/intercom/composer/b/c/a/a;)V

    iget-object v0, p0, Lcom/intercom/composer/b;->bkC:Lcom/intercom/composer/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-object v1, p0, Lcom/intercom/composer/b;->bkC:Lcom/intercom/composer/f;

    invoke-virtual {v0, v1}, Lcom/intercom/composer/ComposerView;->setInputSelectedListener(Lcom/intercom/composer/f;)V

    :cond_0
    new-instance v0, Lcom/intercom/composer/pager/a;

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v2}, Lcom/intercom/composer/ComposerView;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/intercom/composer/pager/a;-><init>(Landroid/support/v4/app/n;Ljava/util/List;)V

    iget-object v1, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v1, v0}, Lcom/intercom/composer/ComposerView;->setComposerPagerAdapter(Lcom/intercom/composer/pager/a;)V

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    new-instance v1, Lcom/intercom/composer/a/c;

    invoke-virtual {p0}, Lcom/intercom/composer/b;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intercom/composer/a/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/intercom/composer/ComposerView;->setEditTextLayoutAnimationListener(Lcom/intercom/composer/a/c;)V

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-object v1, p0, Lcom/intercom/composer/b;->bkI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/intercom/composer/ComposerView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/intercom/composer/ComposerView;->bkN:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    iget-object v0, v2, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, v2, Lcom/intercom/composer/ComposerView;->bkL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/widget/EditText;

    iget-object v4, v2, Lcom/intercom/composer/ComposerView;->bkZ:Lcom/intercom/composer/d/b;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/intercom/composer/ComposerView;->bkS:Lcom/intercom/composer/c/a;

    iget-object v0, v0, Lcom/intercom/composer/c/a;->blM:Lcom/intercom/composer/c/b;

    iget-object v1, v0, Lcom/intercom/composer/c/b;->blN:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/intercom/composer/c/b;->blN:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroy()V

    return-void

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/b;->bkD:Lcom/intercom/composer/ComposerView;

    invoke-virtual {v0}, Lcom/intercom/composer/ComposerView;->getSelectedInput()Lcom/intercom/composer/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/b;->bkH:Lcom/intercom/composer/b/b;

    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroyView()V

    return-void
.end method
