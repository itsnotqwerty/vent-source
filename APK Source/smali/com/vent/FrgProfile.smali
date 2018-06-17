.class public final Lcom/vent/FrgProfile;
.super Lcom/vent/an;

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$b;
.implements Landroid/support/design/widget/TabLayout$b;
.implements Landroid/support/v7/widget/ba$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/vent/FrgVentsList$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/FrgProfile$a;,
        Lcom/vent/FrgProfile$b;
    }
.end annotation


# static fields
.field private static final Ub:[I


# instance fields
.field private bTI:Lcom/vent/views/b;

.field private bUF:Lcom/vent/CachedImageView;

.field private bVP:I

.field private bVQ:Z

.field private bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private bVS:Landroid/support/design/widget/AppBarLayout;

.field private bVU:Landroid/support/design/widget/TabLayout;

.field private bVV:Landroid/view/View;

.field private bVW:Landroid/view/View;

.field private bVX:Landroid/view/View;

.field private bVY:Landroid/view/View;

.field private bVZ:Landroid/view/View;

.field private bWT:Landroid/os/Bundle;

.field private bWa:Landroid/view/View;

.field private bWb:Landroid/widget/TextView;

.field private bWc:Landroid/widget/ImageButton;

.field private bWd:Landroid/widget/ImageButton;

.field bWh:Z

.field bWj:J

.field bYQ:Z

.field private bZI:Landroid/widget/TextView;

.field public bZY:J

.field private bio:Landroid/widget/TextView;

.field private can:Landroid/view/View;

.field caq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private cbC:Landroid/widget/TextView;

.field private ceO:Z

.field ceP:Lcom/vent/a/y;

.field private ceQ:Landroid/view/View;

.field private ceR:Landroid/widget/ImageView;

.field private ceS:Landroid/widget/TextView;

.field private ceT:Landroid/widget/TextView;

.field private ceU:Landroid/widget/TextView;

.field private ceV:Landroid/support/v7/widget/Toolbar;

.field private ceW:Landroid/widget/TextView;

.field private ceX:Landroid/view/View;

.field private ceY:Landroid/widget/ImageButton;

.field private ceZ:Landroid/widget/ImageView;

.field private cfa:Landroid/view/View;

.field private cfb:Landroid/view/View;

.field private cfc:Landroid/view/View;

.field private cfd:Landroid/widget/TextView;

.field private cfe:Landroid/widget/TextView;

.field cff:Z

.field private cfg:Landroid/view/View;

.field private cfh:Landroid/widget/TextView;

.field cfi:I

.field cfj:J

.field cfk:Z

.field private cfl:Landroid/support/v4/app/h;

.field private cfm:Lcom/vent/CachedImageView;

.field private cfn:Landroid/widget/ImageView;

.field private cfo:Landroid/widget/ImageView;

.field private cfp:Landroid/widget/TextView;

.field private cfq:Landroid/widget/TextView;

.field expanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040008

    aput v2, v0, v1

    sput-object v0, Lcom/vent/FrgProfile;->Ub:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/an;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vent/FrgProfile;->bVP:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->bVQ:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vent/FrgProfile;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private BA()V
    .locals 4

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v2, v3, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/FrgVentsList;

    invoke-virtual {p0, v0, v1}, Lcom/vent/FrgProfile;->a(Lcom/vent/FrgVentsList;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private DH()V
    .locals 4

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->cff:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->cff:Z

    new-instance v0, Lcom/vent/FrgProfile$6;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/users/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vent/FrgProfile$6;-><init>(Lcom/vent/FrgProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_0
    return-void
.end method

.method private DI()V
    .locals 4

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_2

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->cfj:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/FrgProfile;->cfi:I

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DJ()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->cfk:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->cfk:Z

    new-instance v0, Lcom/vent/FrgProfile$7;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    const-string v2, "api/v1/my/listen_requests.json"

    const-string v3, "GET"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vent/FrgProfile$7;-><init>(Lcom/vent/FrgProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private DM()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    new-instance v2, Lcom/vent/FrgProfile$4;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$4;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    return-void
.end method

.method private DN()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    new-instance v2, Lcom/vent/FrgProfile$5;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$5;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    return-void
.end method

.method private DO()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    new-instance v2, Lcom/vent/FrgProfile$b;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$b;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->g(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    return-void
.end method

.method private DP()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    new-instance v2, Lcom/vent/FrgProfile$b;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$b;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->h(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    return-void
.end method

.method private DQ()V
    .locals 3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckN:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/vent/a/y;->eL(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/ax;->bd(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vent/af;->a(Landroid/app/Activity;Landroid/support/v4/app/n;Ljava/lang/String;)Lcom/vent/af;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfl:Landroid/support/v4/app/h;

    :cond_1
    return-void

    :cond_2
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "https:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private DS()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v2, v2, v2}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method private bg(Z)V
    .locals 7

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bWh:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWa:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgProfile;->bWa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fa()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVV:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move v1, v2

    :goto_2
    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v5, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    invoke-static {v0, v5, v6, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/am;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_8

    if-ne v4, v1, :cond_7

    invoke-virtual {v0, v3, v2}, Lcom/vent/am;->f(ZZ)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/vent/am;->invalidate()V

    goto :goto_3

    :cond_8
    if-ne v4, v1, :cond_6

    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    goto :goto_3
.end method

.method private bh(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vent/FrgProfile$11;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/users/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v3

    iget-object v3, v3, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/public_url.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vent/FrgProfile$11;-><init>(Lcom/vent/FrgProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_0
    return-void
.end method

.method private u(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showtoolbar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->ceO:Z

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/a/x;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    const-string v0, "user_age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->bZY:J

    const-string v0, "invite_tiers"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->cfj:J

    iput-boolean v2, p0, Lcom/vent/FrgProfile;->expanded:Z

    iput-boolean v2, p0, Lcom/vent/FrgProfile;->bWh:Z

    invoke-direct {p0}, Lcom/vent/FrgProfile;->BA()V

    return-void
.end method


# virtual methods
.method public final Bw()V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vent/FrgProfile;->DH()V

    invoke-direct {p0}, Lcom/vent/FrgProfile;->DI()V

    :cond_0
    return-void
.end method

.method final Bx()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vent/FrgProfile;->DS()V

    iget-boolean v1, p0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vent/FrgProfile;->bWh:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->expanded:Z

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DK()V

    invoke-direct {p0, v0}, Lcom/vent/FrgProfile;->bg(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final DG()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->bZY:J

    iput-wide v0, p0, Lcom/vent/FrgProfile;->cfj:J

    return-void
.end method

.method final DJ()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceS:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceS:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v0, v0, Lcom/vent/a/y;->ckk:I

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceU:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v0, v0, Lcom/vent/a/y;->ckj:I

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceT:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v0, v0, Lcom/vent/a/y;->ckT:I

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/vent/FrgProfile;->cfi:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/vent/FrgProfile;->cfh:Landroid/widget/TextView;

    iget v2, p0, Lcom/vent/FrgProfile;->cfi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->cfh:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgProfile;->cfh:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final DK()V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/ActMain;

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->supportInvalidateOptionsMenu()V

    :cond_1
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vent/FrgProfile;->bVP:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fd()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_2
    const/4 v1, 0x1

    move v11, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fa()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_3
    const/4 v1, 0x1

    move v12, v1

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/x;->flags:I

    and-int/lit8 v1, v1, 0x30

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_14

    :cond_4
    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->Fb()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_5
    const/4 v2, 0x1

    move v4, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v2, v2, Lcom/vent/a/y;->ckP:I

    move v6, v2

    :goto_6
    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v2

    move-object v13, v2

    :goto_7
    invoke-static {v13}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v17

    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v17}, Lcom/vent/a/h;->bm(Z)I

    move-result v3

    invoke-virtual/range {v16 .. v17}, Lcom/vent/a/h;->bn(Z)I

    move-result v5

    invoke-virtual/range {v16 .. v17}, Lcom/vent/a/h;->bo(Z)I

    move-result v2

    move v14, v2

    move v15, v3

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/FrgProfile;->cfp:Landroid/widget/TextView;

    const/16 v2, 0x64

    if-ne v6, v2, :cond_19

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->cfp:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->cfp:Landroid/widget/TextView;

    const v3, 0xffffff

    and-int/2addr v3, v14

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v3, v6

    invoke-static {v3}, Lcom/vent/d/a;->eQ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    sget v3, Lcom/vent/MyApplication;->cgo:I

    sget v6, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v1, v2, v3, v6}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bZI:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bZI:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->isBlocked()Z

    move-result v1

    if-nez v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v1, v1, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    if-eqz v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    if-eqz v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->ckS:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/q;

    if-eqz v1, :cond_4c

    iget-object v3, v1, Lcom/vent/a/q;->ckz:Ljava/util/HashMap;

    if-eqz v3, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_1b

    iget-object v2, v1, Lcom/vent/a/q;->ckz:Ljava/util/HashMap;

    const-string v3, "image_hdpi"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_b
    if-nez v2, :cond_4b

    iget-object v1, v1, Lcom/vent/a/q;->ckz:Ljava/util/HashMap;

    const-string v2, "image_2x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_c
    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    invoke-virtual {v2, v1}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Lcom/vent/CachedImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vent/CachedImageView;->setVisibility(I)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->cfn:Landroid/widget/ImageView;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Ff()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_6
    const/16 v1, 0x8

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    if-eqz v12, :cond_20

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v3, v1, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    :goto_11
    if-eqz v4, :cond_25

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    :cond_7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    check-cast v2, Lcom/vent/a;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const v4, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v6, v6, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v7, v7, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/vent/d/e;->c(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ltz v2, :cond_22

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vent/FrgProfile;->bWh:Z

    :goto_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-eqz v2, :cond_24

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    if-nez v1, :cond_23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bVX:Landroid/view/View;

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-eqz v1, :cond_26

    :cond_9
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bVY:Landroid/view/View;

    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-eqz v1, :cond_27

    :cond_a
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bVZ:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-eqz v1, :cond_28

    :cond_b
    const v1, 0x7f06006f

    :goto_17
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    sget-object v2, Lcom/vent/FrgProfile;->Ub:[I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/j;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vent/FrgProfile;->ceO:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    :goto_18
    iput v2, v1, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceQ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vent/FrgProfile;->ceO:Z

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    :goto_19
    iput v2, v1, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceQ:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceX:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07004c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceX:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v12, :cond_c

    if-nez v13, :cond_2d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/ActMain;

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Lcom/vent/ActMain;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/vent/ActMain;->aF(II)V

    :cond_d
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->ceO:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceX:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/ActMain;

    if-eqz v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Lcom/vent/ActMain;

    invoke-virtual {v1}, Lcom/vent/ActMain;->BI()V

    :cond_f
    :goto_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1, v15}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->cfg:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fc()Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceY:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-nez v11, :cond_33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceY:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceZ:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceW:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    :goto_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_43

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/ActMain;

    if-eqz v1, :cond_42

    const/16 v1, 0x8

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_1

    :cond_12
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_2

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_5

    :cond_16
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_6

    :cond_17
    const/4 v2, 0x0

    move-object v13, v2

    goto/16 :goto_7

    :cond_18
    const v3, -0x7f7f80

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v2, -0x1

    move v14, v2

    move v15, v3

    goto/16 :goto_8

    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_9

    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_1b
    const/16 v3, 0x140

    if-gt v2, v3, :cond_1c

    iget-object v2, v1, Lcom/vent/a/q;->ckz:Ljava/util/HashMap;

    const-string v3, "image_xhdpi"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_b

    :cond_1c
    iget-object v2, v1, Lcom/vent/a/q;->ckz:Ljava/util/HashMap;

    const-string v3, "image_xxhdpi"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vent/CachedImageView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bZI:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfn:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vent/CachedImageView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10

    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_22
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vent/FrgProfile;->bWh:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vent/FrgProfile;->expanded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_12

    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_13

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_14

    :cond_25
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_14

    :cond_26
    const/16 v1, 0x8

    goto/16 :goto_15

    :cond_27
    const/16 v1, 0x8

    goto/16 :goto_16

    :cond_28
    const v1, 0x7f060076

    goto/16 :goto_17

    :cond_29
    neg-int v2, v3

    goto/16 :goto_18

    :cond_2a
    neg-int v2, v3

    goto/16 :goto_19

    :cond_2b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/vent/d/c$c;->a(Landroid/app/Activity;I)V

    goto/16 :goto_1a

    :cond_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    if-nez v1, :cond_f

    new-instance v2, Lcom/vent/views/b;

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/d;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    goto/16 :goto_1b

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/ActMain;

    if-eqz v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Lcom/vent/ActMain;

    invoke-virtual {v1, v15, v14}, Lcom/vent/ActMain;->aF(II)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->ceO:Z

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v15}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    :cond_2e
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    instance-of v1, v1, Lcom/vent/ActMain;

    if-eqz v1, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Lcom/vent/ActMain;

    invoke-virtual {v1}, Lcom/vent/ActMain;->BJ()V

    :cond_2f
    :goto_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceX:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1b

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object/from16 v0, v16

    invoke-static {v1, v2, v3, v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/support/design/widget/CollapsingToolbarLayout;Lcom/vent/a/h;)V

    goto :goto_1f

    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    invoke-virtual {v1}, Lcom/vent/views/b;->FD()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    goto :goto_20

    :cond_32
    const/16 v1, 0x8

    goto/16 :goto_1c

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceY:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_36

    const/16 v1, 0x8

    :goto_21
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceZ:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/x;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    :goto_22
    if-eqz v1, :cond_38

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceZ:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_39

    :cond_34
    const/4 v1, 0x1

    :goto_24
    if-nez v1, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->isBlocked()Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_35
    if-nez v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->EZ()Z

    move-result v2

    if-eqz v2, :cond_3a

    const v1, 0x7f0800bb

    const/4 v2, 0x1

    move/from16 v0, v17

    invoke-static {v0, v5, v5, v2}, Lcom/vent/d/a;->b(ZIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    :goto_25
    if-nez v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_26
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_40

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_40

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fi()Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    :goto_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/FrgProfile;->ceW:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceW:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1d

    :cond_36
    const/4 v1, 0x0

    goto/16 :goto_21

    :cond_37
    const/4 v1, 0x0

    goto :goto_22

    :cond_38
    const/16 v1, 0x8

    goto :goto_23

    :cond_39
    const/4 v1, 0x0

    goto :goto_24

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->Fh()Z

    move-result v2

    if-eqz v2, :cond_3b

    const v1, 0x7f08005a

    const/4 v2, 0x1

    move/from16 v0, v17

    invoke-static {v0, v5, v5, v2}, Lcom/vent/d/a;->b(ZIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    goto :goto_25

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->Fj()Z

    move-result v2

    if-eqz v2, :cond_3c

    const v1, 0x7f080079

    const/4 v2, 0x1

    move/from16 v0, v17

    invoke-static {v0, v5, v5, v2}, Lcom/vent/d/a;->b(ZIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    goto :goto_25

    :cond_3c
    if-nez v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->Ff()Z

    move-result v2

    if-nez v2, :cond_3d

    const v1, 0x7f08012a

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-static {v0, v5, v5, v2}, Lcom/vent/d/a;->b(ZIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    goto/16 :goto_25

    :cond_3d
    if-nez v1, :cond_3e

    const v1, 0x7f0800ab

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-static {v0, v5, v5, v2}, Lcom/vent/d/a;->b(ZIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    goto/16 :goto_25

    :cond_3e
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_26

    :cond_40
    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_41
    const/16 v2, 0x8

    goto/16 :goto_28

    :cond_42
    const/4 v1, 0x0

    goto/16 :goto_1e

    :cond_43
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->expanded:Z

    if-eqz v1, :cond_44

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bWh:Z

    if-nez v1, :cond_44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_44
    if-nez v11, :cond_46

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    if-nez v12, :cond_45

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->cff:Z

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0x8

    goto :goto_29

    :cond_46
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_47

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fk()Z

    move-result v1

    if-eqz v1, :cond_47

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfd:Landroid/widget/TextView;

    const v2, 0x7f0f0087

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vent/FrgProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v5, v5, Lcom/vent/a/y;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_47
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_49

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/x;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    :goto_2a
    if-eqz v1, :cond_49

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const v2, 0x7f0f001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vent/FrgProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v5, v5, Lcom/vent/a/y;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_48
    const/4 v1, 0x0

    goto :goto_2a

    :cond_49
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Ff()Z

    move-result v1

    if-nez v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fh()Z

    move-result v1

    if-nez v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/vent/FrgProfile;->DJ()V

    goto/16 :goto_0

    :cond_4b
    move-object v1, v2

    goto/16 :goto_c

    :cond_4c
    move-object v1, v2

    goto/16 :goto_c
.end method

.method final DL()Lcom/vent/a/y;
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/a/x;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    goto :goto_0
.end method

.method final DR()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-boolean v2, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_2

    const-string v0, "MyProfileVents"

    goto :goto_0

    :cond_2
    const-string v0, "OtherProfileVents"

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v1, :cond_1

    const-string v0, "MyProfileDiary"

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_3

    const-string v0, "MyProfileInteractions"

    goto :goto_0

    :cond_3
    const-string v0, "OtherProfileInteractions"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final Du()V
    .locals 8

    const-wide/32 v6, 0x493e0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget v0, v0, Lcom/vent/a/y;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vent/FrgProfile;->bZY:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_6

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vent/FrgProfile;->DH()V

    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vent/FrgProfile;->cfj:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DI()V

    :cond_4
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DK()V

    invoke-direct {p0, v1}, Lcom/vent/FrgProfile;->bg(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method final S(J)V
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iget-wide v0, p0, Lcom/vent/FrgProfile;->bWj:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iput-wide p1, p0, Lcom/vent/FrgProfile;->bWj:J

    invoke-direct {p0}, Lcom/vent/FrgProfile;->BA()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/FrgProfile;->eD(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/FrgProfile;->eD(I)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DD()V

    :cond_1
    return-void
.end method

.method final a(Lcom/vent/FrgVentsList;I)V
    .locals 14

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v2/vents.json?q%5buser_id_eq%5d="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v1, v1, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v4, v0, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_3

    const v7, 0x7f0f0163

    :goto_3
    const v8, 0x7f0b006c

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_4

    const/4 v9, 0x5

    :goto_4
    const/4 v10, 0x5

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/vent/FrgProfile;->bWj:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const v7, 0x7f0f013c

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :pswitch_1
    const/4 v2, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v2/users/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v1, v1, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vents.json?q%5bprivacy_setting_eq%5d=privacy_personal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v4, v0, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0f00e9

    const v8, 0x7f0b006c

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_7

    const/4 v9, 0x7

    :goto_7
    const/4 v10, 0x5

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/vent/FrgProfile;->bWj:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    :pswitch_2
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v2/users/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v1, v1, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vents/interacted.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v4, v0, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    :goto_9
    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_a

    const v7, 0x7f0f000c

    :goto_a
    const v8, 0x7f0b006c

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_b

    const/4 v9, 0x6

    :goto_b
    const/4 v10, 0x6

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    const v7, 0x7f0f013b

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ZLcom/vent/a/x;JLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/vent/a/x;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/q;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showtoolbar"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "user_age"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "invite_tiers"

    invoke-static {v0, v1, p5}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/vent/FrgProfile;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method final b(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/vent/an;->b(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DK()V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DE()V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DD()V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    const-string v2, "vents"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v1

    check-cast v1, Lcom/vent/aw;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/vent/aw;->DE()V

    :cond_1
    invoke-virtual {v0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/at;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/at;->DE()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/support/design/widget/TabLayout$e;)V
    .locals 0

    return-void
.end method

.method public final bT()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/FrgProfile;->be(Z)V

    return-void
.end method

.method public final be(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vent/an;->be(Z)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->Bx()Z

    return-void
.end method

.method public final bf(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DK()V

    invoke-direct {p0, p1}, Lcom/vent/FrgProfile;->bg(Z)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/vent/an;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    sget-wide v0, Lcom/vent/bb;->ciA:J

    iput-wide v0, p0, Lcom/vent/FrgProfile;->bZY:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->cfj:J

    sget-object v0, Lcom/vent/bb;->ciC:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/vent/ah;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ah$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vent/ah$1;-><init>(Lcom/vent/ah;IILandroid/content/Intent;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DI()V

    goto :goto_0

    :sswitch_2
    if-eqz p3, :cond_0

    const-string v0, "dorecreate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->recreate()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0x1c -> :sswitch_2
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    const v10, 0x7f0900e8

    const v2, 0x7f0800cd

    const v1, 0x7f0800cc

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DS()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v8}, Lcom/vent/FrgProfile;->be(Z)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v0

    new-instance v3, Landroid/support/v7/widget/ba;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v4, v3, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f0c000d

    invoke-virtual {v5, v6, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-object v5, Lcom/vent/d/c;->cmG:Lcom/vent/a/m;

    invoke-static {v0, v5}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v6}, Lcom/vent/a/y;->Fh()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v6}, Lcom/vent/a/y;->Fe()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const v6, 0x7f09029a

    invoke-interface {v4, v6}, Landroid/view/Menu;->removeItem(I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/vent/a/x;->Fe()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const v6, 0x7f0902cd

    invoke-interface {v4, v6}, Landroid/view/Menu;->removeItem(I)V

    :cond_4
    iget-boolean v6, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/vent/a/x;->Fk()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    const v6, 0x7f09004d

    invoke-interface {v4, v6}, Landroid/view/Menu;->removeItem(I)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/vent/a/x;->Fk()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const v0, 0x7f0902c8

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_8
    const v0, 0x7f0901e3

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f0902cb

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    const v0, 0x7f09024c

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_a
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_b

    const v0, 0x7f0900d8

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_b
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_c

    const v0, 0x7f090277

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_c
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-nez v0, :cond_e

    :cond_d
    const v0, 0x7f09029b

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/vent/b/a;->Fp()Z

    move-result v0

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-nez v0, :cond_14

    :cond_f
    const v0, 0x7f09024a

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_10
    :goto_1
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_16

    invoke-interface {v4, v10}, Landroid/view/Menu;->removeItem(I)V

    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_12

    const v0, 0x7f0902e3

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_12
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_13

    const v0, 0x7f0900b5

    invoke-interface {v4, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_13
    iput-object p0, v3, Landroid/support/v7/widget/ba;->adv:Landroid/support/v7/widget/ba$a;

    iget-object v0, v3, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->show()V

    goto/16 :goto_0

    :cond_14
    const v0, 0x7f09024a

    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_10

    new-array v6, v9, [I

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_3
    aput v0, v6, v8

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0f00f6

    invoke-static {v0, v7, v6, v8}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_15
    move v0, v2

    goto :goto_3

    :cond_16
    invoke-interface {v4, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/vent/bb;->EH()Z

    move-result v5

    new-array v6, v9, [I

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v5, :cond_17

    const v1, 0x7f0800d0

    :cond_17
    :goto_4
    aput v1, v6, v8

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f005c

    invoke-static {v1, v2, v6, v8}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_18
    if-eqz v5, :cond_19

    const v1, 0x7f0800ce

    goto :goto_4

    :cond_19
    move v1, v2

    goto :goto_4

    :sswitch_2
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DS()V

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fh()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    new-instance v2, Lcom/vent/FrgProfile$9;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$9;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fj()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    new-instance v2, Lcom/vent/FrgProfile$10;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$10;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->d(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Ff()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/vent/FrgProfile;->DM()V

    goto/16 :goto_0

    :cond_1c
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DN()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v1}, Lcom/vent/ActUserListListeners;->a(Landroid/app/Activity;Lcom/vent/a/x;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v1}, Lcom/vent/ActUserListListenings;->a(Landroid/app/Activity;Lcom/vent/a/x;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DS()V

    goto/16 :goto_0

    :sswitch_7
    iput-boolean v9, p0, Lcom/vent/FrgProfile;->expanded:Z

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DK()V

    invoke-direct {p0, v8}, Lcom/vent/FrgProfile;->bg(Z)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->Bx()Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ActChangeEmail;->l(Landroid/app/Activity;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ActChangeEmail;->m(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    invoke-static {v0, v9, v8}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V

    goto/16 :goto_0

    :sswitch_b
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/vent/ActEditProfile;->o(Landroid/support/v4/app/i;)V

    goto/16 :goto_0

    :cond_1d
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DQ()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09003b -> :sswitch_6
        0x7f090070 -> :sswitch_9
        0x7f0900f8 -> :sswitch_7
        0x7f0900f9 -> :sswitch_8
        0x7f09010b -> :sswitch_2
        0x7f0901c1 -> :sswitch_4
        0x7f0901c4 -> :sswitch_5
        0x7f090232 -> :sswitch_b
        0x7f090271 -> :sswitch_a
        0x7f090277 -> :sswitch_1
        0x7f0902b5 -> :sswitch_0
        0x7f0902da -> :sswitch_3
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/an;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/vent/FrgProfile;->setHasOptionsMenu(Z)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/vent/FrgProfile;->ceO:Z

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    sget-wide v4, Lcom/vent/bb;->ciA:J

    iput-wide v4, p0, Lcom/vent/FrgProfile;->bZY:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/vent/FrgProfile;->cfj:J

    sget-object v0, Lcom/vent/bb;->ciC:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/a/x;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/FrgProfile;->u(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const-string v0, "showtoolbar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->ceO:Z

    const-string v0, "isme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    const-string v0, "hackTop"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vent/FrgProfile;->bWj:J

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v0}, Lcom/vent/a/a;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Lcom/vent/a/a;

    move-result-object v0

    check-cast v0, Lcom/vent/a/c;

    invoke-static {v0}, Lcom/vent/a/x;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_5
    const-string v0, "age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->bZY:J

    const-string v0, "invite_tiers"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    goto :goto_2
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/vent/an;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800cd

    :goto_0
    const v1, 0x7f0900e8

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f005c

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v0, v4, v5

    invoke-static {v2, v3, v4, v5}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void

    :cond_0
    const v0, 0x7f0800cc

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0b006e

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f09020b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVX:Landroid/view/View;

    const v0, 0x7f09020c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVY:Landroid/view/View;

    const v0, 0x7f09020d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVZ:Landroid/view/View;

    const v0, 0x7f09020f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceQ:Landroid/view/View;

    const v0, 0x7f09020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/FrgProfile$a;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/vent/FrgProfile$a;-><init>(Landroid/support/v4/app/n;Lcom/vent/FrgProfile;)V

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/vent/FrgProfile$1;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$1;-><init>(Lcom/vent/FrgProfile;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    const v0, 0x7f090286

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    const v0, 0x7f090287

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVV:Landroid/view/View;

    const v0, 0x7f090232

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    const v2, 0x7f08012b

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    sget v2, Lcom/vent/MyApplication;->cgo:I

    sget v3, Lcom/vent/MyApplication;->cgo:I

    invoke-virtual {v0, v2, v3}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f090277

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceY:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceY:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceZ:Landroid/widget/ImageView;

    const v0, 0x7f09010b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bZI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bZI:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090185

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    const v0, 0x7f0902d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfn:Landroid/widget/ImageView;

    const v0, 0x7f0902db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceS:Landroid/widget/TextView;

    const v0, 0x7f0901c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceT:Landroid/widget/TextView;

    const v0, 0x7f0901c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceU:Landroid/widget/TextView;

    const v0, 0x7f0902da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfh:Landroid/widget/TextView;

    const v0, 0x7f0902bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceX:Landroid/view/View;

    const v0, 0x7f09004a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09004c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bWa:Landroid/view/View;

    const v0, 0x7f09004b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0900df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0900a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    const v0, 0x7f0902b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    const v0, 0x7f090082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    iget-object v2, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bVQ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->username:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceW:Landroid/widget/TextView;

    const v0, 0x7f0900f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090231

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    const v0, 0x7f090136

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    const v0, 0x7f090137

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfd:Landroid/widget/TextView;

    const v0, 0x7f090053

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    const v0, 0x7f0902d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    const v0, 0x7f090094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfg:Landroid/view/View;

    const v0, 0x7f090271

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->bWT:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    :cond_1
    new-instance v2, Lcom/vent/views/b;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    iget-object v3, p0, Lcom/vent/FrgProfile;->bWT:Landroid/os/Bundle;

    invoke-direct {v2, v0, v3}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bWT:Landroid/os/Bundle;

    :cond_2
    const v0, 0x7f09005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    const v0, 0x7f0900d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v0, v2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/vent/FrgProfile;->cfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->cfp:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0900b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfq:Landroid/widget/TextView;

    return-object v1

    :cond_3
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceG:Landroid/support/v4/app/r;

    invoke-super {p0}, Lcom/vent/an;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/FrgProfile;->can:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVU:Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVV:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bUF:Lcom/vent/CachedImageView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceR:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bZI:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceS:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceT:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceU:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVS:Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceW:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceX:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bio:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bWa:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bWb:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cbC:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bWc:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bWd:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceY:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vent/FrgProfile;->ceZ:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVW:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfa:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfb:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfc:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfd:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfe:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfg:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfh:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVX:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVY:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfo:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVZ:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfm:Lcom/vent/CachedImageView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    iput-object v1, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    :cond_0
    iput-object v1, p0, Lcom/vent/FrgProfile;->cfp:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/FrgProfile;->cfq:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iput-object v1, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    :cond_1
    invoke-super {p0}, Lcom/vent/an;->onDestroyView()V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DQ()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090232
        :pswitch_0
    .end packed-switch
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/vent/FrgProfile;->bh(Z)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v1

    new-instance v2, Lcom/vent/FrgProfile$b;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$b;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->i(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    move v0, v6

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v1

    new-instance v2, Lcom/vent/FrgProfile$b;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$b;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->j(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    move v0, v6

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vent/ag;->a(Landroid/app/Activity;Landroid/support/v4/app/n;)V

    :cond_0
    move v0, v6

    goto :goto_0

    :sswitch_4
    invoke-static {p0}, Lcom/vent/ActEditProfile;->o(Landroid/support/v4/app/i;)V

    move v0, v6

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v1

    new-instance v2, Lcom/vent/FrgProfile$12;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$12;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->e(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    move v0, v6

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v1

    new-instance v2, Lcom/vent/FrgProfile$13;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$13;-><init>(Lcom/vent/FrgProfile;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->f(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    move v0, v6

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/x;)V

    move v0, v6

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vent/ActSettings;->a(Landroid/app/Activity;Landroid/support/v4/app/i;)V

    move v0, v6

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DO()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DP()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_b
    move v0, v6

    goto/16 :goto_0

    :sswitch_c
    move v0, v6

    goto/16 :goto_0

    :sswitch_d
    move v0, v6

    goto/16 :goto_0

    :sswitch_e
    move v0, v6

    goto/16 :goto_0

    :sswitch_f
    move v0, v6

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/b/a;->s(Landroid/app/Activity;)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vent/b/a;->a(Landroid/app/Activity;Lcom/vent/d/c$b;)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_12
    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-static {v0, v2}, Lcom/vent/ActStore;->a(Lcom/vent/a;Lcom/vent/a/x;)V

    :goto_1
    move v0, v6

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/vent/FrgProfile;->bh(Z)V

    goto :goto_1

    :sswitch_13
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DN()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_14
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DM()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_15
    move v0, v6

    goto/16 :goto_0

    :sswitch_16
    move v0, v6

    goto/16 :goto_0

    :sswitch_17
    move v0, v6

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-wide v0, p0, Lcom/vent/FrgProfile;->bWj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/vent/FrgProfile;->bWj:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_2
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/vent/FrgProfile$2;

    invoke-direct {v2, p0}, Lcom/vent/FrgProfile$2;-><init>(Lcom/vent/FrgProfile;)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    new-instance v1, Lcom/vent/FrgProfile$3;

    invoke-direct {v1, p0}, Lcom/vent/FrgProfile$3;-><init>(Lcom/vent/FrgProfile;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_c
        0x3 -> :sswitch_d
        0x4 -> :sswitch_e
        0x5 -> :sswitch_f
        0x6 -> :sswitch_13
        0x7 -> :sswitch_14
        0x8 -> :sswitch_15
        0x9 -> :sswitch_16
        0xa -> :sswitch_17
        0x7f09004d -> :sswitch_5
        0x7f0900b5 -> :sswitch_18
        0x7f0900d8 -> :sswitch_4
        0x7f0900e8 -> :sswitch_12
        0x7f0901e3 -> :sswitch_1
        0x7f09024a -> :sswitch_10
        0x7f09024c -> :sswitch_7
        0x7f090277 -> :sswitch_8
        0x7f09029a -> :sswitch_9
        0x7f09029b -> :sswitch_3
        0x7f0902c8 -> :sswitch_6
        0x7f0902ca -> :sswitch_11
        0x7f0902cb -> :sswitch_2
        0x7f0902cd -> :sswitch_a
        0x7f0902e3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    iget v0, p0, Lcom/vent/FrgProfile;->bVP:I

    add-int/2addr v0, p2

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/vent/FrgProfile;->bVP:I

    :cond_0
    iget v0, p0, Lcom/vent/FrgProfile;->bVP:I

    add-int/2addr v0, p2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->username:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->bVQ:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bVQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/FrgProfile;->bVQ:Z

    goto :goto_1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/an;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    sget-boolean v0, Lcom/vent/MyApplication;->cgy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v2}, Lcom/vent/ActStore;->a(Lcom/vent/a;Lcom/vent/a/x;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/vent/FrgProfile;->bh(Z)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DO()V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/vent/FrgProfile;->DP()V

    move v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/vent/bb;->ciM:J

    invoke-static {}, Lcom/vent/bb;->EB()V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v2}, Lcom/vent/ActChat;->a(Lcom/vent/a;Lcom/vent/a/x;)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00b3

    invoke-virtual {p0, v2}, Lcom/vent/FrgProfile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x1040013

    new-instance v3, Lcom/vent/FrgProfile$8;

    invoke-direct {v3, p0}, Lcom/vent/FrgProfile$8;-><init>(Lcom/vent/FrgProfile;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09002b -> :sswitch_3
        0x7f0900e8 -> :sswitch_0
        0x7f09029a -> :sswitch_1
        0x7f0902cd -> :sswitch_2
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/vent/FrgProfile;->cfl:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile;->cfl:Landroid/support/v4/app/h;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/FrgProfile;->cfl:Landroid/support/v4/app/h;

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgProfile;->bWT:Landroid/os/Bundle;

    :cond_1
    invoke-super {p0}, Lcom/vent/an;->onPause()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/an;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->EZ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fg()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const v3, 0x7f09002b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fh()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fe()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    move v3, v1

    :goto_1
    const v4, 0x7f09029a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0902cd

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v3}, Lcom/vent/a/y;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    sget-object v4, Lcom/vent/d/c;->cmG:Lcom/vent/a/m;

    invoke-static {v3, v4}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fa()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    iget-object v2, p0, Lcom/vent/FrgProfile;->ceV:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v1

    invoke-static {v0, v2, p1, v1}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/view/Menu;Lcom/vent/a/h;)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v1

    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3

    :cond_6
    move v0, v2

    move v3, v2

    goto :goto_1
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/an;->onResume()V

    iget-boolean v0, p0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iput-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    sget-object v0, Lcom/vent/bb;->ciC:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    sget-wide v0, Lcom/vent/bb;->ciA:J

    iput-wide v0, p0, Lcom/vent/FrgProfile;->bZY:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/FrgProfile;->cfj:J

    invoke-direct {p0}, Lcom/vent/FrgProfile;->BA()V

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->Du()V

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BW()V

    :cond_1
    invoke-virtual {p0}, Lcom/vent/FrgProfile;->DR()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x18

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/vent/an;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "showtoolbar"

    iget-boolean v1, p0, Lcom/vent/FrgProfile;->ceO:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isme"

    iget-boolean v1, p0, Lcom/vent/FrgProfile;->bYQ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hackTop"

    iget-wide v2, p0, Lcom/vent/FrgProfile;->bWj:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v3, v5}, Lcom/vent/a/a;->a(Lcom/vent/a/a;Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    iget-wide v0, p0, Lcom/vent/FrgProfile;->bZY:J

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_0

    const/16 v4, 0x6400

    if-le v2, v4, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iget-object v0, p0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->EN()Lcom/vent/a/c;

    move-result-object v0

    invoke-static {v0, v3, v5}, Lcom/vent/a/a;->a(Lcom/vent/a/a;Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const-wide/16 v0, 0x0

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_1

    const v4, 0xc800

    if-ge v2, v4, :cond_2

    :cond_1
    const-string v2, "user"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "age"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "invite_tiers"

    iget-object v1, p0, Lcom/vent/FrgProfile;->caq:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public final p(Landroid/support/v4/app/i;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/FrgProfile;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/FrgProfile;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
