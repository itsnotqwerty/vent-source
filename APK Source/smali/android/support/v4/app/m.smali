.class public abstract Landroid/support/v4/app/m;
.super Landroid/support/v4/app/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/k;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/o;

.field final mHandler:Landroid/os/Handler;

.field final xs:Landroid/app/Activity;

.field final xt:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    iput-object p1, p0, Landroid/support/v4/app/m;->xs:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/m;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/m;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/m;->xt:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/j;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, p1, v0}, Landroid/support/v4/app/m;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/i;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->xs:Landroid/app/Activity;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/i;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cF()V
    .locals 0

    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/i;)V
    .locals 0

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/m;->xt:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
