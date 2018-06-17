.class final Landroid/support/v7/view/menu/t;
.super Landroid/support/v7/view/menu/m;

# interfaces
.implements Landroid/support/v7/view/menu/o;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private LM:Z

.field private final Pj:Landroid/support/v7/view/menu/h;

.field private final Rc:I

.field private final Rd:I

.field private final Re:Z

.field private final Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final Rj:Landroid/view/View$OnAttachStateChangeListener;

.field private Rm:I

.field Rn:Landroid/view/View;

.field private Ru:Landroid/support/v7/view/menu/o$a;

.field private Rv:Landroid/view/ViewTreeObserver;

.field private Rw:Landroid/widget/PopupWindow$OnDismissListener;

.field private final SV:Landroid/support/v7/view/menu/g;

.field private final SW:I

.field final SX:Landroid/support/v7/widget/ax;

.field private SY:Z

.field private SZ:Z

.field private Ta:I

.field private final mContext:Landroid/content/Context;

.field private mc:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;IIZ)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/view/menu/m;-><init>()V

    new-instance v0, Landroid/support/v7/view/menu/t$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/t$1;-><init>(Landroid/support/v7/view/menu/t;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroid/support/v7/view/menu/t$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/t$2;-><init>(Landroid/support/v7/view/menu/t;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->Rj:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/t;->Rm:I

    iput-object p1, p0, Landroid/support/v7/view/menu/t;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/menu/t;->Pj:Landroid/support/v7/view/menu/h;

    iput-boolean p6, p0, Landroid/support/v7/view/menu/t;->Re:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/menu/g;

    iget-boolean v2, p0, Landroid/support/v7/view/menu/t;->Re:Z

    invoke-direct {v1, p2, v0, v2}, Landroid/support/v7/view/menu/g;-><init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;Z)V

    iput-object v1, p0, Landroid/support/v7/view/menu/t;->SV:Landroid/support/v7/view/menu/g;

    iput p4, p0, Landroid/support/v7/view/menu/t;->Rc:I

    iput p5, p0, Landroid/support/v7/view/menu/t;->Rd:I

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

    iput v0, p0, Landroid/support/v7/view/menu/t;->SW:I

    iput-object p3, p0, Landroid/support/v7/view/menu/t;->mc:Landroid/view/View;

    new-instance v0, Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/t;->Rc:I

    iget v3, p0, Landroid/support/v7/view/menu/t;->Rd:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/ax;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/menu/t;)Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/view/menu/t;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/view/menu/t;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method


# virtual methods
.method public final G(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/t;->SZ:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SV:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SV:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final H(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/t;->LM:Z

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Pj:Landroid/support/v7/view/menu/h;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Ru:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/t;->Ru:Landroid/support/v7/view/menu/o$a;

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/u;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v7/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/view/menu/t;->Rn:Landroid/view/View;

    iget-boolean v4, p0, Landroid/support/v7/view/menu/t;->Re:Z

    iget v5, p0, Landroid/support/v7/view/menu/t;->Rc:I

    iget v6, p0, Landroid/support/v7/view/menu/t;->Rd:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/n;->b(Landroid/support/v7/view/menu/o$a;)V

    invoke-static {p1}, Landroid/support/v7/view/menu/m;->h(Landroid/support/v7/view/menu/h;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/n;->setForceShowIcon(Z)V

    iget v1, p0, Landroid/support/v7/view/menu/t;->Rm:I

    iput v1, v0, Landroid/support/v7/view/menu/n;->Rm:I

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object v1, v0, Landroid/support/v7/view/menu/n;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/t;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v8}, Landroid/support/v7/view/menu/h;->I(Z)V

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget v1, v1, Landroid/support/v7/widget/av;->acM:I

    iget-object v2, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v2}, Landroid/support/v7/widget/ax;->getVerticalOffset()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v7

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Ru:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Ru:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->d(Landroid/support/v7/view/menu/h;)Z

    :cond_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    iget-object v3, v0, Landroid/support/v7/view/menu/n;->mc:Landroid/view/View;

    if-nez v3, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/support/v7/view/menu/n;->a(IIZZ)V

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->dismiss()V

    :cond_0
    return-void
.end method

.method public final f(Landroid/support/v7/view/menu/h;)V
    .locals 0

    return-void
.end method

.method public final fa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    return-object v0
.end method

.method public final isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->SY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/t;->SY:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rn:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->Rj:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/t;->mc:Landroid/view/View;

    return-void
.end method

.method public final setForceShowIcon(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SV:Landroid/support/v7/view/menu/g;

    iput-boolean p1, v0, Landroid/support/v7/view/menu/g;->Rt:Z

    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/view/menu/t;->Rm:I

    return-void
.end method

.method public final setHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iput p1, v0, Landroid/support/v7/widget/av;->acM:I

    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/t;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final setVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ax;->setVerticalOffset(I)V

    return-void
.end method

.method public final show()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->SY:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->mc:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->mc:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->Rn:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ax;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iput-object p0, v0, Landroid/support/v7/widget/av;->ada:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->hv()V

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->Rn:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_7

    move v0, v2

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rv:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Landroid/support/v7/view/menu/t;->Ri:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Rj:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iput-object v1, v0, Landroid/support/v7/widget/av;->acY:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget v1, p0, Landroid/support/v7/view/menu/t;->Rm:I

    iput v1, v0, Landroid/support/v7/widget/av;->Rm:I

    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->SZ:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SV:Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/view/menu/t;->SW:I

    invoke-static {v0, v6, v1, v4}, Landroid/support/v7/view/menu/t;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/t;->Ta:I

    iput-boolean v2, p0, Landroid/support/v7/view/menu/t;->SZ:Z

    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget v1, p0, Landroid/support/v7/view/menu/t;->Ta:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ax;->setContentWidth(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->hw()V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/view/menu/m;->SR:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/support/v7/widget/av;->SR:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->show()V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget-object v4, v0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->LM:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, v0, Landroid/support/v7/view/menu/h;->Sj:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v5, p0, Landroid/support/v7/view/menu/t;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v5, v5, Landroid/support/v7/view/menu/h;->Sj:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v4, v0, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->SV:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ax;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->SX:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->show()V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto/16 :goto_1

    :cond_8
    return-void
.end method
