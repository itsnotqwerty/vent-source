.class final Lcom/vent/ActCreateEditGroup$3;
.super Lcom/vent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActCreateEditGroup;->Bj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUv:Lcom/vent/ActCreateEditGroup;


# direct methods
.method constructor <init>(Lcom/vent/ActCreateEditGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    const/4 v1, 0x0

    const v6, 0x7f0f0108

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vent/x;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    invoke-virtual {v0}, Lcom/vent/ActCreateEditGroup;->Bf()Z

    move-result v1

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->caK:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v2, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup$3;->bUq:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v0, v0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v0, v0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget v0, v0, Lcom/vent/a/k;->flags:I

    shr-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v0, v0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/vent/a/l;->eJ(I)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v0, v0, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    invoke-static {v0}, Lcom/vent/ActVent;->a(Lcom/vent/a/k;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "cmd"

    if-eqz v1, :cond_3

    const-string v0, "new"

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "group"

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v1, v1, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "interests"

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup$3;->bUq:Ljava/util/HashMap;

    invoke-static {v2, v0, v1}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vent/ActCreateEditGroup;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->bUv:Lcom/vent/ActCreateEditGroup;

    invoke-virtual {v0}, Lcom/vent/ActCreateEditGroup;->finish()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$3;->caK:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-virtual {v0}, Lcom/vent/a/k;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    goto :goto_0

    :cond_3
    const-string v0, "update"

    goto :goto_1
.end method
