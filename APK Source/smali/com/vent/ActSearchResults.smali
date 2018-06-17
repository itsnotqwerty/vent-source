.class public final Lcom/vent/ActSearchResults;
.super Lcom/vent/c;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vent/ay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActSearchResults$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/c;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vent/ay",
        "<",
        "Lcom/vent/au;",
        ">;"
    }
.end annotation


# instance fields
.field private appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/c;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActSearchResults;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1a

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method final By()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->By()V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActSearchResults;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActSearchResults;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v2, v2, v2}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    check-cast p1, Lcom/vent/au;

    iget-object v1, p0, Lcom/vent/ActSearchResults;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActSearchResults;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/users/search.json?q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActSearchResults;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&per_page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vent/h;->cap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_2

    iget-object v2, p1, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from%5border%5d=asc&from%5bfield%5d=username&from%5bvalue%5d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    goto :goto_2
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/c;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->Bg()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->By()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0902b5
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/vent/ActSearchResults;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActSearchResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/vent/ActSearchResults;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActSearchResults;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActSearchResults;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/vent/ActSearchResults$a;

    invoke-virtual {p0}, Lcom/vent/ActSearchResults;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/vent/ActSearchResults$a;-><init>(Landroid/support/v4/app/n;Lcom/vent/ActSearchResults;)V

    iput-object v0, p0, Lcom/vent/ActSearchResults;->bWq:Landroid/support/v4/app/r;

    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/vent/ActSearchResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vent/ActSearchResults;->bWq:Landroid/support/v4/app/r;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v0, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/vent/ActSearchResults$1;

    invoke-direct {v1, p0}, Lcom/vent/ActSearchResults$1;-><init>(Lcom/vent/ActSearchResults;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    const v0, 0x7f090286

    invoke-virtual {p0, v0}, Lcom/vent/ActSearchResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    new-instance v1, Lcom/vent/ActSearchResults$2;

    invoke-direct {v1, p0}, Lcom/vent/ActSearchResults$2;-><init>(Lcom/vent/ActSearchResults;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/vent/ActSearchResults;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/ActSearchResults;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/ActSearchResults;->bWq:Landroid/support/v4/app/r;

    iput-object v0, p0, Lcom/vent/ActSearchResults;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-super {p0}, Lcom/vent/c;->onDestroy()V

    return-void
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/c;->onResume()V

    const-string v0, "Search"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
