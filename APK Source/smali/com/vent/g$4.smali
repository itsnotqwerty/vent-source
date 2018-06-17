.class final Lcom/vent/g$4;
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

    iput-object p1, p0, Lcom/vent/g$4;->cab:Lcom/vent/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/vent/g$4;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/g$f;

    invoke-virtual {v1}, Lcom/vent/g$f;->getAdapterPosition()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-boolean v3, v3, Lcom/vent/a/d;->cjG:Z

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    iget-object v4, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    invoke-static {v0, v3, v4}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/vent/a/d;->cjG:Z

    iget-object v0, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget v3, v0, Lcom/vent/a/d;->cjF:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vent/a/d;->cjF:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vent/g$4;->cab:Lcom/vent/g;

    invoke-virtual {v0, v1, v2}, Lcom/vent/g;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    iget-object v4, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    invoke-static {v0, v3, v4}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/vent/a/d;->cjG:Z

    iget-object v0, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget v3, v0, Lcom/vent/a/d;->cjF:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/vent/a/d;->cjF:I

    goto :goto_1
.end method
