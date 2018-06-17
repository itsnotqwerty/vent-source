.class public Landroid/support/v4/app/h;
.super Landroid/support/v4/app/i;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field mTheme:I

.field wL:I

.field protected wM:Z

.field protected wN:Z

.field wO:I

.field protected wP:Landroid/app/Dialog;

.field wQ:Z

.field wR:Z

.field wS:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    iput v0, p0, Landroid/support/v4/app/h;->wL:I

    iput v0, p0, Landroid/support/v4/app/h;->mTheme:I

    iput-boolean v1, p0, Landroid/support/v4/app/h;->wM:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->wN:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->wO:I

    return-void
.end method


# virtual methods
.method public final X(I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/h;->wL:I

    iget v0, p0, Landroid/support/v4/app/h;->wL:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v4/app/h;->wL:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x1030059

    iput v0, p0, Landroid/support/v4/app/h;->mTheme:I

    :cond_1
    if-eqz p1, :cond_2

    iput p1, p0, Landroid/support/v4/app/h;->mTheme:I

    :cond_2
    return-void
.end method

.method public a(Landroid/support/v4/app/n;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wR:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wS:Z

    invoke-virtual {p1}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->commit()I

    return-void
.end method

.method public cC()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/h;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/h;->mTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final o(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wR:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/h;->wR:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wS:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/app/h;->wQ:Z

    iget v0, p0, Landroid/support/v4/app/h;->wO:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/h;->getFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/h;->wO:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Z(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->wO:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/h;->getFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/t;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/t;->commit()I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wN:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/h;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/h;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/h;->wM:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wR:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v4/app/h;->mContainerId:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/h;->wN:Z

    if-eqz p1, :cond_0

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->wL:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->mTheme:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wM:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/h;->wN:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wN:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/h;->wO:I

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wQ:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/i;->onDetach()V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wS:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wR:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wQ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->o(Z)V

    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/h;->wN:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->cC()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    iget v1, p0, Landroid/support/v4/app/h;->wL:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/h;->wL:I

    if-eqz v0, :cond_1

    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/h;->wL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroid/support/v4/app/h;->mTheme:I

    if-eqz v0, :cond_2

    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/h;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/h;->wM:Z

    if-nez v0, :cond_3

    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/h;->wM:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/h;->wN:Z

    if-nez v0, :cond_4

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/h;->wN:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/h;->wO:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/h;->wO:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/i;->onStart()V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->wQ:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/i;->onStop()V

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->wP:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method
