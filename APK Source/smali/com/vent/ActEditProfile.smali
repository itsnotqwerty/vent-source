.class public final Lcom/vent/ActEditProfile;
.super Lcom/vent/b;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field bUQ:Landroid/support/design/widget/TextInputLayout;

.field bUR:Landroid/widget/EditText;

.field private bUS:I

.field private bUT:I

.field bUU:J

.field bUV:Z

.field private bUs:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/vent/b;-><init>()V

    iput v0, p0, Lcom/vent/ActEditProfile;->bUS:I

    iput v0, p0, Lcom/vent/ActEditProfile;->bUT:I

    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 8

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "user"

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/vent/ActEditProfile$2;

    const-string v3, "api/v1/my/user.json"

    const-string v4, "PUT"

    move-object v1, p0

    move-object v2, p0

    move-object v6, v5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/vent/ActEditProfile$2;-><init>(Lcom/vent/ActEditProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static o(Landroid/support/v4/app/i;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vent/ActEditProfile;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method final Br()V
    .locals 4

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/ActEditProfile;->bUU:J

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vent/d/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->username:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/vent/ax;->aX(Landroid/content/Context;)V

    :cond_2
    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/vent/ax;->aW(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/vent/bb;->ed(Ljava/lang/String;)V

    :cond_3
    const-string v3, "username"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bio"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nsfw_setting"

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_1
    invoke-static {v0}, Lcom/vent/a/x;->eM(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/vent/ActEditProfile;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lcom/vent/ActEditProfile;->bUS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vent/ActEditProfile;->bUT:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    iget v1, p0, Lcom/vent/ActEditProfile;->bUS:I

    iget v2, p0, Lcom/vent/ActEditProfile;->bUT:I

    invoke-static {v0, p0, p1, v1, v2}, Lcom/vent/d/e;->a(Landroid/widget/EditText;Landroid/text/TextWatcher;Ljava/lang/CharSequence;II)V

    :cond_0
    iput v3, p0, Lcom/vent/ActEditProfile;->bUT:I

    iput v3, p0, Lcom/vent/ActEditProfile;->bUS:I

    return-void
.end method

.method final b(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/vent/b;->b(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    const-string v0, "interest_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "interests"

    invoke-static {v0}, Lcom/vent/a/m;->h(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "user"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Lcom/vent/ActEditProfile$4;

    const-string v3, "api/v1/my/user.json"

    const-string v4, "PUT"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActEditProfile$4;-><init>(Lcom/vent/ActEditProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected final dS(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/vent/ax;->aV(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "profile_image_url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bio"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vent/ActEditProfile;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/b;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/ActEditProfile;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DZ()Lcom/vent/ba;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x28 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    const v4, 0x7f0f011f

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/vent/ActSubscriptions;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/vent/ActDeactivateReason;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/vent/ActChangePassword;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/vent/ActChangeEmail;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_4
    invoke-static {p0}, Lcom/vent/ActMessageSettings;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_5
    invoke-static {p0}, Lcom/vent/ActAccountPrivacy;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v1, v0, Lcom/vent/a/y;->ceB:Ljava/util/HashSet;

    const v4, 0x7f0f0132

    const/16 v6, 0x64

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/vent/ActInterests;->a(Landroid/app/Activity;Ljava/util/HashSet;Ljava/util/HashMap;ZIII)V

    goto :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/vent/ActUserListInverseBlocks;->o(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_8
    invoke-static {p0}, Lcom/vent/ActAbout;->l(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActEditProfile$3;

    invoke-direct {v1, p0}, Lcom/vent/ActEditProfile$3;-><init>(Lcom/vent/ActEditProfile;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090013 -> :sswitch_8
        0x7f090050 -> :sswitch_7
        0x7f090070 -> :sswitch_3
        0x7f090071 -> :sswitch_2
        0x7f0900b8 -> :sswitch_1
        0x7f090181 -> :sswitch_6
        0x7f0901d9 -> :sswitch_4
        0x7f090200 -> :sswitch_0
        0x7f09022d -> :sswitch_5
        0x7f090282 -> :sswitch_9
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v11, 0x8

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/b;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    const v2, 0x7f0f0054

    invoke-virtual {v1, v2}, Landroid/support/v7/app/a;->setTitle(I)V

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->finish()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0902d6

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, p0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0902d5

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    const v2, 0x7f0f015c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/vent/d/e;->FA()V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    const v2, 0x7f0f0017

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setHint(I)V

    iget-object v10, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v1, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    const v3, 0x7fffffff

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v5, v1, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v6, v1, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    move-object v1, v0

    move v7, v4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Lcom/vent/d/e$b;

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, v3, v5}, Lcom/vent/d/e$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Lcom/vent/d/e$c;

    invoke-direct {v2}, Lcom/vent/d/e$c;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v8}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v2

    const v3, -0x10001

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f09022d

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090204

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v2, v2, Lcom/vent/a/y;->ckU:I

    if-ne v2, v9, :cond_1

    move v2, v8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const v1, 0x7f090200

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->init()V

    const v1, 0x7f090071

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090070

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090050

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090282

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0004

    invoke-virtual {p0, v2}, Lcom/vent/ActEditProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    sget-object v5, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v5, :cond_2

    :goto_2
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    move v2, v4

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->cjA:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const v0, 0x10010

    invoke-static {p0, v6, v7, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f0901da

    invoke-virtual {p0, v0}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/vent/ActEditProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    invoke-super {p0}, Lcom/vent/b;->onDestroy()V

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0902d5
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUQ:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcom/vent/ActEditProfile;->bUR:Landroid/widget/EditText;

    invoke-static {v0, v3}, Lcom/vent/d/c;->a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/vent/ActEditProfile;->bUG:Ljava/io/File;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vent/ActEditProfile;->bUG:Ljava/io/File;

    invoke-static {p0, v3}, Lcom/vent/b;->a(Landroid/app/Activity;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/vent/ActEditProfile;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    const/16 v2, 0x1388

    if-le v0, v2, :cond_4

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0018

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/vent/ActEditProfile;->bUV:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/vent/ActEditProfile;->bUV:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vent/ActEditProfile;->bUU:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/vent/ActEditProfile;->Br()V

    goto :goto_0

    :cond_5
    const v0, 0x7f0f00e1

    invoke-static {p0, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ActEditProfile;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/vent/ActEditProfile$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActEditProfile$1;-><init>(Lcom/vent/ActEditProfile;Landroid/support/v7/app/c;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090254
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/b;->onResume()V

    const-string v0, "EditProfile"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput p2, p0, Lcom/vent/ActEditProfile;->bUS:I

    iput p4, p0, Lcom/vent/ActEditProfile;->bUT:I

    return-void
.end method
