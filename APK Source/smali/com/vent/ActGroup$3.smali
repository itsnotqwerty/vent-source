.class final Lcom/vent/ActGroup$3;
.super Lcom/vent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActGroup;->aW(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWk:Lcom/vent/ActGroup;

.field bWl:Z

.field final synthetic bWm:Z


# direct methods
.method constructor <init>(Lcom/vent/ActGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    iput-boolean p5, p0, Lcom/vent/ActGroup$3;->bWm:Z

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/x;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    iput-boolean v6, p0, Lcom/vent/ActGroup$3;->bWl:Z

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/x;->aQ(Z)V

    iget-boolean v0, p0, Lcom/vent/ActGroup$3;->bWl:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cmd"

    const-string v2, "404"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "didJoinLeave"

    iget-object v2, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    iget-boolean v2, v2, Lcom/vent/ActGroup;->bVO:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "group"

    iget-object v2, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    iget-object v2, v2, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vent/ActGroup;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v0}, Lcom/vent/ActGroup;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActGroup$3;->caK:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    iget-object v0, p0, Lcom/vent/ActGroup$3;->caK:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-virtual {v0}, Lcom/vent/a/k;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, v1, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    iget-object v1, p0, Lcom/vent/ActGroup$3;->bUq:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/ActGroup;->bUq:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/vent/ActGroup$3;->bWm:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    iget-object v0, v0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget v1, v0, Lcom/vent/a/l;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/vent/a/l;->flags:I

    :cond_2
    iget-object v0, p0, Lcom/vent/ActGroup$3;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v0}, Lcom/vent/ActGroup;->Bg()V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Void;)V
    .locals 2

    iget v0, p0, Lcom/vent/ActGroup$3;->ccU:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/vent/ActGroup$3;->ccU:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActGroup$3;->bWl:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/x;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ActGroup$3;->b(Ljava/lang/Void;)V

    return-void
.end method
