.class public final Lcom/vent/aj$a;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {p0}, Lcom/vent/aj$a;->getTargetFragment()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vent/aj;->bd(Z)V

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {p0}, Lcom/vent/aj$a;->getTargetFragment()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/aj;->bd(Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f09003a -> :sswitch_0
        0x7f09005f -> :sswitch_2
        0x7f0902e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/vent/aj$a;->X(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    const v1, 0x7f0f00de

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0b005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
