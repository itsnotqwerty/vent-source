.class final Landroid/support/v7/view/menu/e;
.super Landroid/support/v7/view/menu/m;

# interfaces
.implements Landroid/support/v7/view/menu/o;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/e$a;
    }
.end annotation


# instance fields
.field private LM:Z

.field private final Rb:I

.field private final Rc:I

.field private final Rd:I

.field private final Re:Z

.field final Rf:Landroid/os/Handler;

.field private final Rg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field final Rh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final Rj:Landroid/view/View$OnAttachStateChangeListener;

.field private final Rk:Landroid/support/v7/widget/aw;

.field private Rl:I

.field private Rm:I

.field Rn:Landroid/view/View;

.field private Ro:I

.field private Rp:Z

.field private Rq:Z

.field private Rr:I

.field private Rs:I

.field private Rt:Z

.field private Ru:Landroid/support/v7/view/menu/o$a;

.field private Rv:Landroid/view/ViewTreeObserver;

.field private Rw:Landroid/widget/PopupWindow$OnDismissListener;

.field Rx:Z

.field private final mContext:Landroid/content/Context;

.field private mc:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/view/menu/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Rg:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    new-instance v0, Landroid/support/v7/view/menu/e$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$1;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroid/support/v7/view/menu/e$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$2;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Rj:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/support/v7/view/menu/e$3;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/e$3;-><init>(Landroid/support/v7/view/menu/e;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Rk:Landroid/support/v7/widget/aw;

    iput v1, p0, Landroid/support/v7/view/menu/e;->Rl:I

    iput v1, p0, Landroid/support/v7/view/menu/e;->Rm:I

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    iput p3, p0, Landroid/support/v7/view/menu/e;->Rc:I

    iput p4, p0, Landroid/support/v7/view/menu/e;->Rd:I

    iput-boolean p5, p0, Landroid/support/v7/view/menu/e;->Re:Z

    iput-boolean v1, p0, Landroid/support/v7/view/menu/e;->Rt:Z

    invoke-direct {p0}, Landroid/support/v7/view/menu/e;->fb()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/e;->Ro:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/a/a$d;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/e;->Rb:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Rf:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/e;)Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/e;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/e;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private fb()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private g(Landroid/support/v7/view/menu/h;)V
    .locals 12

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    new-instance v0, Landroid/support/v7/view/menu/g;

    iget-boolean v1, p0, Landroid/support/v7/view/menu/e;->Re:Z

    invoke-direct {v0, p1, v6, v1}, Landroid/support/v7/view/menu/g;-><init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;Z)V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/support/v7/view/menu/e;->Rt:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/view/menu/g;->Rt:Z

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/view/menu/e;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/support/v7/view/menu/e;->Rb:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/view/menu/e;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    new-instance v8, Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/e;->Rc:I

    iget v3, p0, Landroid/support/v7/view/menu/e;->Rd:I

    invoke-direct {v8, v1, v2, v3}, Landroid/support/v7/widget/ax;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rk:Landroid/support/v7/widget/aw;

    iput-object v1, v8, Landroid/support/v7/widget/ax;->adm:Landroid/support/v7/widget/aw;

    iput-object p0, v8, Landroid/support/v7/widget/av;->ada:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, p0}, Landroid/support/v7/widget/ax;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    iput-object v1, v8, Landroid/support/v7/widget/av;->acY:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/view/menu/e;->Rm:I

    iput v1, v8, Landroid/support/v7/widget/av;->Rm:I

    invoke-virtual {v8}, Landroid/support/v7/widget/ax;->hv()V

    invoke-virtual {v8}, Landroid/support/v7/widget/ax;->hw()V

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/ax;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/ax;->setContentWidth(I)V

    iget v0, p0, Landroid/support/v7/view/menu/e;->Rm:I

    iput v0, v8, Landroid/support/v7/widget/av;->Rm:I

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v3, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    if-ne p1, v5, :cond_5

    move-object v5, v1

    :goto_2
    if-nez v5, :cond_7

    const/4 v1, 0x0

    :goto_3
    move-object v3, v1

    move-object v4, v0

    :goto_4
    if-eqz v3, :cond_16

    sget-object v0, Landroid/support/v7/widget/ax;->adl:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ax;->adl:Ljava/lang/reflect/Method;

    iget-object v1, v8, Landroid/support/v7/widget/ax;->adj:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, v8, Landroid/support/v7/widget/ax;->adj:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v5, p0, Landroid/support/v7/view/menu/e;->Ro:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_e

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget v1, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    move v1, v0

    :goto_6
    const/4 v0, 0x1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    iput v1, p0, Landroid/support/v7/view/menu/e;->Ro:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_11

    iput-object v3, v8, Landroid/support/v7/widget/av;->acY:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v5, p0, Landroid/support/v7/view/menu/e;->Rm:I

    and-int/lit8 v5, v5, 0x5

    const/4 v9, 0x5

    if-ne v5, v9, :cond_14

    if-eqz v0, :cond_13

    add-int v0, v2, v7

    :goto_9
    iput v0, v8, Landroid/support/v7/widget/av;->acM:I

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/support/v7/widget/av;->acR:Z

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/support/v7/widget/av;->Wo:Z

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/ax;->setVerticalOffset(I)V

    :goto_a
    new-instance v0, Landroid/support/v7/view/menu/e$a;

    iget v1, p0, Landroid/support/v7/view/menu/e;->Ro:I

    invoke-direct {v0, v8, p1, v1}, Landroid/support/v7/view/menu/e$a;-><init>(Landroid/support/v7/widget/ax;Landroid/support/v7/view/menu/h;I)V

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/support/v7/widget/ax;->show()V

    iget-object v2, v8, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v4, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/view/menu/e;->LM:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/v7/view/menu/h;->Sj:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    sget v0, Landroid/support/v7/a/a$g;->abc_popup_menu_header_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v3, p1, Landroid/support/v7/view/menu/h;->Sj:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v8}, Landroid/support/v7/widget/ax;->show()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/v7/view/menu/m;->h(Landroid/support/v7/view/menu/h;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/view/menu/g;->Rt:Z

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    move-object v5, v1

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v9, v1, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_8

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/g;

    :goto_b
    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/g;->getCount()I

    move-result v10

    :goto_c
    if-ge v3, v10, :cond_19

    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/g;->aW(I)Landroid/support/v7/view/menu/j;

    move-result-object v11

    if-ne v5, v11, :cond_9

    move v1, v3

    :goto_d
    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    check-cast v1, Landroid/support/v7/view/menu/g;

    goto :goto_b

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_a
    add-int/2addr v1, v2

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    if-ltz v1, :cond_b

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_c

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v9, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    const/4 v0, 0x0

    aget v0, v1, v0

    sub-int/2addr v0, v7

    if-gez v0, :cond_f

    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_6

    :cond_f
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x2

    new-array v5, v2, [I

    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, p0, Landroid/support/v7/view/menu/e;->Rm:I

    and-int/lit8 v2, v2, 0x7

    const/4 v9, 0x5

    if-ne v2, v9, :cond_12

    const/4 v2, 0x0

    aget v9, v1, v2

    iget-object v10, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v1, v2

    const/4 v2, 0x0

    aget v9, v5, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v5, v2

    :cond_12
    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v9, 0x0

    aget v9, v1, v9

    sub-int/2addr v2, v9

    const/4 v9, 0x1

    aget v5, v5, v9

    const/4 v9, 0x1

    aget v1, v1, v9

    sub-int v1, v5, v1

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v2, v0

    goto/16 :goto_9

    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    goto/16 :goto_9

    :cond_15
    sub-int v0, v2, v7

    goto/16 :goto_9

    :cond_16
    iget-boolean v0, p0, Landroid/support/v7/view/menu/e;->Rp:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/support/v7/view/menu/e;->Rr:I

    iput v0, v8, Landroid/support/v7/widget/av;->acM:I

    :cond_17
    iget-boolean v0, p0, Landroid/support/v7/view/menu/e;->Rq:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/support/v7/view/menu/e;->Rs:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/ax;->setVerticalOffset(I)V

    :cond_18
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->SR:Landroid/graphics/Rect;

    iput-object v0, v8, Landroid/support/v7/widget/av;->SR:Landroid/graphics/Rect;

    goto/16 :goto_a

    :cond_19
    move v1, v4

    goto/16 :goto_d
.end method


# virtual methods
.method public final G(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/menu/e;->a(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/e;->LM:Z

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    if-ne p1, v0, :cond_1

    :goto_1
    if-gez v1, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->I(Z)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v1, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    iget-boolean v1, p0, Landroid/support/v7/view/menu/e;->Rx:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_5

    iget-object v1, v1, Landroid/support/v7/widget/ax;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_5
    iget-object v1, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v1, v1, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_6
    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget v0, v0, Landroid/support/v7/view/menu/e$a;->position:I

    iput v0, p0, Landroid/support/v7/view/menu/e;->Ro:I

    :goto_3
    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Ru:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Ru:Landroid/support/v7/view/menu/o$a;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v5, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rj:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0}, Landroid/support/v7/view/menu/e;->fb()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/e;->Ro:I

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->I(Z)V

    goto/16 :goto_2
.end method

.method public final a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->Ru:Landroid/support/v7/view/menu/o$a;

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/u;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v3, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    if-ne p1, v3, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/e;->f(Landroid/support/v7/view/menu/h;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Ru:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->d(Landroid/support/v7/view/menu/h;)Z

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dismiss()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    new-array v2, v1, [Landroid/support/v7/view/menu/e$a;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/view/menu/e$a;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    iget-object v3, v2, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v3, v3, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->dismiss()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Landroid/support/v7/view/menu/h;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/e;->g(Landroid/support/v7/view/menu/h;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final fa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final fc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    goto :goto_0
.end method

.method public final isShowing()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final onDismiss()V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rh:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/e$a;

    iget-object v5, v0, Landroid/support/v7/view/menu/e$a;->RD:Landroid/support/v7/widget/ax;

    iget-object v5, v5, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/e$a;->NK:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->I(Z)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    iget v0, p0, Landroid/support/v7/view/menu/e;->Rl:I

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/e;->Rm:I

    :cond_0
    return-void
.end method

.method public final setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/e;->Rt:Z

    return-void
.end method

.method public final setGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/e;->Rl:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/view/menu/e;->Rl:I

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/e;->Rm:I

    :cond_0
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/e;->Rp:Z

    iput p1, p0, Landroid/support/v7/view/menu/e;->Rr:I

    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/e;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/e;->Rq:Z

    iput p1, p0, Landroid/support/v7/view/menu/e;->Rs:I

    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/e;->g(Landroid/support/v7/view/menu/h;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->mc:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rv:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/e;->Rn:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/e;->Rj:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
