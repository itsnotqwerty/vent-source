.class public final Lio/intercom/a/a/a/d/k;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/d/k$a;
    }
.end annotation


# instance fields
.field final cPg:Lio/intercom/a/a/a/d/a;

.field final cPh:Lio/intercom/a/a/a/d/m;

.field private final cPi:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lio/intercom/a/a/a/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private cPj:Lio/intercom/a/a/a/d/k;

.field cPk:Landroid/app/Fragment;

.field requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/d/a;

    invoke-direct {v0}, Lio/intercom/a/a/a/d/a;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/d/k;-><init>(Lio/intercom/a/a/a/d/a;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/d/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/d/k$a;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/d/k$a;-><init>(Lio/intercom/a/a/a/d/k;)V

    iput-object v0, p0, Lio/intercom/a/a/a/d/k;->cPh:Lio/intercom/a/a/a/d/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/d/k;->cPi:Ljava/util/HashSet;

    iput-object p1, p0, Lio/intercom/a/a/a/d/k;->cPg:Lio/intercom/a/a/a/d/a;

    return-void
.end method

.method private Js()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPj:Lio/intercom/a/a/a/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPj:Lio/intercom/a/a/a/d/k;

    iget-object v0, v0, Lio/intercom/a/a/a/d/k;->cPi:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/d/k;->cPj:Lio/intercom/a/a/a/d/k;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    invoke-direct {p0}, Lio/intercom/a/a/a/d/k;->Js()V

    invoke-static {p1}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v0

    iget-object v0, v0, Lio/intercom/a/a/a/c;->cFx:Lio/intercom/a/a/a/d/l;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/d/l;->a(Landroid/app/FragmentManager;)Lio/intercom/a/a/a/d/k;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/d/k;->cPj:Lio/intercom/a/a/a/d/k;

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPj:Lio/intercom/a/a/a/d/k;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPj:Lio/intercom/a/a/a/d/k;

    iget-object v0, v0, Lio/intercom/a/a/a/d/k;->cPi:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPg:Lio/intercom/a/a/a/d/a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/d/a;->onDestroy()V

    invoke-direct {p0}, Lio/intercom/a/a/a/d/k;->Js()V

    return-void
.end method

.method public final onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-direct {p0}, Lio/intercom/a/a/a/d/k;->Js()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPg:Lio/intercom/a/a/a/d/a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/d/a;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPg:Lio/intercom/a/a/a/d/a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/d/a;->onStop()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/d/k;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/d/k;->cPk:Landroid/app/Fragment;

    goto :goto_1
.end method
