.class public Landroid/support/v7/app/d;
.super Landroid/support/v4/app/j;

# interfaces
.implements Landroid/support/v4/app/aj$a;
.implements Landroid/support/v7/app/e;


# instance fields
.field private mDelegate:Landroid/support/v7/app/f;

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/d;->mThemeId:I

    return-void
.end method

.method private performMenuItemShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->es()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/j;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v7/app/a;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/support/v7/app/f;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/d;->mDelegate:Landroid/support/v7/app/f;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Landroid/support/v7/app/f;->a(Landroid/app/Activity;Landroid/support/v7/app/e;)Landroid/support/v7/app/f;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/d;->mDelegate:Landroid/support/v7/app/f;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d;->mDelegate:Landroid/support/v7/app/f;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroid/support/v7/app/b$a;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->getDrawerToggleDelegate()Landroid/support/v7/app/b$a;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/d;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/bt;->jb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bt;

    invoke-super {p0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/bt;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/d;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/a;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/app/y;->f(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->invalidateOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/app/d;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/d;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->onSupportContentChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->ev()V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/support/v7/app/f;->ew()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/app/d;->mThemeId:I

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/d;->mThemeId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/app/d;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/app/d;->mThemeId:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/aj;)V
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/support/v4/app/aj$a;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/aj$a;

    invoke-interface {v0}, Landroid/support/v4/app/aj$a;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/app/y;->f(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/aj;->AS:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v4/app/aj;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/aj;

    iget-object v0, p1, Landroid/support/v4/app/aj;->AR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/j;->onDestroy()V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/d;->performMenuItemShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/d;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/a;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->onSupportNavigateUp()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->eu()V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/j;->onPostResume()V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->onPostResume()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/aj;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/j;->onStart()V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/j;->onStop()V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->onStop()V

    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/b;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/b;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/support/v4/app/aj;->e(Landroid/content/Context;)Landroid/support/v4/app/aj;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/app/d;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/aj;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/app/d;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/aj;)V

    iget-object v0, v2, Landroid/support/v4/app/aj;->AR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v2, Landroid/support/v4/app/aj;->AR:Ljava/util/ArrayList;

    iget-object v3, v2, Landroid/support/v4/app/aj;->AR:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, v2, Landroid/support/v4/app/aj;->AS:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;[Landroid/content/Intent;)Z

    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->er()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/j;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/j;->setTheme(I)V

    iput p1, p0, Landroid/support/v7/app/d;->mThemeId:I

    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->startSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/f;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
