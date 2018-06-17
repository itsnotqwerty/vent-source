.class final Lcom/vent/s$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final cci:Lcom/vent/s;


# direct methods
.method constructor <init>(Lcom/vent/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vent/s$g;I)V
    .locals 3

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p1}, Lcom/vent/s$g;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    iget-object v1, v1, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v1, v1, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    invoke-virtual {v2, v0}, Lcom/vent/s;->ez(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    iget-object v1, v1, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v1, v1, Lcom/vent/s$a;->ccc:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    invoke-virtual {v1, v0}, Lcom/vent/s;->notifyItemRemoved(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/vent/s$g;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    invoke-virtual {v1, v0}, Lcom/vent/s;->ez(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    iget-object v1, v1, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v1, v1, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v2, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v0, v2}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vent/s$e;->cci:Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900bc -> :sswitch_1
        0x7f0900d5 -> :sswitch_0
        0x7f090127 -> :sswitch_2
        0x7f09012b -> :sswitch_1
    .end sparse-switch
.end method
