.class public final Lcom/vent/views/MyFragmentTabHost;
.super Landroid/widget/TabHost;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/views/MyFragmentTabHost$b;,
        Lcom/vent/views/MyFragmentTabHost$a;,
        Lcom/vent/views/MyFragmentTabHost$c;
    }
.end annotation


# instance fields
.field private cow:Landroid/widget/FrameLayout;

.field private cox:Landroid/widget/TabHost$OnTabChangeListener;

.field private coy:Lcom/vent/views/MyFragmentTabHost$c;

.field private coz:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private final od:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/views/MyFragmentTabHost$c;",
            ">;"
        }
    .end annotation
.end field

.field private yz:Landroid/support/v4/app/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/vent/views/MyFragmentTabHost;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/vent/views/MyFragmentTabHost;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private FF()V
    .locals 3

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->cow:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vent/views/MyFragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Lcom/vent/views/MyFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->cow:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->cow:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No tab content FrameLayout found for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vent/views/MyFragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v4/app/t;)Landroid/support/v4/app/t;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_5

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/views/MyFragmentTabHost$c;

    iget-object v3, v0, Lcom/vent/views/MyFragmentTabHost$c;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    if-eq v1, v0, :cond_3

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v1}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    iget-object v1, v1, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    iget-object v1, v1, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p2, v1}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/vent/views/MyFragmentTabHost$c;->coB:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/vent/views/MyFragmentTabHost$c;->coC:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/i;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    iget v1, p0, Lcom/vent/views/MyFragmentTabHost;->mContainerId:I

    iget-object v2, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    iget-object v3, v0, Lcom/vent/views/MyFragmentTabHost$c;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    :cond_2
    :goto_2
    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    :cond_3
    return-object p2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p2, v1}, Landroid/support/v4/app/t;->c(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    goto :goto_2
.end method

.method private bN(Landroid/content/Context;)V
    .locals 7

    const v2, 0x1020013

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, v2}, Lcom/vent/views/MyFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/vent/views/MyFragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TabWidget;

    invoke-direct {v1, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setId(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TabWidget;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->cow:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vent/views/MyFragmentTabHost;->cow:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/vent/views/MyFragmentTabHost;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vent/views/MyFragmentTabHost;->mContainerId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public final FE()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vent/views/MyFragmentTabHost;->bN(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    invoke-direct {p0}, Lcom/vent/views/MyFragmentTabHost;->FF()V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/support/v4/app/n;)V
    .locals 2

    const v1, 0x7f090242

    invoke-direct {p0, p1}, Lcom/vent/views/MyFragmentTabHost;->bN(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Lcom/vent/views/MyFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    iput v1, p0, Lcom/vent/views/MyFragmentTabHost;->mContainerId:I

    invoke-direct {p0}, Lcom/vent/views/MyFragmentTabHost;->FF()V

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->cow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/vent/views/MyFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/vent/views/MyFragmentTabHost;->setId(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/vent/views/MyFragmentTabHost$a;

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vent/views/MyFragmentTabHost$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vent/views/MyFragmentTabHost$c;

    invoke-direct {v1, v0, p2}, Lcom/vent/views/MyFragmentTabHost$c;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iget-boolean v2, p0, Lcom/vent/views/MyFragmentTabHost;->coz:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    iget-object v0, v1, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v0

    iget-object v2, v1, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/t;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/vent/views/MyFragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final clearAllTabs()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->clearAllTabs()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/views/MyFragmentTabHost$c;

    iget-object v5, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    iget-object v6, v0, Lcom/vent/views/MyFragmentTabHost$c;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v5

    iput-object v5, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    iget-object v5, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    invoke-virtual {v5}, Landroid/support/v4/app/i;->isDetached()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/vent/views/MyFragmentTabHost$c;->tag:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->coy:Lcom/vent/views/MyFragmentTabHost$c;

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v1}, Landroid/support/v4/app/n;->cG()Landroid/support/v4/app/t;

    move-result-object v1

    :cond_2
    iget-object v0, v0, Lcom/vent/views/MyFragmentTabHost$c;->wD:Landroid/support/v4/app/i;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/t;->b(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/views/MyFragmentTabHost;->coz:Z

    invoke-direct {p0, v3, v1}, Lcom/vent/views/MyFragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/t;)Landroid/support/v4/app/t;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/t;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->yz:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->executePendingTransactions()Z

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/views/MyFragmentTabHost;->coz:Z

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/vent/views/MyFragmentTabHost$b;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/vent/views/MyFragmentTabHost$b;

    invoke-virtual {p1}, Lcom/vent/views/MyFragmentTabHost$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/vent/views/MyFragmentTabHost$b;->coA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vent/views/MyFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/vent/views/MyFragmentTabHost$b;

    invoke-direct {v1, v0}, Lcom/vent/views/MyFragmentTabHost$b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/views/MyFragmentTabHost$b;->coA:Ljava/lang/String;

    return-object v1
.end method

.method public final onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/vent/views/MyFragmentTabHost;->coz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vent/views/MyFragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/t;)Landroid/support/v4/app/t;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/t;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->cox:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/views/MyFragmentTabHost;->cox:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/views/MyFragmentTabHost;->cox:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method
