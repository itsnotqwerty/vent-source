.class public final Lcom/vent/ActChangeEmail;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field static bTT:Z


# instance fields
.field bTO:Landroid/support/design/widget/TextInputLayout;

.field bTP:Landroid/widget/EditText;

.field private bTQ:Landroid/view/View;

.field private bTR:Landroid/view/View;

.field private bTS:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActChangeEmail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static m(Landroid/app/Activity;)V
    .locals 3

    sget-boolean v0, Lcom/vent/ActChangeEmail;->bTT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActChangeEmail;->bTT:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    new-instance v0, Lcom/vent/ActChangeEmail$4;

    const-string v1, "api/v1/my/user/resend_confirmation.json"

    const-string v2, "POST"

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/vent/ActChangeEmail$4;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method static n(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method final Bd()V
    .locals 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    sget-object v2, Lcom/vent/bb;->ciB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/vent/ActChangeEmail;->bTQ:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/vent/ActChangeEmail;->bTR:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/vent/ActChangeEmail;->bTS:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3
.end method

.method final Be()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    new-instance v2, Lcom/vent/ActChangeEmail$2;

    invoke-direct {v2, p0}, Lcom/vent/ActChangeEmail$2;-><init>(Lcom/vent/ActChangeEmail;)V

    invoke-static {p0, v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/vent/ActChangeEmail;->m(Landroid/app/Activity;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090271
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActChangeEmail;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActChangeEmail;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    new-instance v1, Lcom/vent/ActChangeEmail$1;

    invoke-direct {v1, p0}, Lcom/vent/ActChangeEmail$1;-><init>(Lcom/vent/ActChangeEmail;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f090271

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActChangeEmail;->bTQ:Landroid/view/View;

    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActChangeEmail;->bTR:Landroid/view/View;

    const v0, 0x7f090272

    invoke-virtual {p0, v0}, Lcom/vent/ActChangeEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActChangeEmail;->bTS:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vent/ActChangeEmail;->Bd()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActChangeEmail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/vent/ActChangeEmail;->bTP:Landroid/widget/EditText;

    invoke-static {v2, v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActChangeEmail;->bTO:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900d9
        :pswitch_0
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
    invoke-virtual {p0}, Lcom/vent/ActChangeEmail;->Be()V

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

    const-string v0, "ChangeEmail"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
