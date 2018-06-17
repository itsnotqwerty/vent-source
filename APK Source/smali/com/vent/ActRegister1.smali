.class public final Lcom/vent/ActRegister1;
.super Lcom/vent/b;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field bTI:Lcom/vent/views/b;

.field bTO:Landroid/support/design/widget/TextInputLayout;

.field bTP:Landroid/widget/EditText;

.field bUQ:Landroid/support/design/widget/TextInputLayout;

.field bUR:Landroid/widget/EditText;

.field bUU:J

.field bUV:Z

.field bXq:Landroid/support/design/widget/TextInputLayout;

.field private bXr:Landroid/widget/EditText;

.field bXs:Landroid/support/design/widget/TextInputLayout;

.field private bXt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/b;-><init>()V

    return-void
.end method

.method private Cc()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    invoke-static {v0, v3}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    iget-object v4, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/vent/d/c;->b(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/vent/ActRegister1;->bXs:Landroid/support/design/widget/TextInputLayout;

    iget-object v4, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    invoke-static {v3, v4, v5}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/vent/ActRegister1;->bUV:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/vent/ActRegister1;->bUV:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vent/ActRegister1;->bUU:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->Cd()V

    goto :goto_2

    :cond_5
    const v0, 0x7f0f00e1

    invoke-static {p0, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActRegister1;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/vent/ActRegister1$1;

    invoke-direct {v2, p0, v0}, Lcom/vent/ActRegister1$1;-><init>(Lcom/vent/ActRegister1;Landroid/support/v7/app/c;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method private Ce()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gradientpos"

    iget-object v2, p0, Lcom/vent/ActRegister1;->bTI:Lcom/vent/views/b;

    invoke-virtual {v2}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActRegister1;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->finish()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/vent/a/x;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActRegister1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gradientpos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "inviteId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "inviter"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method final Cd()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/ActRegister1;->bUU:J

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    new-instance v2, Lcom/vent/ActRegister1$2;

    invoke-direct {v2, p0}, Lcom/vent/ActRegister1$2;-><init>(Lcom/vent/ActRegister1;)V

    invoke-static {p0, v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V

    return-void
.end method

.method protected final dS(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/vent/ActRegister1;->dU(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActRegister1;->bUV:Z

    goto :goto_0
.end method

.method final dU(Ljava/lang/String;)V
    .locals 6

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "username"

    iget-object v2, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    iget-object v2, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "email"

    iget-object v2, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "inviteId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "invite_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "profile_image_url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "user"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    new-instance v0, Lcom/vent/ActRegister1$3;

    const-string v3, "api/v1/registrations.json"

    const-string v4, "POST"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActRegister1$3;-><init>(Lcom/vent/ActRegister1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/b;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->setResult(I)V

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    :cond_2
    new-instance v0, Lcom/vent/views/b;

    const-string v1, "gradientpos"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActRegister1;->bTI:Lcom/vent/views/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ActRegister1;->Ce()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/b;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/vent/ActRegister1;->bTx:Z

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->setContentView(I)V

    invoke-static {}, Lcom/vent/d/c;->Fz()V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    const v1, 0x7f0f015c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09021a

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090219

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f09021c

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bXs:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXs:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09021b

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gradientpos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActRegister1;->bTI:Lcom/vent/views/b;

    const v0, 0x7f09022e

    const v1, 0x7f0f001f

    invoke-static {p0, v0, v1}, Lcom/vent/d/e;->a(Landroid/app/Activity;II)V

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "inviter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_0

    const v1, 0x7f0902b4

    invoke-virtual {p0, v1}, Lcom/vent/ActRegister1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0171

    invoke-virtual {p0, v2}, Lcom/vent/ActRegister1;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActRegister1;->init()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActRegister1;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/vent/ActRegister1;->Cc()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActRegister1;->bUR:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/vent/d/c;->b(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXq:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXs:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActRegister1;->bXr:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vent/ActRegister1;->bXt:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/ActRegister1;->bXs:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1;->bXs:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActRegister1;->bTP:Landroid/widget/EditText;

    invoke-static {v2, v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActRegister1;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900d9 -> :sswitch_3
        0x7f090219 -> :sswitch_1
        0x7f09021b -> :sswitch_2
        0x7f0902d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/vent/ActRegister1;->Ce()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/vent/ActRegister1;->Cc()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0900a8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/b;->onResume()V

    const-string v0, "New user onboarding"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
