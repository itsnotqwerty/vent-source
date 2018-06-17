.class final Lcom/vent/ActVent$a$a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActVent$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActVent$a$a$a;
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
.field final bVA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ActVent$a;",
            ">;"
        }
    .end annotation
.end field

.field bZp:Z


# direct methods
.method constructor <init>(Lcom/vent/ActVent$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private AZ()V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ActVent$a$a;->bZp:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vent/ActVent$a$a$1;

    invoke-direct {v1, p0}, Lcom/vent/ActVent$a$a$1;-><init>(Lcom/vent/ActVent$a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static Cw()I
    .locals 1

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x3

    return v0

    :cond_0
    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final eu(I)Lcom/vent/a/k;
    .locals 4

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/vent/a/k;

    sget-object v2, Lcom/vent/ActVent;->bZg:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActVent$a;

    const v3, 0x7f0f00ec

    invoke-virtual {v0, v3}, Lcom/vent/ActVent$a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vent/a/k;-><init>(Lcom/vent/a/m;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/vent/a/k;

    sget-object v2, Lcom/vent/ActVent;->bZh:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActVent$a;

    const v3, 0x7f0f00e7

    invoke-virtual {v0, v3}, Lcom/vent/ActVent$a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vent/a/k;-><init>(Lcom/vent/a/m;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/vent/a/k;

    sget-object v2, Lcom/vent/ActVent;->bZi:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActVent$a;

    const v3, 0x7f0f00be

    invoke-virtual {v0, v3}, Lcom/vent/ActVent$a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vent/a/k;-><init>(Lcom/vent/a/m;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getItemCount()I
    .locals 2

    invoke-static {}, Lcom/vent/ActVent$a$a;->Cw()I

    move-result v1

    sget-boolean v0, Lcom/vent/ActVent;->bZe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vent/ActVent$a$a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :pswitch_1
    const-wide/16 v0, -0x2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/vent/ActVent$a$a;->eu(I)Lcom/vent/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 1

    invoke-static {}, Lcom/vent/ActVent$a$a;->Cw()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/vent/ActVent$a$a;->AZ()V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/vent/ActVent;->bZe:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vent/ActVent$a$a;->Cw()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    if-lt p2, v0, :cond_0

    invoke-direct {p0}, Lcom/vent/ActVent$a$a;->AZ()V

    :cond_0
    check-cast p1, Lcom/vent/ActVent$a$a$a;

    invoke-virtual {p0, p2}, Lcom/vent/ActVent$a$a;->eu(I)Lcom/vent/a/k;

    move-result-object v0

    iget-object v1, p1, Lcom/vent/ActVent$a$a$a;->bVB:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/vent/ActVent;->bZg:Lcom/vent/a/m;

    invoke-static {v1, v0}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f080114

    :goto_1
    iget-object v1, p1, Lcom/vent/ActVent$a$a$a;->bZs:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vent/ActVent;->bZh:Lcom/vent/a/m;

    invoke-static {v1, v0}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f080112

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/vent/ActVent;->bZi:Lcom/vent/a/m;

    invoke-static {v1, v0}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080113

    goto :goto_1

    :cond_3
    const v0, 0x7f080111

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/vent/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00ca

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/vent/ActVent$a$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d2

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/ActVent$a$a$a;-><init>(Lcom/vent/ActVent$a$a;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
