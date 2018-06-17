.class final Lcom/vent/h$a$8;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/h$a;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic caD:Lcom/vent/h$a;

.field final synthetic caE:Lcom/vent/a/i;


# direct methods
.method constructor <init>(Lcom/vent/h$a;Lcom/vent/a/i;Landroid/support/v7/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/h$a$8;->caD:Lcom/vent/h$a;

    iput-object p2, p0, Lcom/vent/h$a$8;->caE:Lcom/vent/a/i;

    iput-object p3, p0, Lcom/vent/h$a$8;->bXk:Landroid/support/v7/app/d;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x32

    iget-object v1, p0, Lcom/vent/h$a$8;->caE:Lcom/vent/a/i;

    iget-object v0, p0, Lcom/vent/h$a$8;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vent/a/i;->eI(I)V

    iget-object v0, p0, Lcom/vent/h$a$8;->caE:Lcom/vent/a/i;

    invoke-virtual {v0}, Lcom/vent/a/i;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/h$a$8;->bXk:Landroid/support/v7/app/d;

    check-cast v0, Lcom/vent/ActUserListGroupMembers;

    iget-object v0, v0, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    invoke-virtual {v0, v3}, Lcom/vent/a/k;->eJ(I)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/h$a$8;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/h$a$8;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    iget-object v2, v0, Lcom/vent/a/i;->cjD:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/vent/a/i;->eI(I)V

    :cond_1
    iget-object v0, p0, Lcom/vent/h$a$8;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->notifyDataSetChanged()V

    return-void
.end method
