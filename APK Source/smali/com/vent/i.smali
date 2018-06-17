.class abstract Lcom/vent/i;
.super Lcom/vent/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/i$b;,
        Lcom/vent/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<",
        "Lcom/vent/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field caF:Z

.field caG:Ljava/lang/Runnable;

.field caH:Lcom/vent/i$a;

.field cap:I


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/vent/l;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    const/16 v0, 0xf

    iput v0, p0, Lcom/vent/i;->cap:I

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public final CB()V
    .locals 4

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/i$a;->bZY:J

    return-void
.end method

.method public final CC()V
    .locals 2

    invoke-super {p0}, Lcom/vent/l;->CC()V

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    return-void
.end method

.method final CD()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v0, v0, Lcom/vent/i$a;->bZH:Z

    return v0
.end method

.method public final CG()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vent/i;->Cw()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v2, v2, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const v3, 0xa000

    if-ge v2, v3, :cond_1

    :cond_0
    const-string v2, "groups"

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "needmore"

    iget-object v3, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v3, v3, Lcom/vent/i$a;->bZH:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "age"

    iget-object v3, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-wide v4, v3, Lcom/vent/i$a;->bZY:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "ftr"

    iget-object v3, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v3, v3, Lcom/vent/i$a;->caL:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    return-object v0
.end method

.method public final CH()V
    .locals 2

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/i$a;->caL:Z

    invoke-super {p0}, Lcom/vent/l;->CH()V

    return-void
.end method

.method final CI()I
    .locals 1

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v0, v0, Lcom/vent/i$a;->caL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final CJ()Lcom/vent/a/k;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/i;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    goto :goto_0
.end method

.method final Cw()I
    .locals 1

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final aZ(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iput-boolean p1, v0, Lcom/vent/i$a;->bZH:Z

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vent/i;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/l;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vent/i;->ew(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    iget-object v0, v0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 7

    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/i;->AZ()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v0, v0, Lcom/vent/i$a;->bZH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/i;->Cw()I

    move-result v0

    iget v2, p0, Lcom/vent/i;->cap:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/i;->AZ()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/vent/i;->ew(I)I

    move-result v0

    iget-object v2, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v2, v2, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v2, v2, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v2, v2, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    :goto_1
    check-cast p1, Lcom/vent/i$b;

    iget-object v6, p1, Lcom/vent/i$b;->bWi:Lcom/vent/CachedImageView;

    if-nez v0, :cond_3

    move-object v2, v1

    :goto_2
    invoke-virtual {v6, v2}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/i$b;->bVB:Landroid/widget/TextView;

    if-nez v0, :cond_4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/vent/i$b;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0278

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    if-nez v0, :cond_5

    move v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/vent/i$b;->caM:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vent/a/k;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vent/i;->caF:Z

    if-nez v1, :cond_6

    :cond_1
    iget-object v1, p1, Lcom/vent/i$b;->caN:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-object v2, p1, Lcom/vent/i$b;->caO:Landroid/view/View;

    if-eqz v0, :cond_8

    iget v1, v0, Lcom/vent/a/k;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move v1, v5

    :goto_6
    if-eqz v1, :cond_8

    move v1, v3

    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vent/a/k;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    const v2, 0x7f0f0008

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    iget-object v1, p1, Lcom/vent/i$b;->bWe:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/vent/a/k;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    sget v2, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v0, v2}, Lcom/vent/a/k;->eK(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget v1, v0, Lcom/vent/a/k;->ckj:I

    goto :goto_4

    :cond_6
    iget-object v1, p1, Lcom/vent/i$b;->caN:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/vent/i$b;->CK()V

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    const/4 v1, 0x4

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_b

    iget v1, v0, Lcom/vent/a/k;->flags:I

    shr-int/lit8 v1, v1, 0x18

    const/16 v2, 0x32

    if-ne v1, v2, :cond_a

    move v1, v5

    :goto_a
    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    const v2, 0x7f0f00b5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_a
    move v1, v3

    goto :goto_a

    :cond_b
    iget-object v1, p1, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_c
    move v3, v4

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/vent/l;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/vent/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00cd

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/vent/i$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c5

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/i$b;-><init>(Lcom/vent/i;Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/vent/i$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/i$1;-><init>(Lcom/vent/i;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
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
    check-cast p1, Lcom/vent/i$b;

    iget-object v0, p1, Lcom/vent/i$b;->bWi:Lcom/vent/CachedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "groups"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    sget-object v2, Lcom/vent/a/k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    const-string v1, "needmore"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vent/i$a;->bZH:Z

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    const-string v1, "age"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/i$a;->bZY:J

    iget-object v0, p0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    const-string v1, "ftr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vent/i$a;->caL:Z

    :cond_0
    invoke-virtual {p0, v4, v4}, Lcom/vent/i;->g(ZZ)V

    :cond_1
    return-void
.end method
