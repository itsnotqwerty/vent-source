.class final Lcom/vent/ActVentView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVentView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZB:Lcom/vent/ActVentView;


# direct methods
.method constructor <init>(Lcom/vent/ActVentView;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vent/s$g;I)V
    .locals 4

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    iget-object v1, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vent/ActVentView;->dV(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/ActVentView$3;->bZB:Lcom/vent/ActVentView;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cmd"

    const-string v3, "delete"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v2, :cond_1

    const-string v2, "vent"

    iget-object v3, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, v3, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/vent/ActVentView;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/vent/ActVentView;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900bc -> :sswitch_1
        0x7f09012b -> :sswitch_1
        0x7f09024b -> :sswitch_0
    .end sparse-switch
.end method
