.class public final Lcom/vent/ar;
.super Lcom/vent/FrgVentsList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/FrgVentsList;-><init>()V

    return-void
.end method

.method public static DF()Landroid/support/v4/app/i;
    .locals 14

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/vent/ar;

    invoke-direct {v1}, Lcom/vent/ar;-><init>()V

    const-string v3, "api/v2/my/feed.json"

    const v7, 0x7f0f00d4

    const v8, 0x7f0b0071

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    move-object v4, v2

    move-object v5, v2

    move v10, v6

    move v11, v6

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    return-object v1
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/vent/FrgVentsList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vent/ar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00d5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x7f080095
        0x7f080094
    .end array-data
.end method
