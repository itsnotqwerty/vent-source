.class final Lcom/vent/ActSubscriptions$a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActSubscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActSubscriptions$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ActSubscriptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/ActSubscriptions;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ActSubscriptions$a;->bUM:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/vent/ActSubscriptions$a;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActSubscriptions;

    iget-object v1, v0, Lcom/vent/ActSubscriptions;->bYD:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vent/ActSubscriptions;->bYD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 3

    check-cast p1, Lcom/vent/ActSubscriptions$a$a;

    iget-object v0, p0, Lcom/vent/ActSubscriptions$a;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActSubscriptions;

    iget-object v0, v0, Lcom/vent/ActSubscriptions;->bYD:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/w;

    iget-object v1, p1, Lcom/vent/ActSubscriptions$a$a;->bYH:Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, v0, Lcom/vent/a/w;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/vent/ActSubscriptions$a$a;->bYH:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, v0, Lcom/vent/a/w;->ckM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    new-instance v0, Lcom/vent/ActSubscriptions$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/ActSubscriptions$a$a;-><init>(Lcom/vent/ActSubscriptions$a;Landroid/view/View;)V

    return-object v0
.end method
