.class public final Lcom/vent/aw;
.super Lcom/vent/an;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/aw$a;
    }
.end annotation


# instance fields
.field private appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private bVU:Landroid/support/design/widget/TabLayout;

.field private cfJ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final DC()V
    .locals 4

    iget-object v0, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/aw;->ceG:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/aw;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/aw;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/vent/aw;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v2, v3, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final DR()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vent/aw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "MyFeed"

    goto :goto_0

    :pswitch_1
    const-string v0, "LatestVents"

    goto :goto_0

    :pswitch_2
    const-string v0, "MyGroups"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final be(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/vent/an;->be(Z)V

    iget-object v0, p0, Lcom/vent/aw;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/aw;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1, v1, v1}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public final bi(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vent/aw;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1, p1}, Landroid/support/v4/view/ViewPager;->d(IZ)V

    iput-boolean v1, p0, Lcom/vent/aw;->cfJ:Z

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/vent/aw;->cfJ:Z

    move v0, v1

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/an;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "gotoYourFeed_requested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/aw;->cfJ:Z

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/an;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/aw;->ceG:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/aw$a;

    invoke-virtual {p0}, Lcom/vent/aw;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/vent/aw$a;-><init>(Landroid/support/v4/app/n;Lcom/vent/ah;)V

    iput-object v0, p0, Lcom/vent/aw;->ceG:Landroid/support/v4/app/r;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0b0072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/aw;->getActivity()Landroid/support/v4/app/j;

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

    iput-object v0, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/vent/aw;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v0, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/vent/aw$1;

    invoke-direct {v2, p0}, Lcom/vent/aw$1;-><init>(Lcom/vent/aw;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    const v0, 0x7f090286

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/vent/aw;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/vent/aw;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/vent/aw;->bVU:Landroid/support/design/widget/TabLayout;

    new-instance v2, Lcom/vent/aw$2;

    invoke-direct {v2, p0}, Lcom/vent/aw$2;-><init>(Lcom/vent/aw;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    const v0, 0x7f09003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/aw;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    return-object v1
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/aw;->bVU:Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/vent/aw;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-super {p0}, Lcom/vent/an;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/an;->onResume()V

    invoke-virtual {p0}, Lcom/vent/aw;->DD()V

    invoke-virtual {p0}, Lcom/vent/aw;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/aw;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BM()V

    invoke-virtual {p0}, Lcom/vent/aw;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BW()V

    :cond_0
    iget-boolean v0, p0, Lcom/vent/aw;->cfJ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/aw;->bi(Z)Z

    :cond_1
    invoke-virtual {p0}, Lcom/vent/aw;->DR()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/an;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "gotoYourFeed_requested"

    iget-boolean v1, p0, Lcom/vent/aw;->cfJ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
