.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$g;,
        Landroid/support/design/widget/CoordinatorLayout$d;,
        Landroid/support/design/widget/CoordinatorLayout$e;,
        Landroid/support/design/widget/CoordinatorLayout$b;,
        Landroid/support/design/widget/CoordinatorLayout$a;,
        Landroid/support/design/widget/CoordinatorLayout$c;,
        Landroid/support/design/widget/CoordinatorLayout$h;,
        Landroid/support/design/widget/CoordinatorLayout$f;
    }
.end annotation


# static fields
.field private static final lA:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field static final lw:Ljava/lang/String;

.field static final lx:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final ly:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout$b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final lz:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field iK:Landroid/support/v4/view/z;

.field private final lB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final lC:Landroid/support/v4/widget/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/h",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final lD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final lE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final lF:[I

.field private lG:Z

.field private lH:Z

.field private lI:[I

.field private lJ:Landroid/view/View;

.field private lK:Landroid/view/View;

.field private lL:Landroid/support/design/widget/CoordinatorLayout$f;

.field private lM:Z

.field lN:Z

.field private lO:Landroid/graphics/drawable/Drawable;

.field lP:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private lQ:Landroid/support/v4/view/n;

.field private final lR:Landroid/support/v4/view/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->lw:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$h;

    invoke-direct {v0}, Landroid/support/design/widget/CoordinatorLayout$h;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->lz:Ljava/util/Comparator;

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->lx:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->ly:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/support/v4/g/k$c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/g/k$c;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->lA:Landroid/support/v4/g/k$a;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->lz:Ljava/util/Comparator;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/b/a$a;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lD:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    new-instance v0, Landroid/support/v4/view/m;

    invoke-direct {v0, p0}, Landroid/support/v4/view/m;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lR:Landroid/support/v4/view/m;

    if-nez p3, :cond_0

    sget-object v0, Landroid/support/b/a$c;->CoordinatorLayout:[I

    sget v2, Landroid/support/b/a$b;->Widget_Support_CoordinatorLayout:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    sget v2, Landroid/support/b/a$c;->CoordinatorLayout_keylines:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    array-length v3, v3

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    aget v5, v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/support/b/a$c;->CoordinatorLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Landroid/support/b/a$c;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->bA()V

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$d;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private E(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    if-nez v1, :cond_0

    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lI:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private static F(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    const v0, 0x800003

    or-int/2addr v0, p0

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    return v0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method private static G(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$b;
    .locals 4

    const/16 v2, 0x2e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->ly:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->ly:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->lx:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->lw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->lw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not inflate Behavior subclass "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method private static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$e;II)V
    .locals 5

    iget v0, p3, Landroid/support/design/widget/CoordinatorLayout$e;->gravity:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    :cond_0
    invoke-static {v0, p0}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v0

    iget v1, p3, Landroid/support/design/widget/CoordinatorLayout$e;->lV:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->F(I)I

    move-result v1

    invoke-static {v1, p0}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v2, v0, 0x7

    and-int/lit8 v3, v0, 0x70

    and-int/lit8 v0, v1, 0x7

    and-int/lit8 v4, v1, 0x70

    sparse-switch v0, :sswitch_data_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    sparse-switch v4, :sswitch_data_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    sparse-switch v2, :sswitch_data_2

    sub-int/2addr v1, p4

    :goto_2
    :sswitch_0
    sparse-switch v3, :sswitch_data_3

    sub-int/2addr v0, p5

    :goto_3
    :sswitch_1
    add-int v2, v1, p4

    add-int v3, v0, p5

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :sswitch_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :sswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    goto :goto_0

    :sswitch_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :sswitch_5
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_1

    :sswitch_6
    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    goto :goto_2

    :sswitch_7
    div-int/lit8 v2, p5, 0x2

    sub-int/2addr v0, v2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->lA:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout$e;Landroid/graphics/Rect;II)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget v4, p1, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v2, v0, p3

    add-int v3, v1, p4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .locals 20

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->lD:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    :goto_0
    if-ltz v5, :cond_1

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v4

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/support/design/widget/CoordinatorLayout;->lz:Ljava/util/Comparator;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/support/design/widget/CoordinatorLayout;->lz:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/4 v4, 0x0

    move v15, v4

    move-object v5, v6

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_a

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v4, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    move-object/from16 v19, v0

    if-nez v14, :cond_3

    if-eqz v13, :cond_4

    :cond_3
    if-eqz v16, :cond_4

    if-eqz v19, :cond_d

    if-nez v5, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    :goto_3
    packed-switch p2, :pswitch_data_0

    :goto_4
    move v6, v13

    move v7, v14

    :goto_5
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    move-object v5, v4

    move v13, v6

    move v14, v7

    goto :goto_2

    :pswitch_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move v6, v13

    move v7, v14

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    :cond_4
    if-nez v14, :cond_5

    if-eqz v19, :cond_5

    packed-switch p2, :pswitch_data_1

    :goto_6
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/design/widget/CoordinatorLayout;->lJ:Landroid/view/View;

    :cond_5
    move v7, v14

    iget-object v6, v4, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/support/design/widget/CoordinatorLayout$e;->me:Z

    :cond_6
    iget-boolean v8, v4, Landroid/support/design/widget/CoordinatorLayout$e;->me:Z

    iget-boolean v6, v4, Landroid/support/design/widget/CoordinatorLayout$e;->me:Z

    if-eqz v6, :cond_8

    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_9

    if-nez v8, :cond_9

    const/4 v6, 0x1

    :goto_8
    if-eqz v4, :cond_7

    if-eqz v6, :cond_b

    :cond_7
    move-object v4, v5

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_6

    :cond_8
    iget-boolean v6, v4, Landroid/support/design/widget/CoordinatorLayout$e;->me:Z

    or-int/lit8 v6, v6, 0x0

    iput-boolean v6, v4, Landroid/support/design/widget/CoordinatorLayout$e;->me:Z

    move v4, v6

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    goto :goto_8

    :cond_a
    move v7, v14

    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    return v7

    :cond_c
    move-object v4, v5

    goto :goto_3

    :cond_d
    move-object v4, v5

    move v6, v13

    move v7, v14

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private bA()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lQ:Landroid/support/v4/view/n;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lQ:Landroid/support/v4/view/n;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lQ:Landroid/support/v4/view/n;

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    goto :goto_0
.end method

.method private static by()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->lA:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method private bz()V
    .locals 12

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    iget-object v0, v2, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->size()I

    move-result v5

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_1

    iget-object v0, v2, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v2, Landroid/support/v4/widget/h;->Jk:Landroid/support/v4/g/k$a;

    invoke-interface {v6, v0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v2, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->clear()V

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1c

    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->m(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v7

    iget v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/h;->H(Ljava/lang/Object;)V

    move v1, v3

    :goto_3
    if-ge v1, v5, :cond_1b

    if-eq v1, v2, :cond_1a

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    if-eq v8, v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lY:I

    invoke-static {v0, v9}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v0

    if-eqz v0, :cond_15

    iget v10, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lZ:I

    invoke-static {v10, v9}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v9

    and-int/2addr v9, v0

    if-ne v9, v0, :cond_15

    move v0, v4

    :goto_4
    if-nez v0, :cond_3

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_16

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, v8}, Landroid/support/design/widget/CoordinatorLayout$b;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_3
    move v0, v4

    :goto_5
    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    iget-object v0, v0, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0, v8}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/h;->H(Ljava/lang/Object;)V

    :cond_4
    iget-object v9, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    iget-object v0, v9, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0, v8}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0, v6}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lX:I

    if-eq v0, v1, :cond_8

    move v0, v3

    :goto_6
    if-nez v0, :cond_2

    :cond_7
    iget v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lX:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    if-ne v0, p0, :cond_e

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    goto/16 :goto_2

    :cond_8
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    iget-object v1, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_7
    if-eq v1, p0, :cond_c

    if-eqz v1, :cond_9

    if-ne v1, v6, :cond_a

    :cond_9
    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    move v0, v3

    goto :goto_6

    :cond_a
    instance-of v8, v1, Landroid/view/View;

    if-eqz v8, :cond_b

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_b
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_7

    :cond_c
    iput-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    move v0, v4

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    iget-object v1, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_8
    if-eq v1, p0, :cond_12

    if-eqz v1, :cond_12

    if-ne v1, v6, :cond_10

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    goto/16 :goto_2

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    instance-of v8, v1, Landroid/view/View;

    if-eqz v8, :cond_11

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_11
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_8

    :cond_12
    iput-object v0, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    iput-object v11, v7, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    goto/16 :goto_2

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v7, Landroid/support/design/widget/CoordinatorLayout$e;->lX:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move v0, v3

    goto/16 :goto_4

    :cond_16
    move v0, v3

    goto/16 :goto_5

    :cond_17
    iget-object v0, v9, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0, v8}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_19

    iget-object v0, v9, Landroid/support/v4/widget/h;->Jk:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_18
    iget-object v9, v9, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v9, v8, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_1c
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    invoke-virtual {v1}, Landroid/support/v4/widget/h;->ee()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private static f(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->ma:I

    if-eq v1, p1, :cond_0

    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->ma:I

    sub-int v1, p1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/r;->n(Landroid/view/View;I)V

    iput p1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->ma:I

    :cond_0
    return-void
.end method

.method private static g(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mb:I

    if-eq v1, p1, :cond_0

    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mb:I

    sub-int v1, p1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    iput p1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mb:I

    :cond_0
    return-void
.end method

.method private h(Z)V
    .locals 12

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v11, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v11, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v11, p0, v10, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v11, p0, v10, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_2
    if-ge v1, v9, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iput-boolean v7, v0, Landroid/support/design/widget/CoordinatorLayout$e;->me:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lJ:Landroid/view/View;

    iput-boolean v7, p0, Landroid/support/design/widget/CoordinatorLayout;->lG:Z

    return-void
.end method

.method private static m(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$e;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lU:Z

    if-nez v1, :cond_1

    instance-of v1, p0, Landroid/support/design/widget/CoordinatorLayout$a;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$a;

    invoke-interface {p0}, Landroid/support/design/widget/CoordinatorLayout$a;->bB()Landroid/support/design/widget/CoordinatorLayout$b;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "CoordinatorLayout"

    const-string v3, "Attached behavior class is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V

    iput-boolean v6, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lU:Z

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-class v1, Landroid/support/design/widget/CoordinatorLayout$c;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$c;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v2}, Landroid/support/design/widget/CoordinatorLayout$c;->value()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iput-boolean v6, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lU:Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default behavior class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/support/design/widget/CoordinatorLayout$c;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method final H(I)V
    .locals 19

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v14

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v15

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v16

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    if-ge v12, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$e;

    if-nez p1, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_15

    :cond_0
    const/4 v3, 0x0

    move v11, v3

    :goto_1
    if-ge v11, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v9, Landroid/support/design/widget/CoordinatorLayout$e;->md:Landroid/view/View;

    if-ne v4, v3, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v3, v5, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v17

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v3}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$e;II)V

    iget v10, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_1

    iget v10, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v10, v0, :cond_6

    :cond_1
    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout$e;Landroid/graphics/Rect;II)V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    if-eqz v6, :cond_2

    invoke-static {v8, v6}, Landroid/support/v4/view/r;->n(Landroid/view/View;I)V

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {v8, v7}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    :cond_3
    if-eqz v10, :cond_4

    iget-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v6, :cond_4

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v8, v5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_4
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static/range {v17 .. v17}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    :cond_5
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v15}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget v3, v9, Landroid/support/design/widget/CoordinatorLayout$e;->lY:I

    if-eqz v3, :cond_8

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v9, Landroid/support/design/widget/CoordinatorLayout$e;->lY:I

    invoke-static {v3, v2}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v4, v3, 0x70

    sparse-switch v4, :sswitch_data_0

    :goto_3
    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    :cond_8
    :goto_4
    :pswitch_0
    iget v3, v9, Landroid/support/design/widget/CoordinatorLayout$e;->lZ:I

    if-eqz v3, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v8}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_c

    :cond_9
    :goto_5
    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$e;->mi:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$e;->mi:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_a
    add-int/lit8 v3, v12, 0x1

    move v5, v3

    :goto_6
    if-ge v5, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v6, v4, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v8}, Landroid/support/design/widget/CoordinatorLayout$b;->d(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez p1, :cond_14

    iget-boolean v7, v4, Landroid/support/design/widget/CoordinatorLayout$e;->mh:Z

    if-eqz v7, :cond_14

    const/4 v3, 0x0

    iput-boolean v3, v4, Landroid/support/design/widget/CoordinatorLayout$e;->mh:Z

    :cond_b
    :goto_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_6

    :sswitch_0
    iget v4, v14, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v14, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :sswitch_1
    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    iget v6, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v14, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :pswitch_1
    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v4, v15, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v14, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    :pswitch_2
    iget v3, v14, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v14, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v4, :cond_d

    invoke-virtual {v4, v8, v5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rect should be within the child\'s bounds. Rect:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | Bounds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_e
    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    iget v4, v3, Landroid/support/design/widget/CoordinatorLayout$e;->lZ:I

    invoke-static {v4, v2}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v6

    const/4 v4, 0x0

    and-int/lit8 v7, v6, 0x30

    const/16 v9, 0x30

    if-ne v7, v9, :cond_f

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    sub-int/2addr v7, v9

    iget v9, v3, Landroid/support/design/widget/CoordinatorLayout$e;->mb:I

    sub-int/2addr v7, v9

    iget v9, v14, Landroid/graphics/Rect;->top:I

    if-ge v7, v9, :cond_f

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v7

    invoke-static {v8, v4}, Landroid/support/design/widget/CoordinatorLayout;->g(Landroid/view/View;I)V

    const/4 v4, 0x1

    :cond_f
    and-int/lit8 v7, v6, 0x50

    const/16 v9, 0x50

    if-ne v7, v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    iget v9, v3, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v7, v9

    iget v9, v3, Landroid/support/design/widget/CoordinatorLayout$e;->mb:I

    add-int/2addr v7, v9

    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v9, :cond_10

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v7, v4

    invoke-static {v8, v4}, Landroid/support/design/widget/CoordinatorLayout;->g(Landroid/view/View;I)V

    const/4 v4, 0x1

    :cond_10
    if-nez v4, :cond_11

    const/4 v4, 0x0

    invoke-static {v8, v4}, Landroid/support/design/widget/CoordinatorLayout;->g(Landroid/view/View;I)V

    :cond_11
    const/4 v4, 0x0

    and-int/lit8 v7, v6, 0x3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_12

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    sub-int/2addr v7, v9

    iget v9, v3, Landroid/support/design/widget/CoordinatorLayout$e;->ma:I

    sub-int/2addr v7, v9

    iget v9, v14, Landroid/graphics/Rect;->left:I

    if-ge v7, v9, :cond_12

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    invoke-static {v8, v4}, Landroid/support/design/widget/CoordinatorLayout;->f(Landroid/view/View;I)V

    const/4 v4, 0x1

    :cond_12
    and-int/lit8 v6, v6, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v6, v7

    iget v3, v3, Landroid/support/design/widget/CoordinatorLayout$e;->ma:I

    add-int/2addr v3, v6

    iget v6, v14, Landroid/graphics/Rect;->right:I

    if-ge v3, v6, :cond_17

    iget v4, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v8, v3}, Landroid/support/design/widget/CoordinatorLayout;->f(Landroid/view/View;I)V

    const/4 v3, 0x1

    :goto_8
    if-nez v3, :cond_13

    const/4 v3, 0x0

    invoke-static {v8, v3}, Landroid/support/design/widget/CoordinatorLayout;->f(Landroid/view/View;I)V

    :cond_13
    invoke-static {v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_5

    :cond_14
    packed-switch p1, :pswitch_data_1

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v3, v8}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    :goto_9
    const/4 v6, 0x1

    move/from16 v0, p1

    if-ne v0, v6, :cond_b

    iput-boolean v3, v4, Landroid/support/design/widget/CoordinatorLayout$e;->mh:Z

    goto/16 :goto_7

    :pswitch_3
    const/4 v3, 0x1

    goto :goto_9

    :cond_15
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto/16 :goto_0

    :cond_16
    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v15}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static/range {v16 .. v16}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return-void

    :cond_17
    move v3, v4

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public final a(Landroid/view/View;II[II)V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_2

    invoke-virtual {p0, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CoordinatorLayout$e;->I(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    aput v7, v2, v4

    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    move-object v2, p0

    move-object v4, p1

    move v5, p3

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V

    if-lez p2, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    if-lez p3, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v8, v1

    move v9, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lF:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    aput v9, p4, v1

    const/4 v1, 0x1

    aput v8, p4, v1

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->H(I)V

    :cond_3
    return-void

    :cond_4
    move v1, v8

    move v3, v9

    goto :goto_3
.end method

.method public final a(Landroid/view/View;II)Z
    .locals 2

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    throw v1
.end method

.method public final b(Landroid/view/View;II)Z
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    move v8, v9

    move v7, v9

    :goto_0
    if-ge v8, v10, :cond_2

    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v1

    or-int v0, v7, v1

    invoke-virtual {v6, p3, v1}, Landroid/support/design/widget/CoordinatorLayout$e;->a(IZ)V

    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, p3, v9}, Landroid/support/design/widget/CoordinatorLayout$e;->a(IZ)V

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    return v7
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public final e(Landroid/view/View;I)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lX:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mc:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v2

    :try_start_0
    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move v0, p2

    invoke-static/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$e;II)V

    invoke-direct {p0, v3, v2, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout$e;Landroid/graphics/Rect;II)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    throw v0

    :cond_2
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lW:I

    if-ltz v1, :cond_4

    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lW:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->gravity:I

    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->G(I)I

    move-result v4

    invoke-static {v4, p2}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ne p2, v3, :cond_3

    sub-int v1, v6, v1

    :cond_3
    invoke-direct {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->E(I)I

    move-result v1

    sub-int/2addr v1, v8

    sparse-switch v5, :sswitch_data_0

    move v3, v1

    :goto_2
    sparse-switch v4, :sswitch_data_1

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v6, v4

    sub-int/2addr v4, v8

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int v4, v7, v4

    sub-int/2addr v4, v9

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v1, v2, v8

    add-int v3, v0, v9

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :sswitch_0
    add-int/2addr v1, v8

    move v3, v1

    goto :goto_2

    :sswitch_1
    div-int/lit8 v3, v8, 0x2

    add-int/2addr v1, v3

    move v3, v1

    goto :goto_2

    :sswitch_2
    add-int/lit8 v1, v9, 0x0

    goto :goto_3

    :sswitch_3
    div-int/lit8 v1, v9, 0x2

    add-int/lit8 v1, v1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v1, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_5
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->by()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->gravity:I

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->F(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/e;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public final g(II)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$e;->I(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, v5, p1}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    move v0, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->H(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-direct {v0}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/support/design/widget/CoordinatorLayout$e;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->bz()V

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLastWindowInsets()Landroid/support/v4/view/z;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lR:Landroid/support/v4/view/m;

    iget v0, v0, Landroid/support/v4/view/m;->FM:I

    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final h(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lR:Landroid/support/v4/view/m;

    iput p2, v0, Landroid/support/v4/view/m;->FM:I

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->lK:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lR:Landroid/support/v4/view/m;

    iput v2, v0, Landroid/support/v4/view/m;->FM:I

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$e;->I(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p0, v4, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    invoke-virtual {v0, p2, v2}, Landroid/support/design/widget/CoordinatorLayout$e;->a(IZ)V

    iput-boolean v2, v0, Landroid/support/design/widget/CoordinatorLayout$e;->mh:Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lK:Landroid/view/View;

    return-void
.end method

.method public final n(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, v3, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v2}, Landroid/support/v4/g/m;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, v3, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v1, v3, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/m;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->h(Z)V

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$f;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lH:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->h(Z)V

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lK:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lK:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lH:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->h(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->h(Z)V

    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v3

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0, v3}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->e(Landroid/view/View;I)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->bz()V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    const/4 v1, 0x0

    iget-object v3, v7, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v3}, Landroid/support/v4/g/m;->size()I

    move-result v8

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_9

    iget-object v1, v7, Landroid/support/v4/widget/h;->Jl:Landroid/support/v4/g/m;

    invoke-virtual {v1, v3}, Landroid/support/v4/g/m;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/design/widget/CoordinatorLayout;->lM:Z

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lH:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$f;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/support/design/widget/CoordinatorLayout$f;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lM:Z

    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v17

    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    move v9, v1

    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    add-int v22, v15, v16

    add-int v23, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v1, :cond_e

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    move v10, v1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v24

    const/4 v1, 0x0

    move v14, v1

    :goto_7
    move/from16 v0, v24

    if-ge v14, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lB:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$e;

    const/4 v5, 0x0

    iget v1, v8, Landroid/support/design/widget/CoordinatorLayout$e;->lW:I

    if-ltz v1, :cond_5

    if-eqz v18, :cond_5

    iget v1, v8, Landroid/support/design/widget/CoordinatorLayout$e;->lW:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->E(I)I

    move-result v1

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->gravity:I

    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->G(I)I

    move-result v2

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    if-eqz v9, :cond_f

    :cond_4
    const/4 v2, 0x0

    sub-int v4, v19, v16

    sub-int v1, v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5
    :goto_8
    if-eqz v10, :cond_13

    invoke-static {v3}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v1}, Landroid/support/v4/view/z;->getSystemWindowInsetLeft()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/CoordinatorLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v4}, Landroid/support/v4/view/z;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v1, v19, v1

    move/from16 v0, v18

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sub-int v1, v21, v2

    move/from16 v0, v20

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_9
    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v1, :cond_6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v1, v22

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v23

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v11, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v3, v4

    :goto_a
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v11, v1

    move v12, v2

    move v13, v3

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lH:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->lL:Landroid/support/design/widget/CoordinatorLayout$f;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/design/widget/CoordinatorLayout;->lM:Z

    goto/16 :goto_4

    :cond_d
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_5

    :cond_e
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_6

    :cond_f
    const/4 v4, 0x5

    if-ne v2, v4, :cond_10

    if-eqz v9, :cond_11

    :cond_10
    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    if-eqz v9, :cond_5

    :cond_11
    const/4 v2, 0x0

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_8

    :cond_12
    const/high16 v1, -0x1000000

    and-int/2addr v1, v11

    move/from16 v0, p1

    invoke-static {v13, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v11, 0x10

    move/from16 v0, p2

    invoke-static {v12, v0, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    return-void

    :cond_13
    move/from16 v6, p2

    move/from16 v4, p1

    goto/16 :goto_9

    :cond_14
    move v1, v11

    move v2, v12

    move v3, v13

    goto :goto_a

    :cond_15
    move v1, v2

    goto/16 :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    move v7, v8

    move v6, v8

    :goto_0
    if-ge v7, v9, :cond_0

    invoke-virtual {p0, v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {v0, v8}, Landroid/support/design/widget/CoordinatorLayout$e;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    or-int/2addr v0, v6

    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p5, v0}, Landroid/support/design/widget/CoordinatorLayout;->g(II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->h(Landroid/view/View;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$g;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :cond_1
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$g;

    iget-object v0, p1, Landroid/support/v4/view/a;->EV:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroid/support/design/widget/CoordinatorLayout$g;->mk:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->m(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$e;

    move-result-object v5

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    invoke-virtual {v5, p0, v4, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    new-instance v2, Landroid/support/design/widget/CoordinatorLayout$g;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/design/widget/CoordinatorLayout$g;-><init>(Landroid/os/Parcelable;)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v5}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$g;->mk:Landroid/util/SparseArray;

    return-object v2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->i(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lJ:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0, p1, v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lJ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_5

    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->lJ:Landroid/view/View;

    invoke-virtual {v0, p0, v3, p1}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    move v8, v0

    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lJ:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    if-eq v9, v10, :cond_1

    if-ne v9, v4, :cond_2

    :cond_1
    invoke-direct {p0, v7}, Landroid/support/design/widget/CoordinatorLayout;->h(Z)V

    :cond_2
    return v8

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    move v8, v7

    goto :goto_1

    :cond_6
    move v1, v0

    move v8, v7

    goto :goto_1

    :cond_7
    move v1, v7

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->h(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lG:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->bA()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->lP:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/a/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lO:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
