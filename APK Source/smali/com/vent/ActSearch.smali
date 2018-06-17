.class public final Lcom/vent/ActSearch;
.super Lcom/vent/a;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private bXP:Lcom/vent/FrgSearchBoth;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;)V
    .locals 4

    const/16 v3, 0x1b

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v3}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f09025f

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/vent/ActSearch;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActSearch;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgSearchBoth;

    iput-object v0, p0, Lcom/vent/ActSearch;->bXP:Lcom/vent/FrgSearchBoth;

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActSearch;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActSearch;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/vent/ActSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/vent/ActSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 4

    const v3, 0x7f09025f

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/vent/ActSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :goto_0
    iput-object v2, p0, Lcom/vent/ActSearch;->bXP:Lcom/vent/FrgSearchBoth;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/vent/ActSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActSearch;->bXP:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v0}, Lcom/vent/FrgSearchBoth;->DT()V

    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActSearch;->bXP:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v0, p1}, Lcom/vent/FrgSearchBoth;->dX(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActSearch;->bXP:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v0}, Lcom/vent/FrgSearchBoth;->DT()V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Explore"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActSearch;->bXP:Lcom/vent/FrgSearchBoth;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/FrgSearchBoth;->dX(Ljava/lang/String;)V

    return-void
.end method
