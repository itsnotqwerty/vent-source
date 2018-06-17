.class public final Lcom/vent/at;
.super Lcom/vent/an;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/at$a;
    }
.end annotation


# instance fields
.field private appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private bVU:Landroid/support/design/widget/TabLayout;

.field private cfA:Landroid/widget/EditText;

.field private cfB:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/an;-><init>()V

    return-void
.end method


# virtual methods
.method final DR()V
    .locals 2

    iget-object v0, p0, Lcom/vent/at;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/at;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/at;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Most discussed"

    :goto_0
    invoke-static {v1, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "On The Rise"

    goto :goto_0
.end method

.method final DU()V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/at;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/vent/at;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vent/ActSearch;->a(Landroid/app/Activity;Landroid/support/v4/app/i;)V

    return-void
.end method

.method public final be(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/vent/an;->be(Z)V

    iget-object v0, p0, Lcom/vent/at;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/at;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1, v1, v1}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/an;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/at;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/at;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BM()V

    invoke-virtual {p0}, Lcom/vent/at;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BW()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/at;->DU()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090261
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/an;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/at;->ceG:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/at$a;

    invoke-virtual {p0}, Lcom/vent/at;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/vent/at$a;-><init>(Landroid/support/v4/app/n;Lcom/vent/ah;)V

    iput-object v0, p0, Lcom/vent/at;->ceG:Landroid/support/v4/app/r;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v3, 0x7f09025f

    const v0, 0x7f0b006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/at;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    const v0, 0x7f060079

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f09020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/at;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vent/at;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/vent/at;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v0, p0, Lcom/vent/at;->bVe:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/vent/at$1;

    invoke-direct {v2, p0}, Lcom/vent/at$1;-><init>(Lcom/vent/at;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    const v0, 0x7f090286

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/vent/at;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/vent/at;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/vent/at;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/vent/at;->bVU:Landroid/support/design/widget/TabLayout;

    new-instance v2, Lcom/vent/at$2;

    invoke-direct {v2, p0}, Lcom/vent/at$2;-><init>(Lcom/vent/at;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v2, Lcom/vent/MyApplication;->cgi:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    sget v2, Lcom/vent/MyApplication;->cgi:I

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestLayout()V

    iget-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    new-instance v2, Lcom/vent/at$3;

    invoke-direct {v2, p0}, Lcom/vent/at$3;-><init>(Lcom/vent/at;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    const v0, 0x7f09003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/at;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const v0, 0x7f090261

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/at;->cfA:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/at;->bVU:Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/vent/at;->cfA:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/vent/at;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-super {p0}, Lcom/vent/an;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/vent/an;->onResume()V

    invoke-virtual {p0}, Lcom/vent/at;->DR()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/vent/an;->onStart()V

    invoke-virtual {p0}, Lcom/vent/at;->getView()Landroid/view/View;

    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/an;->onViewStateRestored(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vent/at;->cfB:Landroid/widget/SearchView;

    new-instance v1, Lcom/vent/at$4;

    invoke-direct {v1, p0}, Lcom/vent/at$4;-><init>(Lcom/vent/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/at;->cfA:Landroid/widget/EditText;

    new-instance v1, Lcom/vent/at$5;

    invoke-direct {v1, p0}, Lcom/vent/at$5;-><init>(Lcom/vent/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method
