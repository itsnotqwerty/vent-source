.class final Lcom/vent/j$a$1;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/j$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caS:Lcom/vent/j$a;


# direct methods
.method constructor <init>(Lcom/vent/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vent/j$a$1;->cmT:Ljava/lang/Object;

    check-cast v0, Lcom/vent/a/k;

    iget-object v1, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    iget-object v1, v1, Lcom/vent/j$a;->caR:Lcom/vent/j;

    iget-object v1, v1, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    iget-object v2, v2, Lcom/vent/j$a;->caR:Lcom/vent/j;

    iget-object v2, v2, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    iget-object v0, v0, Lcom/vent/j$a;->caR:Lcom/vent/j;

    iget-object v2, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    iget-object v2, v2, Lcom/vent/j$a;->caR:Lcom/vent/j;

    invoke-virtual {v2, v1}, Lcom/vent/j;->ex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/j;->notifyItemChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    invoke-virtual {v0}, Lcom/vent/j$a;->CK()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/j$a$1;->caS:Lcom/vent/j$a;

    iget-object v1, v1, Lcom/vent/j$a;->caR:Lcom/vent/j;

    iget-object v1, v1, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method
