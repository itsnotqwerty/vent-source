.class public final Lcom/vent/ActGroup;
.super Lcom/vent/c;

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vent/FrgVentsList$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActGroup$a;
    }
.end annotation


# instance fields
.field bUp:Lcom/vent/a/l;

.field bUq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private bVB:Landroid/widget/TextView;

.field bVO:Z

.field private bVP:I

.field private bVQ:Z

.field private bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private bVS:Landroid/support/design/widget/AppBarLayout;

.field private bVT:Landroid/widget/ImageButton;

.field private bVU:Landroid/support/design/widget/TabLayout;

.field private bVV:Landroid/view/View;

.field private bVW:Landroid/view/View;

.field private bVX:Landroid/view/View;

.field private bVY:Landroid/view/View;

.field private bVZ:Landroid/view/View;

.field private bWa:Landroid/view/View;

.field private bWb:Landroid/widget/TextView;

.field private bWc:Landroid/widget/ImageButton;

.field private bWd:Landroid/widget/ImageButton;

.field private bWe:Landroid/view/View;

.field private bWf:Landroid/view/View;

.field private bWg:Landroid/support/design/widget/FloatingActionButton;

.field private bWh:Z

.field private bWi:Lcom/vent/CachedImageView;

.field bWj:J

.field private bio:Landroid/widget/TextView;

.field private expanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vent/ActGroup;->bVP:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActGroup;->bVQ:Z

    return-void
.end method

.method private BA()V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    invoke-static {v0, v2, v3, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/FrgVentsList;

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActGroup;->a(Lcom/vent/FrgVentsList;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Bx()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v0, v0, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_0
    iget-boolean v2, p0, Lcom/vent/ActGroup;->expanded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/vent/ActGroup;->bWh:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/vent/ActGroup;->expanded:Z

    invoke-virtual {p0}, Lcom/vent/ActGroup;->Bg()V

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private Bz()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/k;)V
    .locals 3

    const/16 v2, 0x25

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "group"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private aW(Z)V
    .locals 6

    new-instance v0, Lcom/vent/ActGroup$3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/groups/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, v2, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    move-object v1, p0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActGroup$3;-><init>(Lcom/vent/ActGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method


# virtual methods
.method final Bg()V
    .locals 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActGroup;->bVB:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/vent/ActGroup;->bVP:I

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v0, 0x7f0901d1

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget v2, v2, Lcom/vent/a/l;->ckj:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902db

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget v2, v2, Lcom/vent/a/l;->ckk:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVB:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v2}, Lcom/vent/a/l;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/vent/MyApplication;->cgq:I

    iget-object v3, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v5, p0, Lcom/vent/ActGroup;->bWi:Lcom/vent/CachedImageView;

    invoke-static {v3, v5, v0, v2}, Lcom/vent/d/c;->a(Lcom/vent/a/k;Lcom/vent/CachedImageView;II)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v2, v0, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const v3, 0x7fffffff

    iget-object v5, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v5, v5, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    iget-object v6, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v6, v6, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    move v8, v7

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/vent/d/e;->c(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ltz v2, :cond_6

    iput-boolean v9, p0, Lcom/vent/ActGroup;->bWh:Z

    :goto_1
    iget-boolean v2, p0, Lcom/vent/ActGroup;->expanded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/vent/ActGroup;->bWh:Z

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/vent/ActGroup;->expanded:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    iget-object v1, p0, Lcom/vent/ActGroup;->bVX:Landroid/view/View;

    iget-boolean v0, p0, Lcom/vent/ActGroup;->expanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/vent/ActGroup;->bWh:Z

    if-eqz v0, :cond_a

    :cond_3
    move v0, v9

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bVY:Landroid/view/View;

    iget-boolean v0, p0, Lcom/vent/ActGroup;->expanded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vent/ActGroup;->bWh:Z

    if-eqz v0, :cond_b

    :cond_4
    move v0, v9

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bVZ:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vent/ActGroup;->expanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/vent/ActGroup;->bWh:Z

    if-eqz v0, :cond_c

    :cond_5
    const v0, 0x7f06006f

    :goto_6
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/vent/ActGroup;->expanded:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/vent/ActGroup;->bWh:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/vent/ActGroup;->bVW:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v10}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVV:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWa:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWe:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWf:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWg:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v10}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iput-boolean v7, p0, Lcom/vent/ActGroup;->bWh:Z

    iput-boolean v7, p0, Lcom/vent/ActGroup;->expanded:Z

    iget-object v2, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    iput-boolean v9, p0, Lcom/vent/ActGroup;->bWh:Z

    iput-boolean v9, p0, Lcom/vent/ActGroup;->expanded:Z

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    move v0, v10

    goto/16 :goto_4

    :cond_b
    move v0, v10

    goto/16 :goto_5

    :cond_c
    const v0, 0x7f060076

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/vent/ActGroup;->bVW:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVU:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v9}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVV:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->isFull()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move v0, v10

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->EX()Z

    move-result v0

    if-nez v0, :cond_10

    const v0, 0x7f0800c9

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v1}, Lcom/vent/a/l;->EX()Z

    move-result v1

    invoke-static {p0, v4, v4, v1}, Lcom/vent/d/a;->b(Landroid/content/Context;IIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWa:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bWe:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v9

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWf:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWg:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v1}, Lcom/vent/a/l;->EX()Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_a
    invoke-virtual {v0, v9}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWg:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    :cond_f
    move v0, v9

    goto :goto_7

    :cond_10
    const v0, 0x7f0800ca

    goto :goto_8

    :cond_11
    move v0, v10

    goto :goto_9

    :cond_12
    move v9, v10

    goto :goto_a
.end method

.method public final Bw()V
    .locals 1

    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vent/ActGroup;->aW(Z)V

    :cond_0
    return-void
.end method

.method final By()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/vent/ActGroup;->Bx()Z

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->By()V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v2, v2, v2}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_1
    return-void
.end method

.method final S(J)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iget-wide v0, p0, Lcom/vent/ActGroup;->bWj:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    iput-wide p1, p0, Lcom/vent/ActGroup;->bWj:J

    invoke-direct {p0}, Lcom/vent/ActGroup;->BA()V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->invalidate()V

    :cond_1
    invoke-direct {p0}, Lcom/vent/ActGroup;->Bz()V

    :cond_2
    return-void
.end method

.method final a(Lcom/vent/FrgVentsList;I)V
    .locals 14

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v2/groups/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v1, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vents.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v5, v0, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    const/4 v6, 0x0

    const v7, 0x7f0f00d4

    const v8, 0x7f0b006c

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/vent/ActGroup;->bWj:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v2/groups/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v1, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vents/on_the_rise.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v5, v0, Lcom/vent/a/l;->cjy:Lcom/vent/a/m;

    const/4 v6, 0x1

    const v7, 0x7f0f00d4

    const v8, 0x7f0b006c

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final aR(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget v1, v0, Lcom/vent/a/l;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/vent/a/l;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cmd"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "didJoinLeave"

    iget-boolean v2, p0, Lcom/vent/ActGroup;->bVO:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "group"

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "backLongPress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActGroup;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActGroup;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/c;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    invoke-static {v0, v2, v3, v1}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/vent/am;

    invoke-virtual {v0}, Lcom/vent/am;->invalidate()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/vent/ActGroup;->Bz()V

    goto :goto_0

    :sswitch_1
    if-ne p2, v1, :cond_0

    const-string v2, "cmd"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_3
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "group"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-static {v0}, Lcom/vent/a/k;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    const-string v0, "interests"

    invoke-static {p3, v0}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bUq:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/vent/ActGroup;->Bg()V

    goto :goto_0

    :sswitch_2
    const-string v3, "update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :sswitch_3
    const-string v0, "delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "cmd"

    const-string v3, "delete"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "didJoinLeave"

    iget-boolean v3, p0, Lcom/vent/ActGroup;->bVO:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "group"

    iget-object v3, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActGroup;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActGroup;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x29 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        -0x31ffc737 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/ActGroup;->Bx()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->aR(Z)Z

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0902cb

    const v1, 0x7f0901e3

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/vent/ActGroup;->By()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/vent/ActGroup$4;

    invoke-direct {v0, p0}, Lcom/vent/ActGroup$4;-><init>(Lcom/vent/ActGroup;)V

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v1}, Lcom/vent/a/l;->EX()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-static {p0, v1, v3, v0}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-static {p0, v1, v3, v0}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActGroup;->expanded:Z

    invoke-virtual {p0}, Lcom/vent/ActGroup;->Bg()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/vent/ActGroup;->Bx()Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-static {p0, v0}, Lcom/vent/ActUserListGroupMembers;->a(Landroid/app/Activity;Lcom/vent/a/k;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/vent/ActGroup;->By()V

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v2}, Lcom/vent/a/l;->isFull()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v4, Landroid/support/v7/widget/ba;

    invoke-direct {v4, p0, p1}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v3, v4, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v2, v5, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v2}, Lcom/vent/a/l;->EX()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v3, v1}, Landroid/view/Menu;->removeItem(I)V

    move-object v2, v3

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/Menu;->removeItem(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f09024c

    invoke-interface {v3, v0}, Landroid/view/Menu;->removeItem(I)V

    :goto_2
    new-instance v0, Lcom/vent/ActGroup$5;

    invoke-direct {v0, p0}, Lcom/vent/ActGroup$5;-><init>(Lcom/vent/ActGroup;)V

    iput-object v0, v4, Landroid/support/v7/widget/ba;->adv:Landroid/support/v7/widget/ba$a;

    iget-object v0, v4, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v2}, Lcom/vent/a/l;->isMuted()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_1

    :cond_3
    move v0, v1

    move-object v2, v3

    goto :goto_1

    :cond_4
    const v0, 0x7f0900d5

    invoke-interface {v3, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2

    :sswitch_7
    invoke-static {}, Lcom/vent/a/z;->Fn()Lcom/vent/a/z;

    move-result-object v0

    iput v3, v0, Lcom/vent/a/z;->clc:I

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iput-object v1, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-static {p0, v0}, Lcom/vent/ActEmotions;->a(Landroid/app/Activity;Lcom/vent/a/z;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, v0, Lcom/vent/a/l;->cki:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v1, v1, Lcom/vent/a/l;->cki:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/vent/af;->a(Landroid/app/Activity;Landroid/support/v4/app/n;Ljava/lang/String;)Lcom/vent/af;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090029 -> :sswitch_7
        0x7f0900f8 -> :sswitch_2
        0x7f0900f9 -> :sswitch_3
        0x7f09010c -> :sswitch_5
        0x7f0901bf -> :sswitch_1
        0x7f09021f -> :sswitch_8
        0x7f090277 -> :sswitch_6
        0x7f0902b5 -> :sswitch_0
        0x7f0902da -> :sswitch_4
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-static {v0}, Lcom/vent/a/k;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    if-eqz p1, :cond_0

    const-string v0, "didJoinLeave"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/ActGroup;->bVO:Z

    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-static {v0}, Lcom/vent/a/k;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    const-string v0, "interests"

    invoke-static {p1, v0}, Lcom/vent/d/d;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bUq:Ljava/util/HashMap;

    const-string v0, "hackTop"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/ActGroup;->bWj:J

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v2, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-boolean v0, p0, Lcom/vent/ActGroup;->bVQ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0}, Lcom/vent/a/l;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090287

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bVV:Landroid/view/View;

    const v0, 0x7f0901e5

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActGroup;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActGroup;->bVB:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0901bf

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bVW:Landroid/view/View;

    const v0, 0x7f09020b

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bVX:Landroid/view/View;

    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bVY:Landroid/view/View;

    const v0, 0x7f09020d

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bVZ:Landroid/view/View;

    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bWa:Landroid/view/View;

    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vent/ActGroup$a;

    invoke-virtual {p0}, Lcom/vent/ActGroup;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/vent/ActGroup$a;-><init>(Landroid/support/v4/app/n;Lcom/vent/ActGroup;)V

    iput-object v0, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/vent/ActGroup$1;

    invoke-direct {v1, p0}, Lcom/vent/ActGroup$1;-><init>(Lcom/vent/ActGroup;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    const v0, 0x7f090286

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/vent/ActGroup;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/vent/ActGroup;->bVU:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bVU:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/vent/ActGroup$2;

    invoke-direct {v1, p0}, Lcom/vent/ActGroup$2;-><init>(Lcom/vent/ActGroup;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bWe:Landroid/view/View;

    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902da

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActGroup;->bWf:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ActGroup;->bWf:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/vent/ActGroup;->bWg:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bWg:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021f

    invoke-virtual {p0, v0}, Lcom/vent/ActGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/ActGroup;->bWi:Lcom/vent/CachedImageView;

    invoke-static {p0}, Lcom/vent/d/c;->bJ(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/vent/MyApplication;->cgq:I

    iget-object v2, p0, Lcom/vent/ActGroup;->bWi:Lcom/vent/CachedImageView;

    invoke-virtual {v2, v0, v1}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWi:Lcom/vent/CachedImageView;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/ActGroup;->bWi:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vent/ActGroup;->Bg()V

    if-nez p1, :cond_1

    invoke-direct {p0, v5}, Lcom/vent/ActGroup;->aW(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, ""

    goto/16 :goto_0
.end method

.method protected final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/ActGroup;->bWi:Lcom/vent/CachedImageView;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVU:Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVV:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVW:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVX:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVY:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVZ:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bio:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWa:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWb:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWc:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWd:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVT:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V

    iput-object v1, p0, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    :cond_0
    iput-object v1, p0, Lcom/vent/ActGroup;->bWq:Landroid/support/v4/app/r;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVS:Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/vent/ActGroup;->bVB:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWg:Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWe:Landroid/view/View;

    iput-object v1, p0, Lcom/vent/ActGroup;->bWf:Landroid/view/View;

    invoke-super {p0}, Lcom/vent/c;->onDestroy()V

    return-void
.end method

.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    iget v0, p0, Lcom/vent/ActGroup;->bVP:I

    add-int/2addr v0, p2

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    iput v0, p0, Lcom/vent/ActGroup;->bVP:I

    :cond_0
    iget-object v0, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vent/ActGroup;->bVP:I

    add-int/2addr v0, p2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vent/ActGroup;->bVQ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v1}, Lcom/vent/a/l;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActGroup;->bVQ:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/vent/ActGroup;->bVQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActGroup;->bVR:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActGroup;->bVQ:Z

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/c;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "didJoinLeave"

    iget-boolean v1, p0, Lcom/vent/ActGroup;->bVO:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "group"

    iget-object v1, p0, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "hackTop"

    iget-wide v2, p0, Lcom/vent/ActGroup;->bWj:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "interests"

    iget-object v1, p0, Lcom/vent/ActGroup;->bUq:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
