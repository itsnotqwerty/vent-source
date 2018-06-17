.class public final Lcom/vent/af;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;
.implements Lcom/vent/ae$a;


# instance fields
.field private bUO:Landroid/support/v7/app/c;

.field private cdO:Lcom/vent/ae$c;

.field private cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field private cdT:Lcom/vent/CachedImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method private Dq()V
    .locals 2

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    :cond_0
    invoke-direct {p0}, Lcom/vent/af;->Dr()V

    return-void
.end method

.method private Dr()V
    .locals 1

    iget-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    invoke-virtual {v0, p0}, Lcom/vent/ae$c;->b(Lcom/vent/ae$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    :cond_0
    return-void
.end method

.method private Ds()V
    .locals 3

    invoke-direct {p0}, Lcom/vent/af;->Dq()V

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-virtual {p0}, Lcom/vent/af;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/n;Ljava/lang/String;)Lcom/vent/af;
    .locals 3

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vent/ae;->a(ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lcom/vent/af;

    invoke-direct {v0}, Lcom/vent/af;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "s"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vent/af;->setArguments(Landroid/os/Bundle;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/vent/af;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final Di()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    iget-boolean v0, v0, Lcom/vent/ae$c;->cdJ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iput-object v2, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    :cond_0
    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    iget-object v0, v0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    iget-object v1, v1, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v3}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumDpi(I)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    iget-object v1, v1, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/a;->aH(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/a;)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$e;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/vent/af;->Ds()V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {p0}, Lcom/vent/af;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f0064

    invoke-static {v0, v1, v3}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/af;->Ds()V

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/af;->Ds()V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/af;->Ds()V

    return-void
.end method

.method public final e(Lcom/vent/ae$c;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/vent/af;->Dr()V

    :cond_0
    iput-object p1, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    return-void
.end method

.method public final ky()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090100 -> :sswitch_0
        0x7f090113 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/vent/af;->X(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0b0061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090113

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090100

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/af;->cdS:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroyView()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/af;->Dq()V

    iget-object v0, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onResume()V
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/h;->onResume()V

    iget-object v1, p0, Lcom/vent/af;->cdO:Lcom/vent/ae$c;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/vent/af;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    const v3, 0x7f0f00ab

    invoke-static {v1, v3}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    iget-object v1, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    invoke-virtual {v1, v4}, Landroid/support/v7/app/c;->setCancelable(Z)V

    iget-object v1, p0, Lcom/vent/af;->bUO:Landroid/support/v7/app/c;

    new-instance v3, Lcom/vent/af$1;

    invoke-direct {v3, p0}, Lcom/vent/af$1;-><init>(Lcom/vent/af;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vent/af;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v0

    :goto_0
    sget v3, Lcom/vent/MyApplication;->cgm:I

    invoke-static {v1, v3}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vent/af;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/vent/MyApplication;->cgm:I

    sget v7, Lcom/vent/MyApplication;->cgm:I

    iget-object v8, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-static {v5, v3, v6, v7, v8}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IILcom/vent/ae$a;)I

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/vent/MyApplication;->cgk:I

    invoke-static {v1, v3}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vent/af;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/vent/MyApplication;->cgk:I

    sget v7, Lcom/vent/MyApplication;->cgk:I

    iget-object v8, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-static {v5, v3, v6, v7, v8}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IILcom/vent/ae$a;)I

    move-result v3

    :cond_1
    iget-object v5, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/vent/af;->getContext()Landroid/content/Context;

    move-result-object v0

    move v3, v2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IIZLcom/vent/ae$a;)I

    :cond_3
    return-void

    :cond_4
    const-string v3, "s"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    invoke-virtual {v3, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/af;->cdT:Lcom/vent/CachedImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/vent/CachedImageView;->setVisibility(I)V

    goto :goto_1
.end method
