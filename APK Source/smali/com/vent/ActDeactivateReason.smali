.class public final Lcom/vent/ActDeactivateReason;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field static final bUw:[I

.field static final bUx:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vent/ActDeactivateReason;->bUw:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OffUsernameChange"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OffBusy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OffNotForMe"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OffDisengaged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OffNoFriends"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "OffNegative"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OffOther"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vent/ActDeactivateReason;->bUx:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0f01e5
        0x7f0f01eb
        0x7f0f01e9
        0x7f0f01e6
        0x7f0f01e7
        0x7f0f01e8
        0x7f0f01ea
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method private Bk()V
    .locals 2

    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/vent/ActDeactivateReason;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900cd

    invoke-virtual {p0, v1}, Lcom/vent/ActDeactivateReason;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActDeactivateReason;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ActDeactivateReason;->Bk()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/vent/ActDeactivateReason;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Landroid/support/v7/app/c$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0040

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v1

    const v2, 0x7f0f0041

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v1

    const v2, 0x7f0f003f

    new-instance v3, Lcom/vent/ActDeactivateReason$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActDeactivateReason$1;-><init>(Lcom/vent/ActDeactivateReason;I)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900cd
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/vent/ActDeactivateReason;->setContentView(I)V

    const v0, 0x7f0f01e3

    invoke-virtual {p0, v0}, Lcom/vent/ActDeactivateReason;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActDeactivateReason;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/vent/ActDeactivateReason;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vent/ActDeactivateReason;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/vent/ActDeactivateReason;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/vent/ActDeactivateReason;->bUw:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    new-instance v3, Landroid/widget/RadioButton;

    invoke-direct {v3, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    if-lez v1, :cond_0

    sget v5, Lcom/vent/MyApplication;->cge:I

    iput v5, v4, Landroid/widget/RadioGroup$LayoutParams;->topMargin:I

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    sget-object v4, Lcom/vent/ActDeactivateReason;->bUw:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/vent/ActDeactivateReason;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/vent/ActDeactivateReason;->Bk()V

    return-void
.end method
