.class public final Lcom/vent/b$a;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b;
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

.method static a(Landroid/support/v7/app/d;)V
    .locals 3

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vent/b$a;

    invoke-direct {v0}, Lcom/vent/b$a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vent/b$a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/vent/b$a;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {p0}, Lcom/vent/b$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->Bl()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    invoke-static {v0, v1, v5}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v1, v3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v5}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/vent/b;->Bm()V

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {p0}, Lcom/vent/b$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/b;

    invoke-virtual {v0}, Lcom/vent/b;->Bl()Z

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v1, v3

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/vent/b;->Bn()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005e -> :sswitch_0
        0x7f0901ad -> :sswitch_1
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/vent/b$a;->X(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
