.class public final Lcom/vent/ActSignIn;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActSignIn$a;
    }
.end annotation


# instance fields
.field private bTI:Lcom/vent/views/b;

.field private bUQ:Landroid/support/design/widget/TextInputLayout;

.field private bUR:Landroid/widget/EditText;

.field bUU:J

.field bUV:Z

.field bYk:Landroid/support/design/widget/TextInputLayout;

.field private bYl:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActSignIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method final Ci()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    invoke-static {v0, v3}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/vent/ActSignIn;->bUV:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/vent/ActSignIn;->bUV:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vent/ActSignIn;->bUU:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/vent/ActSignIn;->Cj()V

    goto :goto_1

    :cond_4
    const v0, 0x7f0f00e1

    invoke-static {p0, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActSignIn;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/vent/ActSignIn$2;

    invoke-direct {v2, p0, v0}, Lcom/vent/ActSignIn$2;-><init>(Lcom/vent/ActSignIn;Landroid/support/v7/app/c;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method final Cj()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/ActSignIn;->bUU:J

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "username"

    iget-object v3, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    iget-object v3, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    new-instance v0, Lcom/vent/ActSignIn$a;

    invoke-direct {v0, p0, v1}, Lcom/vent/ActSignIn$a;-><init>(Lcom/vent/ActSignIn;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method final es(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gradientpos"

    iget-object v2, p0, Lcom/vent/ActSignIn;->bTI:Lcom/vent/views/b;

    invoke-virtual {v2}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/vent/ActSignIn;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActSignIn;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->es(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vent/ActSignIn;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vent/ActForgotPassword;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/vent/ActSignIn;->Ci()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f09010e -> :sswitch_0
        0x7f090281 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/vent/ActSignIn;->bTx:Z

    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActSignIn;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActSignIn;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    const v1, 0x7f0f015c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09021d

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090218

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    new-instance v1, Lcom/vent/ActSignIn$1;

    invoke-direct {v1, p0}, Lcom/vent/ActSignIn$1;-><init>(Lcom/vent/ActSignIn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090281

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActSignIn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActSignIn;->bTI:Lcom/vent/views/b;

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActSignIn;->bUR:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ActSignIn;->bUQ:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActSignIn;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActSignIn;->bYl:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/vent/d/c;->b(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActSignIn;->bYk:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090218 -> :sswitch_1
        0x7f0902d5 -> :sswitch_0
    .end sparse-switch
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
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/ActSignIn;->es(I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/ax;->cfN:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
