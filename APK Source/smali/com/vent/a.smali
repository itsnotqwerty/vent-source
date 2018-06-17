.class public Lcom/vent/a;
.super Landroid/support/v7/app/d;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/a$a;
    }
.end annotation


# static fields
.field static bTB:I

.field static bTD:I

.field private static bTt:J

.field private static bTu:Z

.field static level:I


# instance fields
.field private bTA:I

.field bTC:I

.field bTv:Landroid/support/v4/app/h;

.field bTw:Landroid/content/Intent;

.field bTx:Z

.field public bTy:Z

.field bTz:Z

.field private background:Landroid/view/View;

.field final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/vent/a;->level:I

    sput-boolean v0, Lcom/vent/a;->bTu:Z

    const/4 v0, 0x1

    sput v0, Lcom/vent/a;->bTB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    iput-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    iput-object v0, p0, Lcom/vent/a;->bTw:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/a;->bTx:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/a;->bTy:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vent/a;->bTA:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vent/a;->handler:Landroid/os/Handler;

    return-void
.end method

.method private Ba()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/vent/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iget v1, p0, Lcom/vent/a;->bTA:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/vent/a;->bTA:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/vent/a;->bTA:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/vent/a;->bTA:I

    invoke-virtual {p0}, Lcom/vent/a;->recreate()V

    goto :goto_0
.end method

.method private j(IZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "backLongPress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/vent/a;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/a;->finish()V

    return-void
.end method


# virtual methods
.method final Bb()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    iput-object v2, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/a;->bTu:Z

    iget-object v0, p0, Lcom/vent/a;->background:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a;->background:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vent/a;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/vent/a;->background:Landroid/view/View;

    return-void
.end method

.method public final Bc()Lcom/vent/ba;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/MyApplication;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->Bc()Lcom/vent/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/a;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vent/a$1;-><init>(Lcom/vent/a;IILandroid/content/Intent;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method aR(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/vent/a;->aT(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method aS(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/vent/a;->j(IZ)V

    return-void
.end method

.method aT(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/vent/a;->j(IZ)V

    return-void
.end method

.method b(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/a;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    iget-object v1, v1, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    iget-object v0, v0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vent/b/c;->c(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/d;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz p3, :cond_0

    const-string v0, "backLongPress"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/a;->aR(Z)Z

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/a;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/a;->aR(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/d;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    invoke-static {v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/vent/d/e;->u(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/vent/s;->q(Landroid/app/Activity;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/a;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/a$a;->a(Landroid/support/v4/app/n;)Lcom/vent/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    :cond_1
    invoke-direct {p0}, Lcom/vent/a;->Ba()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget v0, Lcom/vent/a;->bTB:I

    iput v0, p0, Lcom/vent/a;->bTC:I

    invoke-virtual {p0}, Lcom/vent/a;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/MyApplication;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const-string v1, "Android is buggy (1)"

    invoke-static {v0, v1}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vent/a;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/vent/MyApplication;->b(Landroid/support/v7/app/d;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "ActBase_nm"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/a;->bTA:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    sget v0, Lcom/vent/a;->bTB:I

    if-lez v0, :cond_0

    sget v0, Lcom/vent/a;->bTB:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/a;->bTB:I

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/d;->onDestroy()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    instance-of v1, p1, Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/vent/a;->aR(Z)Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/a;->aR(Z)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    iput-object v1, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    invoke-static {}, Lcom/vent/MyApplication;->Ec()V

    iput-object v1, p0, Lcom/vent/a;->bTw:Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/a;->bTz:Z

    invoke-super {p0}, Landroid/support/v7/app/d;->onPause()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/vent/a;->bTt:J

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onPostCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v5

    const/4 v2, 0x0

    move v4, v1

    move v3, v1

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Landroid/support/v7/widget/p;

    if-eqz v6, :cond_2

    add-int/lit8 v2, v3, 0x1

    if-gt v2, v7, :cond_0

    move v3, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_2
    if-ne v3, v7, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/d;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/a;->bTz:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResumeFragments()V
    .locals 1

    invoke-static {}, Lcom/vent/MyApplication;->Eb()V

    invoke-super {p0}, Landroid/support/v7/app/d;->onResumeFragments()V

    sget-boolean v0, Lcom/vent/a;->bTu:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/vent/a;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/a$a;->a(Landroid/support/v4/app/n;)Lcom/vent/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a;->bTv:Landroid/support/v4/app/h;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/vent/MyApplication;->Ec()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ActBase_nm"

    iget v1, p0, Lcom/vent/a;->bTA:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    invoke-super {p0}, Landroid/support/v7/app/d;->onStart()V

    iput-boolean v0, p0, Lcom/vent/a;->bTy:Z

    sget-boolean v1, Lcom/vent/a;->bTu:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/vent/a;->bTx:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vent/bb;->pin:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vent/bb;->pin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget v1, Lcom/vent/a;->level:I

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/vent/a;->bTt:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/vent/bb;->cih:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/vent/a;->bTu:Z

    :cond_1
    :goto_0
    sget v0, Lcom/vent/a;->level:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/a;->level:I

    sget-boolean v0, Lcom/vent/a;->bTu:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/a;->background:Landroid/view/View;

    if-nez v0, :cond_3

    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lcom/vent/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vent/a;->background:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/vent/a;->background:Landroid/view/View;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    :cond_2
    iget-object v1, p0, Lcom/vent/a;->background:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/vent/a;->background:Landroid/view/View;

    const/high16 v2, -0x12000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vent/a;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/vent/a;->Ba()V

    return-void

    :cond_4
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/a;->Bb()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    sget v0, Lcom/vent/a;->level:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/a;->level:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/a;->bTy:Z

    invoke-super {p0}, Landroid/support/v7/app/d;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/d;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    sget v0, Lcom/vent/a;->bTD:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/a;->bTD:I

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/d;->startActivityForResult(Landroid/content/Intent;I)V

    sget v0, Lcom/vent/a;->bTD:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/a;->bTD:I

    return-void
.end method
