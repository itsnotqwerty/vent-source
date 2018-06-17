.class public Landroid/support/v7/app/q;
.super Landroid/support/v7/app/a;

# interfaces
.implements Landroid/support/v7/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/q$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OG:Landroid/view/animation/Interpolator;

.field private static final OH:Landroid/view/animation/Interpolator;


# instance fields
.field private OI:Landroid/content/Context;

.field OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field OK:Landroid/support/v7/widget/ActionBarContainer;

.field OL:Landroid/support/v7/widget/ActionBarContextView;

.field OM:Landroid/view/View;

.field ON:Landroid/support/v7/widget/bh;

.field private OO:I

.field private OP:Z

.field OQ:Landroid/support/v7/app/q$a;

.field OS:Landroid/support/v7/view/b;

.field OT:Landroid/support/v7/view/b$a;

.field private OU:Z

.field private OV:I

.field OW:Z

.field OX:Z

.field OY:Z

.field private OZ:Z

.field Ol:Landroid/support/v7/widget/ak;

.field private Op:Z

.field private Oq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Pa:Z

.field Pb:Landroid/support/v7/view/h;

.field private Pc:Z

.field Pd:Z

.field final Pe:Landroid/support/v4/view/w;

.field final Pf:Landroid/support/v4/view/w;

.field final Pg:Landroid/support/v4/view/y;

.field mContext:Landroid/content/Context;

.field private od:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private wP:Landroid/app/Dialog;

.field private xs:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v7/app/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/q;->$assertionsDisabled:Z

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/q;->OG:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/q;->OH:Landroid/view/animation/Interpolator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/q;->od:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/q;->OO:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/q;->Oq:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/q;->OV:I

    iput-boolean v1, p0, Landroid/support/v7/app/q;->OW:Z

    iput-boolean v1, p0, Landroid/support/v7/app/q;->Pa:Z

    new-instance v0, Landroid/support/v7/app/q$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$1;-><init>(Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->Pe:Landroid/support/v4/view/w;

    new-instance v0, Landroid/support/v7/app/q$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$2;-><init>(Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->Pf:Landroid/support/v4/view/w;

    new-instance v0, Landroid/support/v7/app/q$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$3;-><init>(Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->Pg:Landroid/support/v4/view/y;

    iput-object p1, p0, Landroid/support/v7/app/q;->xs:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/q;->au(Landroid/view/View;)V

    if-nez p2, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/q;->od:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/q;->OO:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/q;->Oq:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/q;->OV:I

    iput-boolean v1, p0, Landroid/support/v7/app/q;->OW:Z

    iput-boolean v1, p0, Landroid/support/v7/app/q;->Pa:Z

    new-instance v0, Landroid/support/v7/app/q$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$1;-><init>(Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->Pe:Landroid/support/v4/view/w;

    new-instance v0, Landroid/support/v7/app/q$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$2;-><init>(Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->Pf:Landroid/support/v4/view/w;

    new-instance v0, Landroid/support/v7/app/q$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/q$3;-><init>(Landroid/support/v7/app/q;)V

    iput-object v0, p0, Landroid/support/v7/app/q;->Pg:Landroid/support/v4/view/y;

    iput-object p1, p0, Landroid/support/v7/app/q;->wP:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/q;->au(Landroid/view/View;)V

    return-void
.end method

.method private C(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Landroid/support/v7/app/q;->OU:Z

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OU:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/bh;)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/app/q;->ON:Landroid/support/v7/widget/bh;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/bh;)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getNavigationMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/app/q;->ON:Landroid/support/v7/widget/bh;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/q;->ON:Landroid/support/v7/widget/bh;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/bh;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    iget-boolean v3, p0, Landroid/support/v7/app/q;->OU:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/widget/ak;->setCollapsible(Z)V

    iget-object v3, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/app/q;->OU:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/bh;)V

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    iget-object v3, p0, Landroid/support/v7/app/q;->ON:Landroid/support/v7/widget/bh;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/bh;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/q;->ON:Landroid/support/v7/widget/bh;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/bh;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method private E(Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OX:Z

    iget-boolean v1, p0, Landroid/support/v7/app/q;->OY:Z

    iget-boolean v2, p0, Landroid/support/v7/app/q;->OZ:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/q;->b(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/app/q;->Pa:Z

    if-nez v0, :cond_4

    iput-boolean v5, p0, Landroid/support/v7/app/q;->Pa:Z

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroid/support/v7/app/q;->OV:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/app/q;->Pc:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    new-instance v1, Landroid/support/v7/view/h;

    invoke-direct {v1}, Landroid/support/v7/view/h;-><init>()V

    iget-object v2, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/v;->l(F)Landroid/support/v4/view/v;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/q;->Pg:Landroid/support/v4/view/y;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/y;)Landroid/support/v4/view/v;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/v;)Landroid/support/v7/view/h;

    iget-boolean v2, p0, Landroid/support/v7/app/q;->OW:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/v;->l(F)Landroid/support/v4/view/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/v;)Landroid/support/v7/view/h;

    :cond_3
    sget-object v0, Landroid/support/v7/app/q;->OH:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->b(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/h;

    invoke-virtual {v1}, Landroid/support/v7/view/h;->eS()Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/q;->Pf:Landroid/support/v4/view/w;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->b(Landroid/support/v4/view/w;)Landroid/support/v7/view/h;

    iput-object v1, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    invoke-virtual {v1}, Landroid/support/v7/view/h;->start()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OW:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/q;->Pf:Landroid/support/v4/view/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->ap(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/app/q;->Pa:Z

    if-eqz v0, :cond_4

    iput-boolean v6, p0, Landroid/support/v7/app/q;->Pa:Z

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->cancel()V

    :cond_8
    iget v0, p0, Landroid/support/v7/app/q;->OV:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/app/q;->Pc:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_c

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v1, Landroid/support/v7/view/h;

    invoke-direct {v1}, Landroid/support/v7/view/h;-><init>()V

    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_a

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_a
    iget-object v2, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/v;->l(F)Landroid/support/v4/view/v;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/q;->Pg:Landroid/support/v4/view/y;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/v;->a(Landroid/support/v4/view/y;)Landroid/support/v4/view/v;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/v;)Landroid/support/v7/view/h;

    iget-boolean v2, p0, Landroid/support/v7/app/q;->OW:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/support/v7/app/q;->OM:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/r;->S(Landroid/view/View;)Landroid/support/v4/view/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/v;->l(F)Landroid/support/v4/view/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->a(Landroid/support/v4/view/v;)Landroid/support/v7/view/h;

    :cond_b
    sget-object v0, Landroid/support/v7/app/q;->OG:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->b(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/h;

    invoke-virtual {v1}, Landroid/support/v7/view/h;->eS()Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/q;->Pe:Landroid/support/v4/view/w;

    invoke-virtual {v1, v0}, Landroid/support/v7/view/h;->b(Landroid/support/v4/view/w;)Landroid/support/v7/view/h;

    iput-object v1, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    invoke-virtual {v1}, Landroid/support/v7/view/h;->start()V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/q;->Pe:Landroid/support/v4/view/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->ap(Landroid/view/View;)V

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private au(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/support/v7/a/a$f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$a;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/support/v7/widget/ak;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/support/v7/widget/ak;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    sget v0, Landroid/support/v7/a/a$f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    sget v0, Landroid/support/v7/a/a$f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    if-nez v0, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v3, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/ak;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "null"

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/support/v7/app/q;->OP:Z

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/a;->k(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    iget-object v3, v0, Landroid/support/v7/view/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0}, Landroid/support/v7/view/a;->eO()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/q;->C(Z)V

    iget-object v0, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroid/support/v7/a/a$j;->ActionBar:[I

    sget v5, Landroid/support/v7/a/a$a;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Landroid/support/v7/a/a$j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout;->TI:Z

    if-nez v3, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iput-boolean v1, p0, Landroid/support/v7/app/q;->Pd:Z

    iget-object v3, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    :cond_9
    sget v1, Landroid/support/v7/a/a$j;->ActionBar_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_a

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/r;->d(Landroid/view/View;F)V

    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static b(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDisplayOptions(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/q;->OP:Z

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ak;->setDisplayOptions(I)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/v7/app/q;->Pc:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->cancel()V

    :cond_0
    return-void
.end method

.method public final B(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/q;->Op:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/q;->Op:Z

    iget-object v0, p0, Landroid/support/v7/app/q;->Oq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/q;->Oq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/app/q;->OW:Z

    return-void
.end method

.method public final F(Z)V
    .locals 8

    const-wide/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OZ:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/v7/app/q;->OZ:Z

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v4}, Landroid/support/v7/app/q;->E(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, v2, v6, v7}, Landroid/support/v7/widget/ak;->b(IJ)Landroid/support/v4/view/v;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->b(IJ)Landroid/support/v4/view/v;

    move-result-object v1

    :goto_1
    new-instance v4, Landroid/support/v7/view/h;

    invoke-direct {v4}, Landroid/support/v7/view/h;-><init>()V

    iget-object v2, v4, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    :goto_2
    iget-object v0, v1, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    iget-object v0, v4, Landroid/support/v7/view/h;->qG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/support/v7/view/h;->start()V

    :goto_3
    return-void

    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/q;->OZ:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/support/v7/app/q;->OZ:Z

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_4
    invoke-direct {p0, v4}, Landroid/support/v7/app/q;->E(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v4, v2, v3}, Landroid/support/v7/widget/ak;->b(IJ)Landroid/support/v4/view/v;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->b(IJ)Landroid/support/v4/view/v;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, v2}, Landroid/support/v7/widget/ak;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, v4}, Landroid/support/v7/widget/ak;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    invoke-virtual {v0}, Landroid/support/v7/app/q$a;->finish()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/q;->OJ:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->fC()V

    new-instance v0, Landroid/support/v7/app/q$a;

    iget-object v1, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/app/q$a;-><init>(Landroid/support/v7/app/q;Landroid/content/Context;Landroid/support/v7/view/b$a;)V

    invoke-virtual {v0}, Landroid/support/v7/app/q$a;->eM()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    invoke-virtual {v0}, Landroid/support/v7/app/q$a;->invalidate()V

    iget-object v1, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContextView;->c(Landroid/support/v7/view/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/q;->F(Z)V

    iget-object v1, p0, Landroid/support/v7/app/q;->OL:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->collapseActionView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eJ()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/q;->OY:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/app/q;->E(Z)V

    :cond_0
    return-void
.end method

.method public final eK()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OY:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/app/q;->OY:Z

    invoke-direct {p0, v1}, Landroid/support/v7/app/q;->E(Z)V

    :cond_0
    return-void
.end method

.method public final eL()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/q;->Pb:Landroid/support/v7/view/h;

    :cond_0
    return-void
.end method

.method public final ep()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/q;->setDisplayOptions(II)V

    return-void
.end method

.method public final eq()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/q;->setDisplayOptions(II)V

    return-void
.end method

.method public final getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/q;->OI:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/q;->OI:Landroid/content/Context;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/q;->OI:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/app/q;->OI:Landroid/content/Context;

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/a;->k(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/a;->eO()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/q;->C(Z)V

    return-void
.end method

.method public final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/q;->OQ:Landroid/support/v7/app/q$a;

    iget-object v3, v0, Landroid/support/v7/app/q$a;->Pj:Landroid/support/v7/view/menu/h;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_1
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/app/q;->OV:I

    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/q;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q;->Ol:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final z(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/q;->OP:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/q;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method
