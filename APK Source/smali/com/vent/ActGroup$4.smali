.class final Lcom/vent/ActGroup$4;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActGroup;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWk:Lcom/vent/ActGroup;


# direct methods
.method constructor <init>(Lcom/vent/ActGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActGroup$4;->cmT:Ljava/lang/Object;

    check-cast v0, Lcom/vent/a/k;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v0}, Lcom/vent/a/k;->EO()Lcom/vent/a/c;

    move-result-object v1

    check-cast v1, Lcom/vent/a/l;

    iput-object v1, v2, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    :cond_0
    iget-object v1, p0, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vent/ActGroup;->bVO:Z

    iget-object v1, p0, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v1}, Lcom/vent/ActGroup;->Bg()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActGroup$4;->bWk:Lcom/vent/ActGroup;

    new-instance v2, Lcom/vent/ActGroup$4$1;

    invoke-direct {v2, p0}, Lcom/vent/ActGroup$4$1;-><init>(Lcom/vent/ActGroup$4;)V

    const v3, 0x7f0f0075

    invoke-static {v1, v0, v2, v3}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;I)V

    :cond_1
    return-void
.end method
