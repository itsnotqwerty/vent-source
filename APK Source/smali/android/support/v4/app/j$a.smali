.class final Landroid/support/v4/app/j$a;
.super Landroid/support/v4/app/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/m",
        "<",
        "Landroid/support/v4/app/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic xo:Landroid/support/v4/app/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-direct {p0, p1}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/j;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/j;->startActivityFromFragment(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/i;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/j;->startIntentSenderFromFragment(Landroid/support/v4/app/i;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/i;[Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/j;->requestPermissionsFromFragment(Landroid/support/v4/app/i;[Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/support/v4/app/j;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final cE()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cF()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public final onAttachFragment(Landroid/support/v4/app/i;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/j;->onAttachFragment(Landroid/support/v4/app/i;)V

    return-void
.end method

.method public final onFindViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    return-object v0
.end method

.method public final onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final onGetWindowAnimations()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public final onHasView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onHasWindowAnimations()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j$a;->xo:Landroid/support/v4/app/j;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
