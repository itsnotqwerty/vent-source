.class public final Lcom/vent/ActChangePassword;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field bTW:Landroid/support/design/widget/TextInputLayout;

.field private bTX:Landroid/widget/EditText;

.field private bTY:Landroid/support/design/widget/TextInputLayout;

.field private bTZ:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActChangePassword;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method final Be()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTW:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    invoke-static {v0, v3}, Lcom/vent/d/c;->b(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/vent/ActChangePassword;->bTY:Landroid/support/design/widget/TextInputLayout;

    iget-object v4, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    invoke-static {v3, v4, v5}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "password"

    iget-object v2, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "user"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    new-instance v0, Lcom/vent/ActChangePassword$2;

    const-string v3, "api/v1/my/user.json"

    const-string v4, "PUT"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActChangePassword$2;-><init>(Lcom/vent/ActChangePassword;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/vent/ActChangePassword;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActChangePassword;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActChangePassword;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f090215

    invoke-virtual {p0, v0}, Lcom/vent/ActChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActChangePassword;->bTW:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTW:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090214

    invoke-virtual {p0, v0}, Lcom/vent/ActChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    const v1, 0x7f0f00c1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f090217

    invoke-virtual {p0, v0}, Lcom/vent/ActChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActChangePassword;->bTY:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTY:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090216

    invoke-virtual {p0, v0}, Lcom/vent/ActChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    const v1, 0x7f0f00fa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    new-instance v1, Lcom/vent/ActChangePassword$1;

    invoke-direct {v1, p0}, Lcom/vent/ActChangePassword$1;-><init>(Lcom/vent/ActChangePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActChangePassword;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTW:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/vent/d/c;->b(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vent/ActChangePassword;->bTY:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActChangePassword;->bTX:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vent/ActChangePassword;->bTZ:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090214
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActChangePassword;->Be()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090254
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "ChangePassword"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
