.class final Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$c;,
        Landroid/support/v7/app/AlertController$a;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$b;
    }
.end annotation


# instance fields
.field Ch:Ljava/lang/CharSequence;

.field LA:Landroid/support/v4/widget/NestedScrollView;

.field LB:I

.field LC:Landroid/widget/TextView;

.field LD:Landroid/view/View;

.field LE:Landroid/widget/ListAdapter;

.field LF:I

.field LG:I

.field LH:I

.field LI:I

.field LJ:I

.field LK:I

.field LL:I

.field LM:Z

.field LN:I

.field final LO:Landroid/view/View$OnClickListener;

.field final Ld:Landroid/support/v7/app/l;

.field final Le:Landroid/view/Window;

.field final Lf:I

.field Lg:Ljava/lang/CharSequence;

.field Lh:Landroid/widget/ListView;

.field Li:I

.field Lj:I

.field Lk:I

.field Ll:I

.field Lm:I

.field Ln:Z

.field Lo:Landroid/widget/Button;

.field Lp:Ljava/lang/CharSequence;

.field Lq:Landroid/os/Message;

.field Lr:Landroid/graphics/drawable/Drawable;

.field Ls:Landroid/widget/Button;

.field Lt:Ljava/lang/CharSequence;

.field Lu:Landroid/os/Message;

.field Lv:Landroid/graphics/drawable/Drawable;

.field Lw:Landroid/widget/Button;

.field Lx:Ljava/lang/CharSequence;

.field Ly:Landroid/os/Message;

.field Lz:Landroid/graphics/drawable/Drawable;

.field ix:Landroid/widget/TextView;

.field final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mView:Landroid/view/View;

.field oa:Landroid/graphics/drawable/Drawable;

.field ph:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/l;Landroid/view/Window;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Landroid/support/v7/app/AlertController;->Ln:Z

    iput v3, p0, Landroid/support/v7/app/AlertController;->LB:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController;->LF:I

    iput v3, p0, Landroid/support/v7/app/AlertController;->LN:I

    new-instance v0, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->LO:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/AlertController;->Ld:Landroid/support/v7/app/l;

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->Le:Landroid/view/Window;

    new-instance v0, Landroid/support/v7/app/AlertController$b;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertController$b;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/a/a$j;->AlertDialog:[I

    sget v2, Landroid/support/v7/a/a$a;->alertDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->LG:I

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->LH:I

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->LI:I

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->LJ:I

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->LK:I

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->LL:I

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_showTitle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AlertController;->LM:Z

    sget v1, Landroid/support/v7/a/a$j;->AlertDialog_buttonIconDimen:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->Lf:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/support/v7/app/l;->getDelegate()Landroid/support/v7/app/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/f;->requestWindowFeature(I)Z

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static a(Landroid/widget/Button;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static at(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->at(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p0, :cond_0

    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    :goto_1
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    instance-of v0, p0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :goto_2
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->Lp:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->Lq:Landroid/os/Message;

    iput-object p5, p0, Landroid/support/v7/app/AlertController;->Lr:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->Lt:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->Lu:Landroid/os/Message;

    iput-object p5, p0, Landroid/support/v7/app/AlertController;->Lv:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->Lx:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->Ly:Landroid/os/Message;

    iput-object p5, p0, Landroid/support/v7/app/AlertController;->Lz:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setIcon(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->oa:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/app/AlertController;->LB:I

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->LB:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->Ch:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->LC:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->LC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
