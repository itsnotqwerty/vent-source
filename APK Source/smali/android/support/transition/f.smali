.class public final Landroid/support/transition/f;
.super Landroid/support/transition/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/f$a;
    }
.end annotation


# static fields
.field private static final te:[Ljava/lang/String;

.field private static final tf:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final tg:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/f$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final th:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/transition/f$a;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final ti:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final tj:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final tk:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static to:Landroid/support/transition/s;


# instance fields
.field private tl:[I

.field private tm:Z

.field private tn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/f;->te:[Ljava/lang/String;

    new-instance v0, Landroid/support/transition/f$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/f$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/f;->tf:Landroid/util/Property;

    new-instance v0, Landroid/support/transition/f$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/f$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/f;->tg:Landroid/util/Property;

    new-instance v0, Landroid/support/transition/f$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/f$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/f;->th:Landroid/util/Property;

    new-instance v0, Landroid/support/transition/f$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/f$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/f;->ti:Landroid/util/Property;

    new-instance v0, Landroid/support/transition/f$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/f$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/f;->tj:Landroid/util/Property;

    new-instance v0, Landroid/support/transition/f$7;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/f$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/f;->tk:Landroid/util/Property;

    new-instance v0, Landroid/support/transition/s;

    invoke-direct {v0}, Landroid/support/transition/s;-><init>()V

    sput-object v0, Landroid/support/transition/f;->to:Landroid/support/transition/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/transition/u;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/f;->tl:[I

    iput-boolean v1, p0, Landroid/support/transition/f;->tm:Z

    iput-boolean v1, p0, Landroid/support/transition/f;->tn:Z

    return-void
.end method

.method private a(Landroid/support/transition/z;)V
    .locals 8

    iget-object v0, p1, Landroid/support/transition/z;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/support/transition/z;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/support/transition/f;->tn:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/support/transition/z;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/f;->tl:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/support/transition/f;->tl:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/support/transition/f;->tl:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Landroid/support/transition/f;->tm:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroid/support/v4/view/r;->ag(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
    .locals 18

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/transition/f;->tn:Z

    if-eqz v5, :cond_20

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Landroid/support/transition/f;->c(Landroid/view/View;Z)Landroid/support/transition/z;

    move-result-object v4

    if-nez v4, :cond_10

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1a

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v9, v10

    sub-int v14, v12, v11

    sub-int v15, v7, v5

    sub-int v16, v8, v6

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:clip"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v13, :cond_5

    if-nez v14, :cond_6

    :cond_5
    if-eqz v15, :cond_a

    if-eqz v16, :cond_a

    :cond_6
    if-ne v10, v5, :cond_7

    if-eq v11, v6, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-ne v9, v7, :cond_9

    if-eq v12, v8, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x1

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    if-nez v1, :cond_d

    if-eqz v4, :cond_d

    :cond_c
    add-int/lit8 v2, v2, 0x1

    :cond_d
    if-lez v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/transition/f;->tm:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    invoke-static {v3, v10, v11, v9, v12}, Landroid/support/transition/al;->b(Landroid/view/View;IIII)V

    const/4 v1, 0x2

    if-ne v2, v1, :cond_13

    if-ne v13, v15, :cond_12

    move/from16 v0, v16

    if-ne v14, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    int-to-float v2, v10

    int-to-float v4, v11

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/support/transition/f;->tk:Landroid/util/Property;

    invoke-static {v3, v2, v1}, Landroid/support/transition/h;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :cond_e
    :goto_2
    move-object v2, v1

    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/support/transition/ae;->c(Landroid/view/ViewGroup;Z)V

    new-instance v3, Landroid/support/transition/f$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Landroid/support/transition/f$10;-><init>(Landroid/support/transition/f;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/transition/f;->a(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_10
    iget-object v1, v4, Landroid/support/transition/z;->view:Landroid/view/View;

    if-ne v2, v1, :cond_11

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_12
    new-instance v2, Landroid/support/transition/f$a;

    invoke-direct {v2, v3}, Landroid/support/transition/f$a;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    int-to-float v4, v10

    int-to-float v10, v11

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v4, v10, v5, v6}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v4, Landroid/support/transition/f;->tg:Landroid/util/Property;

    invoke-static {v2, v4, v1}, Landroid/support/transition/h;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    int-to-float v5, v9

    int-to-float v6, v12

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v5, Landroid/support/transition/f;->th:Landroid/util/Property;

    invoke-static {v2, v5, v1}, Landroid/support/transition/h;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Landroid/support/transition/f$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Landroid/support/transition/f$8;-><init>(Landroid/support/transition/f;Landroid/support/transition/f$a;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v1

    goto :goto_3

    :cond_13
    if-ne v10, v5, :cond_14

    if-eq v11, v6, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    int-to-float v2, v10

    int-to-float v4, v11

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/support/transition/f;->tj:Landroid/util/Property;

    invoke-static {v3, v2, v1}, Landroid/support/transition/h;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    int-to-float v2, v9

    int-to-float v4, v12

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/support/transition/f;->ti:Landroid/util/Property;

    invoke-static {v3, v2, v1}, Landroid/support/transition/h;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_2

    :cond_16
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v2, v10

    add-int/2addr v9, v11

    invoke-static {v3, v10, v11, v2, v9}, Landroid/support/transition/al;->b(Landroid/view/View;IIII)V

    const/4 v9, 0x0

    if-ne v10, v5, :cond_17

    if-eq v11, v6, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    int-to-float v9, v10

    int-to-float v10, v11

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v9, Landroid/support/transition/f;->tk:Landroid/util/Property;

    invoke-static {v3, v9, v2}, Landroid/support/transition/h;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :cond_18
    if-nez v1, :cond_1f

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v2, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v1

    :goto_4
    if-nez v4, :cond_1e

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v11, 0x0

    move/from16 v0, v16

    invoke-direct {v1, v2, v11, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    invoke-static {v3, v10}, Landroid/support/v4/view/r;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    const-string v2, "clipBounds"

    sget-object v11, Landroid/support/transition/f;->to:Landroid/support/transition/s;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v10, 0x1

    aput-object v1, v12, v10

    invoke-static {v3, v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v1, Landroid/support/transition/f$9;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Landroid/support/transition/f$9;-><init>(Landroid/support/transition/f;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v10

    :goto_6
    if-eqz v9, :cond_e

    if-nez v1, :cond_19

    move-object v1, v9

    goto/16 :goto_2

    :cond_19
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object v1, v2

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowX"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/support/transition/z;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:windowY"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v5, :cond_1b

    if-eq v4, v1, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/f;->tl:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3}, Landroid/support/transition/al;->C(Landroid/view/View;)F

    move-result v9

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/support/transition/al;->c(Landroid/view/View;F)V

    invoke-static/range {p1 .. p1}, Landroid/support/transition/al;->A(Landroid/view/View;)Landroid/support/transition/ak;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/support/transition/ak;->add(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/f;->tl:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    sub-int/2addr v2, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/f;->tl:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    sub-int/2addr v4, v8

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/f;->tl:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    sub-int/2addr v5, v8

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/transition/f;->tl:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    sub-int/2addr v1, v8

    int-to-float v1, v1

    invoke-virtual {v6, v2, v4, v5, v1}, Landroid/support/transition/l;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/support/transition/f;->tf:Landroid/util/Property;

    invoke-static {v2, v1}, Landroid/support/transition/n;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v7, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/support/transition/f$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Landroid/support/transition/f$2;-><init>(Landroid/support/transition/f;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1d
    move-object v1, v2

    goto/16 :goto_6

    :cond_1e
    move-object v1, v4

    goto/16 :goto_5

    :cond_1f
    move-object v10, v1

    goto/16 :goto_4

    :cond_20
    move v1, v4

    goto/16 :goto_1
.end method

.method public final b(Landroid/support/transition/z;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/f;->a(Landroid/support/transition/z;)V

    return-void
.end method

.method public final c(Landroid/support/transition/z;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/f;->a(Landroid/support/transition/z;)V

    return-void
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/transition/f;->te:[Ljava/lang/String;

    return-object v0
.end method
