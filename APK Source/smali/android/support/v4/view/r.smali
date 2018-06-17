.class public final Landroid/support/v4/view/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/r$i;,
        Landroid/support/v4/view/r$h;,
        Landroid/support/v4/view/r$g;,
        Landroid/support/v4/view/r$f;,
        Landroid/support/v4/view/r$e;,
        Landroid/support/v4/view/r$d;,
        Landroid/support/v4/view/r$c;,
        Landroid/support/v4/view/r$b;,
        Landroid/support/v4/view/r$a;,
        Landroid/support/v4/view/r$j;
    }
.end annotation


# static fields
.field static final FQ:Landroid/support/v4/view/r$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/r$i;

    invoke-direct {v0}, Landroid/support/v4/view/r$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/r$h;

    invoke-direct {v0}, Landroid/support/v4/view/r$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/r$g;

    invoke-direct {v0}, Landroid/support/v4/view/r$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/r$f;

    invoke-direct {v0}, Landroid/support/v4/view/r$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/r$e;

    invoke-direct {v0}, Landroid/support/v4/view/r$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/r$d;

    invoke-direct {v0}, Landroid/support/v4/view/r$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/view/r$c;

    invoke-direct {v0}, Landroid/support/v4/view/r$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/view/r$b;

    invoke-direct {v0}, Landroid/support/v4/view/r$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/support/v4/view/r$a;

    invoke-direct {v0}, Landroid/support/v4/view/r$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0

    :cond_8
    new-instance v0, Landroid/support/v4/view/r$j;

    invoke-direct {v0}, Landroid/support/v4/view/r$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    goto :goto_0
.end method

.method public static G(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/r$j;->G(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static H(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static I(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->I(Landroid/view/View;)V

    return-void
.end method

.method public static J(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->J(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static K(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->K(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static L(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->L(Landroid/view/View;)V

    return-void
.end method

.method public static M(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->M(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static N(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->N(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static O(Landroid/view/View;)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static P(Landroid/view/View;)F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static Q(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->Q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static R(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->R(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static S(Landroid/view/View;)Landroid/support/v4/view/v;
    .locals 2

    sget-object v1, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    iget-object v0, v1, Landroid/support/v4/view/r$j;->Ga:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Landroid/support/v4/view/r$j;->Ga:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, v1, Landroid/support/v4/view/r$j;->Ga:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/v;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0, p0}, Landroid/support/v4/view/v;-><init>(Landroid/view/View;)V

    iget-object v1, v1, Landroid/support/v4/view/r$j;->Ga:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static T(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->T(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static U(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static V(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->V(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static W(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->W(Landroid/view/View;)V

    return-void
.end method

.method public static X(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->X(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static Y(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->Y(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static Z(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->Z(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/n;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/p;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Landroid/support/v4/view/p;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static aa(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->aa(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static ab(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ab(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static ac(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ac(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static ad(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ad(Landroid/view/View;)V

    return-void
.end method

.method public static ae(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ae(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static af(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->af(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static ag(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ag(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static ah(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ah(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static ai(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->ai(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static aj(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/r$j;->aj(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->b(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/r$j;->c(Landroid/view/View;IIII)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->d(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->d(Landroid/view/View;Z)V

    return-void
.end method

.method public static e(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static l(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->l(Landroid/view/View;I)V

    return-void
.end method

.method public static m(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->m(Landroid/view/View;I)V

    return-void
.end method

.method public static n(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->n(Landroid/view/View;I)V

    return-void
.end method

.method public static o(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->o(Landroid/view/View;I)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/r;->FQ:Landroid/support/v4/view/r$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/r$j;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
