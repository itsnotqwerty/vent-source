.class final Lcom/vent/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/g;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cab:Lcom/vent/g;


# direct methods
.method constructor <init>(Lcom/vent/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/g$5;->cab:Lcom/vent/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/g$5;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/g$f;

    iget-object v1, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    invoke-static {v0, v1}, Lcom/vent/ActUserListCommentFavs;->a(Landroid/app/Activity;Lcom/vent/a/d;)V

    return-void
.end method
