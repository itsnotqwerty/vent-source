.class public final Lcom/vent/ActVentView;
.super Lcom/vent/a;

# interfaces
.implements Landroid/support/v4/widget/n$b;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field static bTT:Z


# instance fields
.field private bUS:I

.field private bUT:I

.field bYT:Landroid/widget/MultiAutoCompleteTextView;

.field bZt:Lcom/vent/g;

.field bZu:Landroid/support/v7/widget/RecyclerView;

.field bZv:Lcom/vent/a/d;

.field bZw:Z

.field bZx:J

.field bZy:Z

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    iput v0, p0, Lcom/vent/ActVentView;->orientation:I

    iput v0, p0, Lcom/vent/ActVentView;->bUS:I

    iput v0, p0, Lcom/vent/ActVentView;->bUT:I

    return-void
.end method

.method private Cx()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActVentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getImeOptions()I

    move-result v1

    const v2, -0x10000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getImeOptions()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V

    goto :goto_0
.end method

.method private Cy()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901b4

    invoke-virtual {p0, v1}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private Cz()V
    .locals 3

    iget-boolean v0, p0, Lcom/vent/ActVentView;->bZy:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActVentView;->bZy:Z

    new-instance v0, Lcom/vent/ActVentView$5;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v2/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/vent/ActVentView$5;-><init>(Lcom/vent/ActVentView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;ZLcom/vent/a/z;)V
    .locals 8

    const/4 v4, 0x4

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/vent/ActVentView;->bTT:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActVentView;->bTT:Z

    const v0, 0x7f0f00ab

    invoke-static {p0, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v4

    new-instance v0, Lcom/vent/ActVentView$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v2/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    move-object v1, p0

    move-object v5, p0

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/vent/ActVentView$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/app/c;Landroid/app/Activity;Lcom/vent/a/z;Landroid/support/v4/app/i;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActVentView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "vent_age"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/i;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, v4}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method final a(ZZI)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVentView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ActVentView$6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/vent/ActVentView$6;-><init>(Lcom/vent/ActVentView;ZZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final aR(Z)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f004a

    invoke-virtual {p0, v1}, Lcom/vent/ActVentView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0049

    new-instance v2, Lcom/vent/ActVentView$8;

    invoke-direct {v2, p0}, Lcom/vent/ActVentView$8;-><init>(Lcom/vent/ActVentView;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vent/ActVentView;->aS(Z)V

    goto :goto_0
.end method

.method public final aS(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cmd"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v1, :cond_0

    const-string v1, "vent"

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "backLongPress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActVentView;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActVentView;->finish()V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lcom/vent/ActVentView;->bUS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vent/ActVentView;->bUT:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget v1, p0, Lcom/vent/ActVentView;->bUS:I

    iget v2, p0, Lcom/vent/ActVentView;->bUT:I

    invoke-static {v0, p0, p1, v1, v2}, Lcom/vent/d/e;->a(Landroid/widget/EditText;Landroid/text/TextWatcher;Ljava/lang/CharSequence;II)V

    :cond_0
    iput v3, p0, Lcom/vent/ActVentView;->bUT:I

    iput v3, p0, Lcom/vent/ActVentView;->bUS:I

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final dV(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(II)V

    goto :goto_1
.end method

.method public final em()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v2, v0}, Lcom/vent/ActVentView;->a(ZZI)V

    invoke-direct {p0}, Lcom/vent/ActVentView;->Cz()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "vent"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v1}, Lcom/vent/a/z;->Fl()Z

    move-result v1

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v4

    if-eq v1, v4, :cond_1

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iput-object v0, v4, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vent/ActVentView;->bZx:J

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0}, Lcom/vent/g;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/vent/ActVentView;->Cy()V

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v3, v0}, Lcom/vent/ActVentView;->a(ZZI)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v3}, Lcom/vent/g;->notifyItemChanged(I)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0138

    invoke-static {p0, v0, v3}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x25 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lcom/vent/ActVentView;->bZw:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActVentView;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-nez v1, :cond_1

    move-object v6, v0

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_2

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/support/v7/app/c$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f002d

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f013a

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "body"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "comment"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActVentView;->bZw:Z

    new-instance v0, Lcom/vent/ActVentView$7;

    iget-object v1, p0, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/comments/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    iget-object v2, v2, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v1, p0, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    if-eqz v1, :cond_6

    const-string v4, "PUT"

    :goto_3
    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/vent/ActVentView$7;-><init>(Lcom/vent/ActVentView;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/comments.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const-string v4, "POST"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09026e -> :sswitch_1
        0x7f0902b5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/vent/ActVentView;->orientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vent/ActVentView;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/vent/ActVentView;->orientation:I

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/vent/ActVentView;->Cx()V

    :cond_1
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0f015f

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActVentView;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vent/ActVentView$2;

    invoke-direct {v0, p0, p0}, Lcom/vent/ActVentView$2;-><init>(Lcom/vent/ActVentView;Lcom/vent/a;)V

    iput-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {p0}, Lcom/vent/ActVentView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "vent_age"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vent/ActVentView;->bZx:J

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    const-string v3, "vent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iput-object v0, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/vent/d/c;->h(Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v2}, Lcom/vent/a/h;->bm(Z)I

    move-result v4

    iput v4, v3, Lcom/vent/g;->color:I

    iget-object v3, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v2}, Lcom/vent/a/h;->bn(Z)I

    move-result v0

    iput v0, v3, Lcom/vent/g;->bZf:I

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "vent_age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vent/ActVentView;->bZx:J

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    const-string v0, "adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "color"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/vent/g;->color:I

    const-string v3, "color2"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/vent/g;->bZf:I

    const-string v3, "comments"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v3, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/vent/a/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const-string v3, "comments_expanded"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    const-string v3, "users"

    invoke-static {v0, v3}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    const-string v3, "needmore"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/vent/g;->bZH:Z

    const-string v3, "age"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/vent/g;->bZY:J

    const-string v3, "vent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iput-object v0, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v2, Lcom/vent/ActVentView$3;

    invoke-direct {v2, p0}, Lcom/vent/ActVentView$3;-><init>(Lcom/vent/ActVentView;)V

    iput-object v2, v0, Lcom/vent/g;->caa:Lcom/vent/s$d;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v2, Lcom/vent/ActVentView$4;

    iget-object v3, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-direct {v2, p0, v3}, Lcom/vent/ActVentView$4;-><init>(Lcom/vent/ActVentView;Lcom/vent/g;)V

    iput-object v2, v0, Lcom/vent/g;->bZZ:Lcom/vent/g$b;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v6}, Lcom/vent/g;->ba(Z)V

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/n;

    iput-object v0, v2, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$f;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    const v0, 0x7f0900d5

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/vent/d/e;->FA()V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v1, Lcom/vent/bb;->cis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/vent/d/e$b;

    invoke-virtual {p0}, Lcom/vent/ActVentView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget v3, v3, Lcom/vent/g;->bZf:I

    invoke-direct {v1, v2, v3}, Lcom/vent/d/e$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/vent/d/e$c;

    invoke-direct {v1}, Lcom/vent/d/e$c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v7}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    const v0, 0x7f0f00fc

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    :goto_1
    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/vent/ActVentView;->Cx()V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v1

    const v2, -0x10001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/vent/ActVentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget v1, v1, Lcom/vent/g;->bZf:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/vent/ActVentView;->Cy()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method protected final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iput-object v1, v0, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    :cond_1
    iput-object v1, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iput-object v1, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    :cond_3
    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/vent/bb;->dZ(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_0
    invoke-super {p0}, Lcom/vent/a;->onPause()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 8

    const-wide/32 v6, 0x36ee80

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VentDetail"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-wide v4, v0, Lcom/vent/g;->bZY:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/vent/ActVentView;->a(ZZI)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vent/ActVentView;->bZx:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vent/ActVentView;->Cz()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "adapter"

    iget-object v2, p0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "color"

    iget v4, v2, Lcom/vent/g;->color:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "color2"

    iget v4, v2, Lcom/vent/g;->bZf:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x32

    if-gt v0, v4, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v4, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    const v5, 0xa000

    if-ge v4, v5, :cond_1

    :cond_0
    const-string v4, "comments"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v4, "comments_expanded"

    iget-object v5, v2, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "users"

    iget-object v5, v2, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    invoke-static {v3, v4, v5}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    const-string v4, "needmore"

    iget-boolean v5, v2, Lcom/vent/g;->bZH:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "age"

    iget-wide v6, v2, Lcom/vent/g;->bZY:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "vent"

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "vent_age"

    iget-wide v2, p0, Lcom/vent/ActVentView;->bZx:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_3
    iget-object v0, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput p2, p0, Lcom/vent/ActVentView;->bUS:I

    iput p4, p0, Lcom/vent/ActVentView;->bUT:I

    return-void
.end method
