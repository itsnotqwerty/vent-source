.class public final Landroid/support/v7/view/menu/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/b/a/b;


# static fields
.field static SG:Ljava/lang/String;

.field static SH:Ljava/lang/String;

.field static SI:Ljava/lang/String;

.field static SJ:Ljava/lang/String;


# instance fields
.field private AI:Landroid/content/Intent;

.field private Ch:Ljava/lang/CharSequence;

.field Pj:Landroid/support/v7/view/menu/h;

.field private QA:C

.field private QB:I

.field private QC:Landroid/graphics/drawable/Drawable;

.field private QD:I

.field private QE:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private QF:Ljava/lang/CharSequence;

.field private QG:Ljava/lang/CharSequence;

.field private QH:Landroid/graphics/PorterDuff$Mode;

.field private QI:Z

.field private QJ:Z

.field private final Qu:I

.field private final Qv:I

.field final Qw:I

.field private Qx:Ljava/lang/CharSequence;

.field private Qy:C

.field private Qz:I

.field SA:I

.field private SB:Landroid/view/View;

.field public SC:Landroid/support/v4/view/c;

.field private SD:Landroid/view/MenuItem$OnActionExpandListener;

.field private SE:Z

.field SF:Landroid/view/ContextMenu$ContextMenuInfo;

.field private Sx:Landroid/support/v7/view/menu/u;

.field private Sy:Ljava/lang/Runnable;

.field private Sz:Z

.field private is:Landroid/content/res/ColorStateList;

.field private mFlags:I

.field private final yo:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/h;IIIILjava/lang/CharSequence;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/view/menu/j;->Qz:I

    iput v0, p0, Landroid/support/v7/view/menu/j;->QB:I

    iput v1, p0, Landroid/support/v7/view/menu/j;->QD:I

    iput-object v2, p0, Landroid/support/v7/view/menu/j;->is:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/support/v7/view/menu/j;->QH:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->QI:Z

    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->QJ:Z

    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iput v1, p0, Landroid/support/v7/view/menu/j;->SA:I

    iput-boolean v1, p0, Landroid/support/v7/view/menu/j;->SE:Z

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    iput p3, p0, Landroid/support/v7/view/menu/j;->yo:I

    iput p2, p0, Landroid/support/v7/view/menu/j;->Qu:I

    iput p4, p0, Landroid/support/v7/view/menu/j;->Qv:I

    iput p5, p0, Landroid/support/v7/view/menu/j;->Qw:I

    iput-object p6, p0, Landroid/support/v7/view/menu/j;->Ch:Ljava/lang/CharSequence;

    iput p7, p0, Landroid/support/v7/view/menu/j;->SA:I

    return-void
.end method

.method private L(Z)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private av(Landroid/view/View;)Landroid/support/v4/b/a/b;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->yo:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->yo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fm()V

    return-object p0
.end method

.method private i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->QI:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->QJ:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p1}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->QI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->is:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->QJ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->QH:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    :cond_3
    return-object p1
.end method


# virtual methods
.method public final K(Z)V
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final M(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final N(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    goto :goto_0
.end method

.method public final O(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v7/view/menu/j;->SE:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-void
.end method

.method public final a(Landroid/support/v4/view/c;)Landroid/support/v4/b/a/b;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    iput-object v1, v0, Landroid/support/v4/view/c;->Fd:Landroid/support/v4/view/c$b;

    iput-object v1, v0, Landroid/support/v4/view/c;->Fc:Landroid/support/v4/view/c$a;

    :cond_0
    iput-object v1, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    new-instance v1, Landroid/support/v7/view/menu/j$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/j$1;-><init>(Landroid/support/v7/view/menu/j;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/c;->a(Landroid/support/v4/view/c$b;)V

    :cond_1
    return-object p0
.end method

.method final a(Landroid/support/v7/view/menu/p$a;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/view/menu/p$a;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/view/menu/u;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->Sx:Landroid/support/v7/view/menu/u;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/u;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public final collapseActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/view/menu/j;->SA:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SD:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SD:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->g(Landroid/support/v7/view/menu/j;)Z

    move-result v0

    goto :goto_0
.end method

.method public final di()Landroid/support/v4/view/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    return-object v0
.end method

.method public final expandActionView()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->fy()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SD:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SD:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/h;->f(Landroid/support/v7/view/menu/j;)Z

    move-result v0

    goto :goto_0
.end method

.method public final fr()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->QE:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->QE:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->Sy:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->Sy:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->AI:Landroid/content/Intent;

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v1, v1, Landroid/support/v7/view/menu/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->AI:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    invoke-virtual {v1}, Landroid/support/v4/view/c;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final fs()C
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/view/menu/j;->Qy:C

    goto :goto_0
.end method

.method final ft()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/j;->fs()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fu()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fv()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fw()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/view/menu/j;->SA:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fx()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/j;->SA:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fy()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/view/menu/j;->SA:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/c;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/c;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SB:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/j;->QB:I

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->QF:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/j;->Qu:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->QC:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->QC:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/j;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/j;->QD:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, v0, Landroid/support/v7/view/menu/h;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/support/v7/view/menu/j;->QD:I

    invoke-static {v0, v1}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/j;->QD:I

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->QC:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/j;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->is:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->QH:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->AI:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/view/menu/j;->yo:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->SF:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/j;->Qz:I

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->Qy:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/j;->Qv:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Sx:Landroid/support/v7/view/menu/u;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Ch:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Qx:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Qx:Ljava/lang/CharSequence;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Ch:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->QG:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Sx:Landroid/support/v7/view/menu/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/j;->SE:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    invoke-virtual {v2}, Landroid/support/v4/view/c;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/j;->SC:Landroid/support/v4/view/c;

    invoke-virtual {v2}, Landroid/support/v4/view/c;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final j(Ljava/lang/CharSequence;)Landroid/support/v4/b/a/b;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->QF:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final k(Ljava/lang/CharSequence;)Landroid/support/v4/b/a/b;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->QG:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, v0, Landroid/support/v7/view/menu/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/j;->av(Landroid/view/View;)Landroid/support/v4/b/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/j;->av(Landroid/view/View;)Landroid/support/v4/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    goto :goto_0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->QB:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->QB:I

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    goto :goto_0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    iget-object v0, v4, Landroid/support/v7/view/menu/h;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->fj()V

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    iget-object v0, v4, Landroid/support/v7/view/menu/h;->Gj:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->getGroupId()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->fu()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v0, v1}, Landroid/support/v7/view/menu/j;->L(Z)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->fk()V

    :goto_2
    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/j;->L(Z)V

    goto :goto_2
.end method

.method public final synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->j(Ljava/lang/CharSequence;)Landroid/support/v4/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0

    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/j;->mFlags:I

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/j;->QC:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/view/menu/j;->QD:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/j;->QD:I

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->QC:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->is:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->QI:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->QH:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->QJ:Z

    iput-boolean v0, p0, Landroid/support/v7/view/menu/j;->Sz:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->AI:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->Qy:C

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/j;->Qy:C

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    goto :goto_0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 2

    iget-char v0, p0, Landroid/support/v7/view/menu/j;->Qy:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/j;->Qz:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/j;->Qy:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->Qz:I

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    goto :goto_0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->SD:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->QE:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Landroid/support/v7/view/menu/j;->Qy:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 2

    iput-char p1, p0, Landroid/support/v7/view/menu/j;->Qy:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->Qz:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/j;->QA:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/j;->QB:I

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/support/v7/view/menu/j;->SA:I

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fm()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, v0, Landroid/support/v7/view/menu/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/j;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->Ch:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Sx:Landroid/support/v7/view/menu/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Sx:Landroid/support/v7/view/menu/u;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/u;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Landroid/support/v7/view/menu/j;->Qx:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->J(Z)V

    return-object p0
.end method

.method public final synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->k(Ljava/lang/CharSequence;)Landroid/support/v4/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/j;->M(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->fl()V

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Ch:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/j;->Ch:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
