.class final Landroid/support/v4/view/ViewPager$d;
.super Landroid/support/v4/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic Hh:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    return-void
.end method

.method private dW()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v1}, Landroid/support/v4/view/o;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$d;->dW()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->setScrollable(Z)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->addAction(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->addAction(I)V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$d;->dW()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->Gm:Landroid/support/v4/view/o;

    invoke-virtual {v0}, Landroid/support/v4/view/o;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget v0, v0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget v0, v0, Landroid/support/v4/view/ViewPager;->Gn:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget v2, v2, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->Hh:Landroid/support/v4/view/ViewPager;

    iget v2, v2, Landroid/support/v4/view/ViewPager;->Gn:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method