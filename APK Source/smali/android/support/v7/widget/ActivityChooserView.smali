.class public final Landroid/support/v7/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserView$InnerLayout;,
        Landroid/support/v7/widget/ActivityChooserView$a;,
        Landroid/support/v7/widget/ActivityChooserView$b;
    }
.end annotation


# instance fields
.field Rw:Landroid/widget/PopupWindow$OnDismissListener;

.field final Vd:Landroid/support/v7/widget/ActivityChooserView$a;

.field private final Ve:Landroid/support/v7/widget/ActivityChooserView$b;

.field private final Vf:Landroid/view/View;

.field final Vg:Landroid/widget/FrameLayout;

.field private final Vh:Landroid/widget/ImageView;

.field final Vi:Landroid/widget/FrameLayout;

.field private final Vj:I

.field Vk:Landroid/support/v4/view/c;

.field final Vl:Landroid/database/DataSetObserver;

.field private final Vm:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private Vn:Landroid/support/v7/widget/av;

.field Vo:Z

.field Vp:I

.field private Vq:I

.field private lH:Z


# direct methods
.method private fW()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/av;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method


# virtual methods
.method final bb(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->Vm:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vi:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    invoke-virtual {v3}, Landroid/support/v7/widget/e;->fO()I

    move-result v4

    if-eqz v0, :cond_5

    move v3, v1

    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_6

    add-int/2addr v3, p1

    if-le v4, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActivityChooserView$a;->P(Z)V

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserView$a;->bc(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/av;

    move-result-object v3

    iget-object v4, v3, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserView;->Vo:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_7

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v4, v1, v0}, Landroid/support/v7/widget/ActivityChooserView$a;->d(ZZ)V

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->fX()I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/ActivityChooserView;->Vj:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->setContentWidth(I)V

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->show()V

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vk:Landroid/support/v4/view/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vk:Landroid/support/v4/view/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/c;->t(Z)V

    :cond_2
    iget-object v0, v3, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Landroid/support/v7/a/a$h;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActivityChooserView$a;->P(Z)V

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ActivityChooserView$a;->bc(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/widget/ActivityChooserView$a;->d(ZZ)V

    goto :goto_3
.end method

.method public final fV()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/av;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/av;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->dismiss()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vm:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getDataModel()Landroid/support/v7/widget/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    return-object v0
.end method

.method final getListPopupWindow()Landroid/support/v7/widget/av;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/av;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/av;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    iput-object p0, v0, Landroid/support/v7/widget/av;->acY:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->hv()V

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Ve:Landroid/support/v7/widget/ActivityChooserView$b;

    iput-object v1, v0, Landroid/support/v7/widget/av;->ada:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Ve:Landroid/support/v7/widget/ActivityChooserView$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vn:Landroid/support/v7/widget/av;

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vl:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->registerObserver(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->lH:Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vl:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vm:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->fW()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->fV()Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->lH:Z

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vf:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView;->fW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->fV()Z

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vf:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vi:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/ActivityChooserView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setActivityChooserModel(Landroid/support/v7/widget/e;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v1, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView;->Vl:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/e;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    if-eqz p1, :cond_1

    iget-object v1, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->Vl:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/e;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/av;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->fV()Z

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/av;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->lH:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vo:Z

    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vp:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActivityChooserView;->bb(I)V

    goto :goto_0
.end method

.method public final setDefaultActionButtonContentDescription(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vq:I

    return-void
.end method

.method public final setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vh:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->Vh:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setInitialActivityCount(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vp:I

    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final setProvider(Landroid/support/v4/view/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->Vk:Landroid/support/v4/view/c;

    return-void
.end method
