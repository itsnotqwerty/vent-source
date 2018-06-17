.class public final Lcom/vent/ActAbout;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bTj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActAbout;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/vent/ActAbout;->bTj:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/vent/ActAbout;->bTj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/ActAbout;->bTj:I

    if-ne v0, v2, :cond_0

    const-string v0, "You have now enabled the Advanced Settings!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chS:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    goto :goto_0

    :cond_1
    const-string v0, "Advanced Settings has already been enabled!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "http://www.vent.co/tos"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "http://www.vent.co/cg"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "http://help.vent.co/support/home"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "http://help.vent.co/support/solutions/folders/42000014808"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    sput-boolean v1, Lcom/vent/t;->ccD:Z

    invoke-static {p0}, Lcom/vent/t;->aE(Landroid/content/Context;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09003d -> :sswitch_0
        0x7f09006e -> :sswitch_3
        0x7f090101 -> :sswitch_4
        0x7f090229 -> :sswitch_1
        0x7f09024d -> :sswitch_5
        0x7f09024e -> :sswitch_6
        0x7f0902bf -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f09024e

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActAbout;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActAbout;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    sget-boolean v0, Lcom/vent/bb;->chS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/vent/ActAbout;->bTj:I

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vent/MyApplication;->cgF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090229

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902bf

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/vent/t;->ccE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/vent/ActAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "About"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
