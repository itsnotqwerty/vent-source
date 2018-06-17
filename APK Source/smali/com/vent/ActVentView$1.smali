.class final Lcom/vent/ActVentView$1;
.super Lcom/vent/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVentView;->a(Landroid/app/Activity;Landroid/support/v4/app/i;ZLcom/vent/a/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field bWl:Z

.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic bZA:Landroid/support/v4/app/i;

.field final synthetic bZz:Lcom/vent/a/z;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/app/c;Landroid/app/Activity;Lcom/vent/a/z;Landroid/support/v4/app/i;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-object p4, p0, Lcom/vent/ActVentView$1;->bUB:Landroid/support/v7/app/c;

    iput-object p5, p0, Lcom/vent/ActVentView$1;->bXe:Landroid/app/Activity;

    iput-object p6, p0, Lcom/vent/ActVentView$1;->bZz:Lcom/vent/a/z;

    iput-object p7, p0, Lcom/vent/ActVentView$1;->bZA:Landroid/support/v4/app/i;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ac;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    iput-boolean v6, p0, Lcom/vent/ActVentView$1;->bWl:Z

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/ac;->aQ(Z)V

    sput-boolean v3, Lcom/vent/ActVentView;->bTT:Z

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vent/ActVentView$1;->bWl:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bXe:Landroid/app/Activity;

    const v1, 0x7f0f013e

    invoke-static {v0, v1, v3}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bXe:Landroid/app/Activity;

    const-class v2, Lcom/vent/ActVentView;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/vent/ActVentView$1;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView$1;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/vent/ActVentView$1;->bZz:Lcom/vent/a/z;

    :cond_4
    const-string v2, "vent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "vent_age"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bZA:Landroid/support/v4/app/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bZA:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$1;->bZA:Landroid/support/v4/app/i;

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vent/ActVentView$1;->bXe:Landroid/app/Activity;

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Void;)V
    .locals 2

    iget v0, p0, Lcom/vent/ActVentView$1;->ccU:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/vent/ActVentView$1;->ccU:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActVentView$1;->bWl:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/ac;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ActVentView$1;->b(Ljava/lang/Void;)V

    return-void
.end method
