.class final Lcom/vent/h$a;
.super Lcom/vent/m$a;

# interfaces
.implements Landroid/support/v7/widget/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/h$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/i;",
        ">.a;",
        "Landroid/support/v7/widget/ba$a;"
    }
.end annotation


# instance fields
.field final bUF:Lcom/vent/CachedImageView;

.field final bZI:Landroid/widget/TextView;

.field final caA:Landroid/view/View;

.field final synthetic caB:Lcom/vent/h;

.field final cau:Landroid/widget/ImageButton;

.field final cav:Landroid/widget/ImageButton;

.field final caw:Landroid/widget/ImageButton;

.field final cax:Landroid/widget/ImageView;

.field final cay:Landroid/widget/TextView;

.field final caz:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/vent/h;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    invoke-direct {p0, p1, p2}, Lcom/vent/m$a;-><init>(Lcom/vent/m;Landroid/view/View;)V

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090232

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/h$a;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/h$a;->bUF:Lcom/vent/CachedImageView;

    sget v1, Lcom/vent/MyApplication;->cgk:I

    sget v2, Lcom/vent/MyApplication;->cgk:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/h$a;->bUF:Lcom/vent/CachedImageView;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    const v0, 0x7f0902d5

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/h$a;->bZI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/h$a;->bZI:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09010b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    const v0, 0x7f090297

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/h$a;->cax:Landroid/widget/ImageView;

    const v0, 0x7f090252

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/h$a;->cay:Landroid/widget/TextView;

    const v0, 0x7f090052

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/h$a;->caA:Landroid/view/View;

    iget-boolean v0, p1, Lcom/vent/h;->car:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0902aa

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/h$a;->cav:Landroid/widget/ImageButton;

    const v0, 0x7f0900b1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/h$a;->caw:Landroid/widget/ImageButton;

    iget-boolean v0, p1, Lcom/vent/h;->cas:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/h$a;->cav:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->cav:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->cav:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->cav:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/h$a;->caw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->caw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->caw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/h$a;->caw:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const v0, 0x7f090123

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/h$a;->caz:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/h$a;->caz:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/h$a;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/h$a;->cax:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/h$a;->cav:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/h$a;->caw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const v11, 0x7f090127

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vent/h$a;->CQ()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/vent/a/i;->cjD:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v2, v2, Lcom/vent/h;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/d;

    iget-object v3, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v3, v3, Lcom/vent/h;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v3, v3, Lcom/vent/h;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vent/am;

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, v0, Lcom/vent/a/i;->cjy:Lcom/vent/a/m;

    new-instance v3, Lcom/vent/h$a$6;

    invoke-direct {v3, p0, v0, v2}, Lcom/vent/h$a$6;-><init>(Lcom/vent/h$a;Lcom/vent/a/i;Landroid/support/v7/app/d;)V

    invoke-static {v2, v1, v3}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/m;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1}, Lcom/vent/a/x;->Fh()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vent/h$a$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/h$a$1;-><init>(Lcom/vent/h$a;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v2, v1, v0}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/vent/a/x;->Fj()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/vent/h$a$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/h$a$2;-><init>(Lcom/vent/h$a;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v2, v1, v0}, Lcom/vent/d/f;->d(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/vent/a/x;->Ff()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/vent/h$a$3;

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/h$a$3;-><init>(Lcom/vent/h$a;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v2, v1, v0}, Lcom/vent/d/f;->c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/vent/h$a$4;

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/h$a$4;-><init>(Lcom/vent/h$a;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v2, v1, v0}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Lcom/vent/a/i;->cjy:Lcom/vent/a/m;

    new-instance v3, Lcom/vent/h$a$5;

    invoke-direct {v3, p0, v0, v2}, Lcom/vent/h$a$5;-><init>(Lcom/vent/h$a;Lcom/vent/a/i;Landroid/support/v7/app/d;)V

    invoke-static {v2, v1, v3}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/m;Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_3
    new-instance v6, Landroid/support/v7/widget/ba;

    invoke-direct {v6, v2, p1}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v7, v6, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v6}, Landroid/support/v7/widget/ba;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v8, 0x7f0c0009

    invoke-virtual {v3, v8, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object v3, v2

    check-cast v3, Lcom/vent/ActUserListGroupMembers;

    iget-object v3, v3, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    iget v8, v0, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v8, v8, 0x18

    if-nez v3, :cond_6

    move v3, v5

    :goto_2
    if-ge v8, v3, :cond_7

    move v3, v4

    :goto_3
    invoke-interface {v7, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0f00f8

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v1, v10, v5

    invoke-virtual {v2, v9, v10}, Landroid/support/v7/app/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v7, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f09012a

    invoke-interface {v7, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f090126

    invoke-interface {v7, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v3, :cond_8

    iget v0, v0, Lcom/vent/a/i;->flags:I

    shr-int/lit8 v0, v0, 0x18

    if-lez v0, :cond_8

    :goto_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iput-object p0, v6, Landroid/support/v7/widget/ba;->adv:Landroid/support/v7/widget/ba$a;

    iget-object v0, v6, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->show()V

    goto/16 :goto_0

    :cond_6
    iget v3, v3, Lcom/vent/a/k;->flags:I

    shr-int/lit8 v3, v3, 0x18

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_4

    :sswitch_4
    iget-object v0, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v0, v0, Lcom/vent/h;->caq:Ljava/util/HashMap;

    invoke-static {v2, v3, v1, v0}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0900b1 -> :sswitch_0
        0x7f09010b -> :sswitch_1
        0x7f090123 -> :sswitch_3
        0x7f0901aa -> :sswitch_4
        0x7f0902aa -> :sswitch_2
    .end sparse-switch
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vent/h$a;->CQ()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/i;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v1, v1, Lcom/vent/h;->bUd:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/vent/a/i;->cjD:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    if-nez v1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/vent/h$a;->caB:Lcom/vent/h;

    iget-object v2, v2, Lcom/vent/h;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/d;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v4

    goto :goto_0

    :pswitch_1
    move-object v3, v2

    check-cast v3, Lcom/vent/ActUserListGroupMembers;

    iget-object v3, v3, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    new-instance v4, Lcom/vent/h$a$7;

    invoke-direct {v4, p0, v0}, Lcom/vent/h$a$7;-><init>(Lcom/vent/h$a;Lcom/vent/a/i;)V

    invoke-static {v2, v3, v1, v4}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    move-object v3, v2

    check-cast v3, Lcom/vent/ActUserListGroupMembers;

    iget-object v3, v3, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    new-instance v5, Lcom/vent/h$a$8;

    invoke-direct {v5, p0, v0, v2}, Lcom/vent/h$a$8;-><init>(Lcom/vent/h$a;Lcom/vent/a/i;Landroid/support/v7/app/d;)V

    invoke-static {v2, v3, v1, v0, v5}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Lcom/vent/a/i;Lcom/vent/d/c$b;)V

    goto :goto_1

    :pswitch_3
    move-object v3, v2

    check-cast v3, Lcom/vent/ActUserListGroupMembers;

    iget-object v3, v3, Lcom/vent/ActUserListGroupMembers;->bYM:Lcom/vent/a/k;

    new-instance v5, Lcom/vent/h$a$9;

    invoke-direct {v5, p0, v0}, Lcom/vent/h$a$9;-><init>(Lcom/vent/h$a;Lcom/vent/a/i;)V

    invoke-static {v2, v3, v1, v0, v5}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Lcom/vent/a/i;Lcom/vent/d/c$b;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090126
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
