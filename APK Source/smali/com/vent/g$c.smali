.class Lcom/vent/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final bZt:Lcom/vent/g;


# direct methods
.method constructor <init>(Lcom/vent/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/g$c;->bZt:Lcom/vent/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/vent/g$f;I)V
    .locals 3

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p1}, Lcom/vent/g$f;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/g$c;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/vent/g$c;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vent/g$c;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vent/g$c;->bZt:Lcom/vent/g;

    invoke-virtual {v1, v0}, Lcom/vent/g;->notifyItemRemoved(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0900bc -> :sswitch_1
        0x7f0900d5 -> :sswitch_0
        0x7f090125 -> :sswitch_1
    .end sparse-switch
.end method
