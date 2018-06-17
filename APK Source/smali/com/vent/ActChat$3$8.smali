.class final Lcom/vent/ActChat$3$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/atlas/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActChat$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUn:Lcom/vent/ActChat$3;


# direct methods
.method constructor <init>(Lcom/vent/ActChat$3;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActChat$3$8;->bUn:Lcom/vent/ActChat$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/atlas/a;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActChat$3$8;->bUn:Lcom/vent/ActChat$3;

    iget-object v0, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v3, v0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    if-eqz p2, :cond_1

    :goto_0
    iget-object v4, v3, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    iget-object v5, v4, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    if-nez v5, :cond_3

    :goto_2
    iput-object p1, v4, Lcom/layer/atlas/a/a;->bnH:Landroid/view/View;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget v0, v4, Lcom/layer/atlas/a/a;->bnI:I

    invoke-virtual {v4, v0}, Lcom/layer/atlas/a/a;->notifyItemInserted(I)V

    :cond_0
    :goto_3
    invoke-virtual {v3}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->wg()V

    return-void

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    iget v0, v4, Lcom/layer/atlas/a/a;->bnI:I

    invoke-virtual {v4, v0}, Lcom/layer/atlas/a/a;->notifyItemRemoved(I)V

    goto :goto_3

    :cond_5
    if-nez v1, :cond_0

    iget v0, v4, Lcom/layer/atlas/a/a;->bnI:I

    invoke-virtual {v4, v0}, Lcom/layer/atlas/a/a;->notifyItemChanged(I)V

    goto :goto_3
.end method
