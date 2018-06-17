.class final Lcom/vent/h$a$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/vent/h$a$7;->caD:Lcom/vent/h$a;

    iput-object p2, p0, Lcom/vent/h$a$7;->caE:Lcom/vent/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/h$a$7;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/h$a$7;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/h$a$7;->caE:Lcom/vent/a/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/vent/h$a$7;->caD:Lcom/vent/h$a;

    iget-object v0, v0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->notifyDataSetChanged()V

    return-void
.end method
