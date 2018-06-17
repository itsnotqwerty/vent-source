.class final Lcom/vent/t$a;
.super Lcom/google/ads/consent/ConsentFormListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field ccG:Lcom/google/ads/consent/ConsentForm;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/consent/ConsentFormListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final kX()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/vent/t$a;->ccG:Lcom/google/ads/consent/ConsentForm;

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v2, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentInformation;->lf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/google/ads/consent/ConsentForm$3;

    invoke-direct {v2, v0}, Lcom/google/ads/consent/ConsentForm$3;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v0, v0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    :cond_0
    return-void
.end method

.method public final kY()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vent/t;->d(Landroid/content/Context;Z)V

    return-void
.end method
