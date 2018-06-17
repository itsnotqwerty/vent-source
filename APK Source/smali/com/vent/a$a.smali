.class public final Lcom/vent/a$a;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static bTH:Landroid/os/Bundle;


# instance fields
.field bTI:Lcom/vent/views/b;

.field bTJ:Landroid/widget/TextView;

.field bTK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/a$a;->bTH:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method static a(Landroid/support/v4/app/n;)Lcom/vent/a$a;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/vent/a$a;

    invoke-direct {v0}, Lcom/vent/a$a;-><init>()V

    iput-boolean v2, v0, Landroid/support/v4/app/h;->wM:Z

    iget-object v1, v0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/vent/a$a;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    return-object v0
.end method

.method private dR(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/vent/a$a;->bTJ:Landroid/widget/TextView;

    const-string v1, " \u25cf "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-virtual {p0}, Lcom/vent/a$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f011f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/vent/a$a$1;

    invoke-direct {v2, p0}, Lcom/vent/a$a$1;-><init>(Lcom/vent/a$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :sswitch_1
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "3"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "4"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "5"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "6"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "7"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "8"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_9
    const-string v0, "9"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_a
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/vent/a$a;->dR(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/a$a;->bTJ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/a$a;->bTJ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    sget-object v1, Lcom/vent/bb;->pin:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/a$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-virtual {v0}, Lcom/vent/a;->Bb()V

    invoke-static {}, Lcom/vent/MyApplication;->Ec()V

    iget-object v1, v0, Lcom/vent/a;->bTw:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vent/a;->bTw:Landroid/content/Intent;

    iput-object v3, v0, Lcom/vent/a;->bTw:Landroid/content/Intent;

    instance-of v2, v0, Lcom/vent/ActMain;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0, v1}, Lcom/vent/ActMain;->g(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/a$a;->bTJ:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vent/a$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-virtual {p0, v1}, Lcom/vent/a$a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090009 -> :sswitch_a
        0x7f09000a -> :sswitch_1
        0x7f09000b -> :sswitch_2
        0x7f09000c -> :sswitch_3
        0x7f09000d -> :sswitch_4
        0x7f09000e -> :sswitch_5
        0x7f09000f -> :sswitch_6
        0x7f090010 -> :sswitch_7
        0x7f090011 -> :sswitch_8
        0x7f090012 -> :sswitch_9
        0x7f090046 -> :sswitch_b
        0x7f09011c -> :sswitch_c
        0x7f090282 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/vent/a$a;->X(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0b0063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/a$a;->bTK:Ljava/lang/String;

    const v0, 0x7f090221

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/a$a;->bTJ:Landroid/widget/TextView;

    new-instance v2, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/a$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    sget-object v3, Lcom/vent/a$a;->bTH:Landroid/os/Bundle;

    invoke-direct {v2, v0, v1, v3}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/vent/a$a;->bTI:Lcom/vent/views/b;

    const v0, 0x7f090282

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090009

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/a$a;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/vent/a$a;->bTH:Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
