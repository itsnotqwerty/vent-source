.class abstract Lcom/vent/o;
.super Lcom/vent/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/o$a;,
        Lcom/vent/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/x;",
        ">;"
    }
.end annotation


# instance fields
.field public bXg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public bXh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public caq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vent/m;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public CC()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/vent/m;->CC()V

    iput-object v0, p0, Lcom/vent/o;->bXh:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vent/o;->bXg:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vent/o;->caq:Ljava/util/HashMap;

    return-void
.end method

.method public CG()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vent/o;->Cw()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const v3, 0xa000

    if-ge v2, v3, :cond_1

    :cond_0
    const-string v2, "users"

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "invite_tiers"

    iget-object v3, p0, Lcom/vent/o;->caq:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "emotions"

    iget-object v3, p0, Lcom/vent/o;->bXh:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "emotion_categories"

    iget-object v3, p0, Lcom/vent/o;->bXg:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "needmore"

    iget-boolean v3, p0, Lcom/vent/o;->cbf:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "age"

    iget-wide v4, p0, Lcom/vent/o;->bZY:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    return-object v0
.end method

.method final a(Lcom/vent/a/x;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/o;->bUM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/o;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/o;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/o;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/am;

    :goto_1
    iget-object v2, p0, Lcom/vent/o;->caq:Ljava/util/HashMap;

    invoke-static {v1, v0, p1, v2}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method final a(Lcom/vent/o$b;Lcom/vent/a/x;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/vent/a/x;->isBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    move-object v0, p2

    :goto_1
    iget-object v4, p1, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    invoke-static {v0, v4, p3, p3}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v0, p1, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p1}, Lcom/vent/CachedImageView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p1, Lcom/vent/o$b;->bZI:Landroid/widget/TextView;

    if-nez p2, :cond_4

    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/vent/a/x;->Fa()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/o;->bXh:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/vent/o;->bXg:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/vent/o$b;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/a/h;->bn(Z)I

    move-result v0

    move v1, v0

    :goto_4
    if-eqz p2, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_5
    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_6
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p2, Lcom/vent/a/x;->username:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    const v0, -0x7f7f80

    move v1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Lcom/vent/a/x;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0800b5

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Lcom/vent/a/x;->EZ()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0800bb

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Lcom/vent/a/x;->Fh()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f08005a

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lcom/vent/a/x;->Fj()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f080079

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Lcom/vent/a/x;->Ff()Z

    move-result v0

    if-nez v0, :cond_c

    const v0, 0x7f08012a

    goto :goto_5

    :cond_c
    const v0, 0x7f0800ab

    goto :goto_5

    :cond_d
    iget-object v3, p1, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, p1, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p1, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6
.end method

.method b(Lcom/vent/a/x;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/vent/o;->ex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vent/o;->notifyItemChanged(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/o;->AZ()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/vent/o;->ew(I)I

    move-result v1

    iget-boolean v0, p0, Lcom/vent/o;->cbf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/o;->Cw()I

    move-result v2

    iget-boolean v0, p0, Lcom/vent/o;->cbd:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sub-int v0, v2, v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/o;->AZ()V

    :cond_0
    check-cast p1, Lcom/vent/o$a;

    iget-object v0, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    sget v1, Lcom/vent/MyApplication;->cgk:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/vent/o;->a(Lcom/vent/o$b;Lcom/vent/a/x;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/m;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/o$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/o$a;-><init>(Lcom/vent/o;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/vent/o$b;

    iget-object v0, p1, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public t(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v0, "users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/o;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v0, "invite_tiers"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/o;->caq:Ljava/util/HashMap;

    const-string v0, "emotions"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/o;->bXh:Ljava/util/HashMap;

    const-string v0, "emotion_categories"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/o;->bXg:Ljava/util/HashMap;

    const-string v0, "needmore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/o;->cbf:Z

    const-string v0, "age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/o;->bZY:J

    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/vent/o;->g(ZZ)V

    :cond_1
    return-void
.end method
