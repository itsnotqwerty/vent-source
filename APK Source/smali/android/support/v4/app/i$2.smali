.class final Landroid/support/v4/app/i$2;
.super Landroid/support/v4/app/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/i;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wT:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/i$2;->wT:Landroid/support/v4/app/i;

    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$2;->wT:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/m;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;

    move-result-object v0

    return-object v0
.end method

.method public final onFindViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i$2;->wT:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i$2;->wT:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onHasView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$2;->wT:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
