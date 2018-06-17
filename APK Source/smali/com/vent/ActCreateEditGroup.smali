.class public final Lcom/vent/ActCreateEditGroup;
.super Lcom/vent/b;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bUp:Lcom/vent/a/l;

.field bUq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private bUr:Landroid/widget/EditText;

.field private bUs:Landroid/widget/MultiAutoCompleteTextView;

.field private bUt:Landroid/widget/TextView;

.field private bUu:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/b;-><init>()V

    return-void
.end method

.method private Bh()V
    .locals 2

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->cki:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUG:Ljava/io/File;

    if-nez v0, :cond_0

    const v0, 0x7f0f0006

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const v0, 0x7f0f0052

    goto :goto_0
.end method

.method private Bj()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vent/a/l;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUu:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget v2, v1, Lcom/vent/a/l;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/vent/a/l;->flags:I

    :goto_0
    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v1, Lcom/vent/a/l;->cjP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget v2, v1, Lcom/vent/a/l;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Lcom/vent/a/l;->flags:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_3

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/support/v7/app/c$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0018

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_1

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    iget-object v3, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v3, v3, Lcom/vent/a/l;->cjP:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bio"

    iget-object v3, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v3, v3, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "banner_image_url"

    iget-object v3, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v3, v3, Lcom/vent/a/l;->cki:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_nsfw"

    iget-object v3, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget v3, v3, Lcom/vent/a/l;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_4
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    new-instance v0, Lcom/vent/ActCreateEditGroup$3;

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v3, "api/v1/groups.json"

    :goto_5
    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v4, "POST"

    :goto_6
    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActCreateEditGroup$3;-><init>(Lcom/vent/ActCreateEditGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :try_start_1
    const-string v0, "interest_ids"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "group"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/groups/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, v2, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string v4, "PUT"

    goto :goto_6
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/l;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/support/v4/app/i;",
            "Lcom/vent/a/l;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/p;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x29

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActCreateEditGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "group"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "interests"

    invoke-static {v0, v1, p3}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method final Bf()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Bg()V
    .locals 11

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v1, Lcom/vent/a/l;->cjP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, v2, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    const v3, 0x7fffffff

    iget-object v5, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v5, v5, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    iget-object v6, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v6, v6, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    const/4 v9, 0x2

    move v7, v4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/vent/MyApplication;->cgq:I

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUF:Lcom/vent/CachedImageView;

    iget-object v3, p0, Lcom/vent/ActCreateEditGroup;->bUG:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUG:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUu:Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget v1, v1, Lcom/vent/a/l;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0}, Lcom/vent/ActCreateEditGroup;->Bh()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v3, v3, Lcom/vent/a/k;->cki:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/vent/d/c;->j(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1
.end method

.method protected final Bi()V
    .locals 0

    invoke-super {p0}, Lcom/vent/b;->Bi()V

    invoke-direct {p0}, Lcom/vent/ActCreateEditGroup;->Bh()V

    return-void
.end method

.method protected final dS(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iput-object p1, v0, Lcom/vent/a/l;->cki:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vent/ActCreateEditGroup;->Bj()V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/b;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "interest_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    const-string v0, "interests"

    invoke-static {p3, v0}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->aU(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v3

    const v4, 0x7f0f016a

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/vent/ActInterests;->a(Landroid/app/Activity;Ljava/util/HashSet;Ljava/util/HashMap;ZIII)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    new-instance v1, Lcom/vent/ActCreateEditGroup$2;

    invoke-direct {v1, p0}, Lcom/vent/ActCreateEditGroup$2;-><init>(Lcom/vent/ActCreateEditGroup;)V

    invoke-static {p0, v0, v1}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0900bc -> :sswitch_2
        0x7f090181 -> :sswitch_1
        0x7f090232 -> :sswitch_0
        0x7f090233 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f0900bc

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/vent/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-static {v0}, Lcom/vent/a/k;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "interests"

    invoke-static {v0, v1}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-static {v0}, Lcom/vent/a/k;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    const-string v0, "interests"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vent/a/l;

    invoke-direct {v0}, Lcom/vent/a/l;-><init>()V

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget v1, v0, Lcom/vent/a/l;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vent/a/l;->flags:I

    :cond_1
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f003a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->setTitle(I)V

    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUr:Landroid/widget/EditText;

    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/vent/d/e;->FA()V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/vent/d/e$b;

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vent/d/e$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/vent/d/e$c;

    invoke-direct {v1}, Lcom/vent/d/e$c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v5}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUs:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v1

    const v2, -0x10001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUF:Lcom/vent/CachedImageView;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    invoke-static {p0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/vent/MyApplication;->cgq:I

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v2, v0, v1}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090233

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUu:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bg()V

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->isFull()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/vent/ActCreateEditGroup$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/groups/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, v2, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/vent/ActCreateEditGroup$1;-><init>(Lcom/vent/ActCreateEditGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f0f0053

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v6}, Lcom/vent/ActCreateEditGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUG:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bp()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vent/ActCreateEditGroup;->Bj()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090254
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 7

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/vent/b;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    const v4, 0x7f0f016a

    const/4 v6, 0x3

    move-object v0, p0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/vent/ActInterests;->a(Landroid/app/Activity;Ljava/util/HashSet;Ljava/util/HashMap;ZIII)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "group"

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "interests"

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
