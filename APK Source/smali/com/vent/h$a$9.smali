.class final Lcom/vent/h$a$9;
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
.field final synthetic caD:Lcom/vent/h$a;

.field final synthetic caE:Lcom/vent/a/i;


# direct methods
.method constructor <init>(Lcom/vent/h$a;Lcom/vent/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/h$a$9;->caD:Lcom/vent/h$a;

    iput-object p2, p0, Lcom/vent/h$a$9;->caE:Lcom/vent/a/i;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v1, p0, Lcom/vent/h$a$9;->caE:Lcom/vent/a/i;

    iget-object v0, p0, Lcom/vent/h$a$9;->cmT:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vent/a/i;->eI(I)V

    iget-object v0, p0, Lcom/vent/h$a$9;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->notifyDataSetChanged()V

    return-void
.end method
