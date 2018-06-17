.class abstract Lcom/vent/h;
.super Lcom/vent/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static cap:I


# instance fields
.field public bUd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
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

.field car:Z

.field cas:Z

.field cat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    sput v0, Lcom/vent/h;->cap:I

    return-void
.end method

.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/vent/m;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/h;->car:Z

    iput-boolean v1, p0, Lcom/vent/h;->cas:Z

    iput-boolean v1, p0, Lcom/vent/h;->cat:Z

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public final CC()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/vent/m;->CC()V

    iput-object v0, p0, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vent/h;->caq:Ljava/util/HashMap;

    return-void
.end method

.method public final CG()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vent/h;->Cw()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    invoke-static {v1, v2, v3}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Map;)V

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

    iget-object v3, p0, Lcom/vent/h;->caq:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "data"

    iget-object v3, p0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "needmore"

    iget-boolean v3, p0, Lcom/vent/h;->cbf:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "age"

    iget-wide v4, p0, Lcom/vent/h;->bZY:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 12

    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/h;->AZ()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/vent/h;->ew(I)I

    move-result v1

    iget-boolean v0, p0, Lcom/vent/h;->cbf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/h;->Cw()I

    move-result v3

    iget-boolean v0, p0, Lcom/vent/h;->cbd:Z

    if-eqz v0, :cond_6

    move v0, v5

    :goto_1
    sub-int v0, v3, v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/h;->AZ()V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/vent/h$a;

    iget-object v3, p0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    move-object v9, v2

    :goto_2
    if-eqz v9, :cond_1

    iget-object v1, p0, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    if-nez v1, :cond_8

    :cond_1
    move-object v1, v2

    :goto_3
    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    move v8, v5

    :goto_4
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/vent/a/x;->Fa()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    :goto_5
    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    invoke-static {v3}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v3

    :goto_6
    invoke-static {v3}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v4

    if-eqz v3, :cond_c

    invoke-virtual {v3, v4}, Lcom/vent/a/h;->bn(Z)I

    move-result v3

    :goto_7
    iget-object v4, v0, Lcom/vent/h$a;->bUF:Lcom/vent/CachedImageView;

    sget v10, Lcom/vent/MyApplication;->cgk:I

    sget v11, Lcom/vent/MyApplication;->cgm:I

    invoke-static {v1, v4, v10, v11}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v4, v0, Lcom/vent/h$a;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v4, v0}, Lcom/vent/CachedImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/vent/h$a;->bZI:Landroid/widget/TextView;

    if-nez v1, :cond_d

    move-object v4, v2

    :goto_8
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/vent/a/i;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    const v10, 0x7f0f0008

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    iget-boolean v4, p0, Lcom/vent/h;->car:Z

    if-eqz v4, :cond_3

    if-eqz v8, :cond_11

    move v4, v6

    :goto_a
    if-nez v4, :cond_17

    iget-object v1, v0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    :goto_b
    if-eqz v9, :cond_1c

    iget-boolean v1, p0, Lcom/vent/h;->cat:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/vent/h;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    :goto_c
    iget v1, v9, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v4, v1, 0x18

    if-nez v2, :cond_1a

    move v1, v6

    :goto_d
    if-ge v4, v1, :cond_1b

    :goto_e
    iget-object v1, v0, Lcom/vent/h$a;->caz:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v0, Lcom/vent/h$a;->caz:Landroid/widget/ImageButton;

    if-nez v8, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move v6, v7

    :cond_5
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_f
    iget-object v1, v0, Lcom/vent/h$a;->cax:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/vent/h$a;->caA:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    sget v0, Lcom/vent/h;->cap:I

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/i;

    move-object v9, v1

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v3, v9, Lcom/vent/a/i;->cjD:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    goto/16 :goto_3

    :cond_9
    move v8, v6

    goto/16 :goto_4

    :cond_a
    move v3, v6

    goto/16 :goto_5

    :cond_b
    move-object v3, v2

    goto/16 :goto_6

    :cond_c
    const v3, -0x7f7f80

    goto/16 :goto_7

    :cond_d
    iget-object v4, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    goto/16 :goto_8

    :cond_e
    if-eqz v9, :cond_10

    iget v4, v9, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v4, v4, 0x18

    const/16 v10, 0x32

    if-ne v4, v10, :cond_f

    move v4, v5

    :goto_10
    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    const v10, 0x7f0f00b5

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_f
    move v4, v6

    goto :goto_10

    :cond_10
    iget-object v4, v0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v1}, Lcom/vent/a/x;->isBlocked()Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f0800b5

    goto/16 :goto_a

    :cond_12
    invoke-virtual {v1}, Lcom/vent/a/x;->EZ()Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f0800bb

    goto/16 :goto_a

    :cond_13
    invoke-virtual {v1}, Lcom/vent/a/x;->Fh()Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f08005a

    goto/16 :goto_a

    :cond_14
    invoke-virtual {v1}, Lcom/vent/a/x;->Fj()Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f080079

    goto/16 :goto_a

    :cond_15
    invoke-virtual {v1}, Lcom/vent/a/x;->Ff()Z

    move-result v4

    if-nez v4, :cond_16

    const v4, 0x7f08012a

    goto/16 :goto_a

    :cond_16
    const v4, 0x7f0800ab

    goto/16 :goto_a

    :cond_17
    iget-object v10, v0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v10, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v10, v0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v10, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v4, v0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v10}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, v0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    if-nez v8, :cond_18

    invoke-virtual {v1}, Lcom/vent/a/x;->isBlocked()Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v5

    :goto_11
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_b

    :cond_18
    move v1, v6

    goto :goto_11

    :cond_19
    iget-object v1, p0, Lcom/vent/h;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/ActUserListGroupMembers;

    iget-object v2, v1, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    goto/16 :goto_c

    :cond_1a
    iget v1, v2, Lcom/vent/a/k;->flags:I

    shr-int/lit8 v1, v1, 0x18

    goto/16 :goto_d

    :cond_1b
    move v5, v6

    goto/16 :goto_e

    :cond_1c
    iget-object v1, v0, Lcom/vent/h$a;->caz:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_f

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
    new-instance v0, Lcom/vent/h$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/h$a;-><init>(Lcom/vent/h;Landroid/view/View;)V

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
    check-cast p1, Lcom/vent/h$a;

    iget-object v0, p1, Lcom/vent/h$a;->bUF:Lcom/vent/CachedImageView;

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

    const-string v0, "users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/h;->bUd:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v0, "invite_tiers"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/h;->caq:Ljava/util/HashMap;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/h;->cbg:Ljava/util/ArrayList;

    const-string v0, "needmore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/h;->cbf:Z

    const-string v0, "age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/h;->bZY:J

    :cond_0
    invoke-virtual {p0, v4, v4}, Lcom/vent/h;->g(ZZ)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
