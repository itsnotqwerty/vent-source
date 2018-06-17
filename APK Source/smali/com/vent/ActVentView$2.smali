.class final Lcom/vent/ActVentView$2;
.super Lcom/vent/g;


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
.method constructor <init>(Lcom/vent/ActVentView;Lcom/vent/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVentView$2;->bZB:Lcom/vent/ActVentView;

    invoke-direct {p0, p2}, Lcom/vent/g;-><init>(Lcom/vent/a;)V

    return-void
.end method


# virtual methods
.method public final CA()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVentView$2;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$2;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$2;->bZB:Lcom/vent/ActVentView;

    iget-object v1, p0, Lcom/vent/ActVentView$2;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vent/ActVentView;->dV(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/vent/g$f;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$2;->bZB:Lcom/vent/ActVentView;

    iget-object v1, p1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vent/ActVentView;->dV(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final ev(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActVentView$2;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v0, v1, v1, p1}, Lcom/vent/ActVentView;->a(ZZI)V

    return-void
.end method
