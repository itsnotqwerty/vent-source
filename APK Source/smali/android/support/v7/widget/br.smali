.class final Landroid/support/v7/widget/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static akr:Landroid/support/v7/widget/br;

.field private static aks:Landroid/support/v7/widget/br;


# instance fields
.field private final QG:Ljava/lang/CharSequence;

.field private final Zg:Ljava/lang/Runnable;

.field private final adt:Landroid/view/View;

.field private final akm:Ljava/lang/Runnable;

.field private akn:I

.field private ako:I

.field private akp:Landroid/support/v7/widget/bs;

.field private akq:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/br$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/br$1;-><init>(Landroid/support/v7/widget/br;)V

    iput-object v0, p0, Landroid/support/v7/widget/br;->akm:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/br$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/br$2;-><init>(Landroid/support/v7/widget/br;)V

    iput-object v0, p0, Landroid/support/v7/widget/br;->Zg:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/br;->QG:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private static a(Landroid/support/v7/widget/br;)V
    .locals 4

    sget-object v0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    iget-object v1, v0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/br;->akm:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sput-object p0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    if-eqz p0, :cond_1

    sget-object v0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    iget-object v1, v0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/br;->akm:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    iget-object v0, v0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    iget-object v0, v0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    if-ne v0, p0, :cond_1

    sget-object v0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    invoke-direct {v0}, Landroid/support/v7/widget/br;->hide()V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/support/v7/widget/br;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/br;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aj(Z)V
    .locals 14

    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->ah(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)V

    sget-object v0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    invoke-direct {v0}, Landroid/support/v7/widget/br;->hide()V

    :cond_1
    sput-object p0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    iput-boolean p1, p0, Landroid/support/v7/widget/br;->akq:Z

    new-instance v0, Landroid/support/v7/widget/bs;

    iget-object v1, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    iget-object v5, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    iget-object v6, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iget v0, p0, Landroid/support/v7/widget/br;->akn:I

    iget v2, p0, Landroid/support/v7/widget/br;->ako:I

    iget-boolean v7, p0, Landroid/support/v7/widget/br;->akq:Z

    iget-object v1, p0, Landroid/support/v7/widget/br;->QG:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Landroid/support/v7/widget/bs;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/widget/bs;->hide()V

    :cond_2
    iget-object v3, v5, Landroid/support/v7/widget/bs;->ix:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v5, Landroid/support/v7/widget/bs;->aku:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v1, v5, Landroid/support/v7/widget/bs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroid/support/v7/a/a$d;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v3, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_5

    iget-object v0, v5, Landroid/support/v7/widget/bs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/a/a$d;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int v0, v2, v3

    sub-int v3, v2, v3

    move v2, v0

    :goto_2
    const/16 v0, 0x31

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v5, Landroid/support/v7/widget/bs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v7, :cond_6

    sget v0, Landroid/support/v7/a/a$d;->tooltip_y_offset_touch:I

    :goto_3
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v10, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_3

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_4

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_4
    instance-of v10, v0, Landroid/content/ContextWrapper;

    if-eqz v10, :cond_4

    instance-of v10, v0, Landroid/app/Activity;

    if-eqz v10, :cond_7

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    :cond_4
    if-nez v4, :cond_8

    const-string v0, "TooltipPopup"

    const-string v1, "Cannot find app view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, v5, Landroid/support/v7/widget/bs;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, v5, Landroid/support/v7/widget/bs;->OM:Landroid/view/View;

    iget-object v2, v5, Landroid/support/v7/widget/bs;->aku:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/br;->akq:Z

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x9c4

    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/br;->Zg:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/br;->Zg:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    move v2, v0

    goto :goto_2

    :cond_6
    sget v0, Landroid/support/v7/a/a$d;->tooltip_y_offset_non_touch:I

    goto :goto_3

    :cond_7
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v5, Landroid/support/v7/widget/bs;->akv:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, v5, Landroid/support/v7/widget/bs;->akv:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_9

    iget-object v0, v5, Landroid/support/v7/widget/bs;->akv:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_9

    iget-object v0, v5, Landroid/support/v7/widget/bs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v0, "status_bar_height"

    const-string v11, "dimen"

    const-string v12, "android"

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_7
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget-object v11, v5, Landroid/support/v7/widget/bs;->akv:Landroid/graphics/Rect;

    const/4 v12, 0x0

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v11, v12, v0, v13, v10}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    iget-object v0, v5, Landroid/support/v7/widget/bs;->akx:[I

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v5, Landroid/support/v7/widget/bs;->akw:[I

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v5, Landroid/support/v7/widget/bs;->akw:[I

    const/4 v6, 0x0

    aget v10, v0, v6

    iget-object v11, v5, Landroid/support/v7/widget/bs;->akx:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v0, v6

    iget-object v0, v5, Landroid/support/v7/widget/bs;->akw:[I

    const/4 v6, 0x1

    aget v10, v0, v6

    iget-object v11, v5, Landroid/support/v7/widget/bs;->akx:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v0, v6

    iget-object v0, v5, Landroid/support/v7/widget/bs;->akw:[I

    const/4 v6, 0x0

    aget v0, v0, v6

    add-int/2addr v0, v1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, v5, Landroid/support/v7/widget/bs;->OM:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, v5, Landroid/support/v7/widget/bs;->OM:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v5, Landroid/support/v7/widget/bs;->akw:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/2addr v1, v3

    sub-int/2addr v1, v9

    sub-int/2addr v1, v0

    iget-object v3, v5, Landroid/support/v7/widget/bs;->akw:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v9

    if-eqz v7, :cond_b

    if-gez v1, :cond_c

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    add-int/2addr v0, v2

    iget-object v3, v5, Landroid/support/v7/widget/bs;->akv:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v0, v3, :cond_c

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    :cond_c
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->V(Landroid/view/View;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto/16 :goto_6

    :cond_e
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto/16 :goto_6

    :cond_f
    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic b(Landroid/support/v7/widget/br;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/br;->aj(Z)V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/br;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/br;->hide()V

    return-void
.end method

.method private hide()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    if-ne v0, p0, :cond_0

    sput-object v2, Landroid/support/v7/widget/br;->aks:Landroid/support/v7/widget/br;

    iget-object v0, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    invoke-virtual {v0}, Landroid/support/v7/widget/bs;->hide()V

    iput-object v2, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    :goto_0
    sget-object v0, Landroid/support/v7/widget/br;->akr:Landroid/support/v7/widget/br;

    if-ne v0, p0, :cond_1

    invoke-static {v2}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/br;->Zg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string v0, "TooltipCompatHandler"

    const-string v1, "sActiveHandler.mPopup == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/br;->akq:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/br;->adt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/br;->akp:Landroid/support/v7/widget/bs;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/br;->akn:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/br;->ako:I

    invoke-static {p0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/br;->hide()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/br;->akn:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/br;->ako:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/br;->aj(Z)V

    return v1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/br;->hide()V

    return-void
.end method
