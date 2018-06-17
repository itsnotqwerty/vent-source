.class public Landroid/support/v7/widget/at;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/at$a;
    }
.end annotation


# instance fields
.field private abN:Z

.field private abO:I

.field private abP:I

.field private abQ:I

.field private abR:F

.field private abS:Z

.field private abT:[I

.field private abU:[I

.field private abV:Landroid/graphics/drawable/Drawable;

.field private abW:I

.field private abX:I

.field private abY:I

.field private abZ:I

.field private hE:I

.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/at;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/at;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Landroid/support/v7/widget/at;->abN:Z

    iput v4, p0, Landroid/support/v7/widget/at;->abO:I

    iput v3, p0, Landroid/support/v7/widget/at;->abP:I

    const v0, 0x800033

    iput v0, p0, Landroid/support/v7/widget/at;->mGravity:I

    sget-object v0, Landroid/support/v7/a/a$j;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v3}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->setOrientation(I)V

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->setGravity(I)V

    :cond_1
    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->setBaselineAligned(Z)V

    :cond_2
    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/at;->abR:F

    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/at;->abO:I

    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/at;->abS:Z

    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/at;->abY:I

    sget v1, Landroid/support/v7/a/a$j;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bo;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/at;->abZ:I

    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private Q(II)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    :goto_0
    if-ge v7, p1, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/at$a;

    iget v0, v6, Landroid/support/v7/widget/at$a;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    iget v8, v6, Landroid/support/v7/widget/at$a;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/at$a;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/at;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v6, Landroid/support/v7/widget/at$a;->height:I

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private R(II)V
    .locals 28

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getVirtualChildCount()I

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/at;->abT:[I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/at;->abU:[I

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/at;->abT:[I

    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/at;->abU:[I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/at;->abT:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/at;->abU:[I

    move-object/from16 v25, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v7, -0x1

    aput v7, v24, v5

    aput v7, v24, v4

    aput v7, v24, v3

    aput v7, v24, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v7, -0x1

    aput v7, v25, v5

    aput v7, v25, v4

    aput v7, v25, v3

    aput v7, v25, v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/at;->abN:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/at;->abS:Z

    move/from16 v27, v0

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    move v9, v2

    :goto_0
    const/4 v11, 0x0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int/lit8 v2, v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move/from16 v7, v19

    :goto_2
    add-int/lit8 v19, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_34

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->abW:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/at$a;

    iget v2, v8, Landroid/support/v7/widget/at$a;->weight:F

    add-float v13, v6, v2

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    iget v2, v8, Landroid/support/v7/widget/at$a;->width:I

    if-nez v2, :cond_8

    iget v2, v8, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    iget v4, v8, Landroid/support/v7/widget/at$a;->leftMargin:I

    iget v5, v8, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    :goto_3
    if-eqz v26, :cond_7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    move v7, v11

    :goto_4
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_32

    iget v4, v8, Landroid/support/v7/widget/at$a;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    const/4 v4, 0x1

    const/4 v2, 0x1

    :goto_5
    iget v5, v8, Landroid/support/v7/widget/at$a;->topMargin:I

    iget v6, v8, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v26, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v10

    const/4 v3, -0x1

    if-eq v10, v3, :cond_5

    iget v3, v8, Landroid/support/v7/widget/at$a;->gravity:I

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->mGravity:I

    :goto_6
    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    aget v17, v24, v3

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v24, v3

    aget v17, v25, v3

    sub-int v10, v6, v10

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v25, v3

    :cond_5
    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    if-eqz v14, :cond_e

    iget v3, v8, Landroid/support/v7/widget/at$a;->height:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_e

    const/4 v3, 0x1

    :goto_7
    iget v8, v8, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_10

    if-eqz v2, :cond_f

    move v2, v5

    :goto_8
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v2, v7

    move v5, v12

    move v6, v13

    move/from16 v17, v11

    :goto_9
    add-int/lit8 v7, v19, 0x0

    move v11, v2

    move v12, v5

    move v10, v4

    move v14, v3

    move v15, v8

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    iget v4, v8, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v8, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    goto/16 :goto_3

    :cond_7
    const/4 v12, 0x1

    move v7, v11

    goto/16 :goto_4

    :cond_8
    const/high16 v2, -0x80000000

    iget v4, v8, Landroid/support/v7/widget/at$a;->width:I

    if-nez v4, :cond_9

    iget v4, v8, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    const/4 v2, 0x0

    const/4 v4, -0x2

    iput v4, v8, Landroid/support/v7/widget/at$a;->width:I

    :cond_9
    move/from16 v20, v2

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abQ:I

    :goto_a
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/at;->f(Landroid/view/View;IIII)V

    const/high16 v2, -0x80000000

    move/from16 v0, v20

    if-eq v0, v2, :cond_a

    move/from16 v0, v20

    iput v0, v8, Landroid/support/v7/widget/at$a;->width:I

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->abQ:I

    iget v5, v8, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v5, v2

    iget v6, v8, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x0

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/at;->abQ:I

    :goto_b
    if-eqz v27, :cond_33

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v7, v11

    goto/16 :goto_4

    :cond_b
    const/4 v5, 0x0

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int v5, v4, v2

    iget v6, v8, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v8, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/at;->abQ:I

    goto :goto_b

    :cond_d
    iget v3, v8, Landroid/support/v7/widget/at$a;->gravity:I

    goto/16 :goto_6

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_f
    move v2, v6

    goto/16 :goto_8

    :cond_10
    if-eqz v2, :cond_11

    :goto_c
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v2, v7

    move v5, v12

    move v6, v13

    move v8, v15

    move/from16 v16, v10

    move/from16 v17, v11

    goto/16 :goto_9

    :cond_11
    move v5, v6

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abW:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    :cond_13
    const/4 v2, 0x1

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x2

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    :cond_14
    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v4, 0x1

    aget v4, v24, v4

    const/4 v5, 0x2

    aget v5, v24, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_d
    if-eqz v27, :cond_19

    const/high16 v2, -0x80000000

    move/from16 v0, v22

    if-eq v0, v2, :cond_15

    if-nez v22, :cond_19

    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    const/4 v3, 0x0

    :goto_e
    move/from16 v0, v21

    if-ge v3, v0, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int/lit8 v2, v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move v2, v3

    :goto_f
    add-int/lit8 v3, v2, 0x1

    goto :goto_e

    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_17

    add-int/lit8 v2, v3, 0x0

    goto :goto_f

    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/at$a;

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abQ:I

    iget v7, v2, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v7, v11

    iget v2, v2, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move v2, v3

    goto :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int v7, v5, v11

    iget v8, v2, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v7, v8

    iget v2, v2, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move v2, v3

    goto :goto_f

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v19

    const v2, 0xffffff

    and-int v2, v2, v19

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    sub-int v8, v2, v3

    if-nez v12, :cond_1a

    if-eqz v8, :cond_2a

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-lez v2, :cond_2a

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abR:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/at;->abR:F

    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v7, -0x1

    aput v7, v24, v5

    aput v7, v24, v4

    aput v7, v24, v3

    aput v7, v24, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v7, -0x1

    aput v7, v25, v5

    aput v7, v25, v4

    aput v7, v25, v3

    aput v7, v25, v2

    const/4 v15, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    const/4 v2, 0x0

    move/from16 v18, v2

    move v4, v6

    move v11, v14

    move/from16 v12, v16

    move/from16 v13, v17

    :goto_10
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/at$a;

    iget v6, v2, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2f

    int-to-float v3, v8

    mul-float/2addr v3, v6

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-float v7, v4, v6

    sub-int/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/at$a;->height:I

    move/from16 v0, p2

    invoke-static {v0, v4, v6}, Landroid/support/v7/widget/at;->getChildMeasureSpec(III)I

    move-result v6

    iget v4, v2, Landroid/support/v7/widget/at$a;->width:I

    if-nez v4, :cond_1c

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v4, :cond_1f

    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gez v3, :cond_1d

    const/4 v3, 0x0

    :cond_1d
    move-object v4, v5

    :goto_11
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    invoke-static {v13, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    :goto_12
    if-eqz v9, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v6, v2, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    :goto_13
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_22

    iget v3, v2, Landroid/support/v7/widget/at$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    const/4 v3, 0x1

    :goto_14
    iget v4, v2, Landroid/support/v7/widget/at$a;->topMargin:I

    iget v6, v2, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v4, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-eqz v3, :cond_23

    move v3, v4

    :goto_15
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-eqz v11, :cond_24

    iget v3, v2, Landroid/support/v7/widget/at$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    const/4 v4, 0x1

    :goto_16
    if-eqz v26, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    iget v5, v2, Landroid/support/v7/widget/at$a;->gravity:I

    if-gez v5, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->mGravity:I

    :goto_17
    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, -0x2

    shr-int/lit8 v2, v2, 0x1

    aget v5, v24, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v24, v2

    aget v5, v25, v2

    sub-int v3, v6, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v25, v2

    :cond_1e
    move v2, v7

    move v3, v8

    move v5, v4

    move v6, v12

    :goto_18
    add-int/lit8 v7, v18, 0x1

    move/from16 v18, v7

    move v4, v2

    move v8, v3

    move v11, v5

    move v12, v6

    move v15, v14

    goto/16 :goto_10

    :cond_1f
    if-lez v3, :cond_20

    move-object v4, v5

    goto/16 :goto_11

    :cond_20
    const/4 v3, 0x0

    move-object v4, v5

    goto/16 :goto_11

    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget v6, v2, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    goto/16 :goto_13

    :cond_22
    const/4 v3, 0x0

    goto :goto_14

    :cond_23
    move v3, v6

    goto :goto_15

    :cond_24
    const/4 v4, 0x0

    goto :goto_16

    :cond_25
    iget v2, v2, Landroid/support/v7/widget/at$a;->gravity:I

    goto :goto_17

    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/at;->abQ:I

    const/4 v2, 0x1

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x0

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    :cond_27
    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v4, 0x1

    aget v4, v24, v4

    const/4 v5, 0x2

    aget v5, v24, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_28
    move v14, v11

    move v2, v12

    move/from16 v17, v13

    move v3, v15

    :goto_19
    if-nez v14, :cond_2d

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_2d

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int v3, v3, v17

    or-int v3, v3, v19

    shl-int/lit8 v4, v17, 0x10

    move/from16 v0, p2

    invoke-static {v2, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/at;->setMeasuredDimension(II)V

    if-eqz v10, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v2, 0x0

    move v9, v2

    :goto_1b
    move/from16 v0, v21

    if-ge v9, v0, :cond_2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_29

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/at$a;

    iget v2, v8, Landroid/support/v7/widget/at$a;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_29

    iget v10, v8, Landroid/support/v7/widget/at$a;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/at$a;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/at;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v8, Landroid/support/v7/widget/at$a;->width:I

    :cond_29
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1b

    :cond_2a
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-eqz v27, :cond_2e

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    move/from16 v0, v21

    if-ge v3, v0, :cond_2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_2b

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/at$a;

    iget v2, v2, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2b

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/view/View;->measure(II)V

    :cond_2b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1c

    :cond_2c
    return-void

    :cond_2d
    move v2, v3

    goto/16 :goto_1a

    :cond_2e
    move v2, v12

    move v3, v4

    goto/16 :goto_19

    :cond_2f
    move v7, v4

    goto/16 :goto_12

    :cond_30
    move v2, v4

    move v3, v8

    move v5, v11

    move v6, v12

    move v14, v15

    goto/16 :goto_18

    :cond_31
    move/from16 v4, v18

    goto/16 :goto_d

    :cond_32
    move v4, v10

    goto/16 :goto_5

    :cond_33
    move v7, v11

    goto/16 :goto_4

    :cond_34
    move v2, v11

    move v5, v12

    move v4, v10

    move v3, v14

    move v8, v15

    goto/16 :goto_9
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/at;->abZ:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/at;->abZ:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/at;->abX:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/at;->abZ:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/at;->abW:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/at;->abZ:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private f(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/support/v7/widget/at;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private static g(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private static getChildrenSkipCount$5359dca7()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getLocationOffset$3c7ec8d0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getNextLocationOffset$3c7ec8d0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final bx(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget v2, p0, Landroid/support/v7/widget/at;->abY:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/at;->abY:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/support/v7/widget/at;->abY:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected c(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/at$a;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/at$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/at$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/at$a;

    return v0
.end method

.method public d(Landroid/util/AttributeSet;)Landroid/support/v7/widget/at$a;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/at$a;

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/at$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected fN()Landroid/support/v7/widget/at$a;
    .locals 3

    const/4 v2, -0x2

    iget v0, p0, Landroid/support/v7/widget/at;->hE:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/at$a;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/at$a;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/at;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/at$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/at$a;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->fN()Landroid/support/v7/widget/at$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/at;->d(Landroid/util/AttributeSet;)Landroid/support/v7/widget/at$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/at;->c(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/at$a;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Landroid/support/v7/widget/at;->abO:I

    if-gez v1, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/at;->abO:I

    if-gt v1, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, p0, Landroid/support/v7/widget/at;->abO:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    if-ne v3, v0, :cond_3

    iget v1, p0, Landroid/support/v7/widget/at;->abO:I

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/at;->abP:I

    iget v1, p0, Landroid/support/v7/widget/at;->hE:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget v1, p0, Landroid/support/v7/widget/at;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$a;

    iget v0, v0, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/at;->abQ:I

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroid/support/v7/widget/at;->abQ:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->abO:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->abZ:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->abW:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->mGravity:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->hE:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->abY:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->abR:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/at;->hE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getVirtualChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$a;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/at$a;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroid/support/v7/widget/at;->abX:I

    sub-int/2addr v0, v3

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/at;->a(Landroid/graphics/Canvas;I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/at;->abX:I

    sub-int/2addr v0, v1

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/at;->a(Landroid/graphics/Canvas;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$a;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getVirtualChildCount()I

    move-result v2

    invoke-static {p0}, Landroid/support/v7/widget/bw;->bj(Landroid/view/View;)Z

    move-result v3

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$a;

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v0, v4

    :goto_4
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/at;->b(Landroid/graphics/Canvas;I)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/at$a;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroid/support/v7/widget/at;->abW:I

    sub-int/2addr v0, v4

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v0

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/at;->b(Landroid/graphics/Canvas;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/at;->abW:I

    sub-int/2addr v0, v1

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/at$a;

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/at$a;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/v7/widget/at;->abW:I

    sub-int/2addr v0, v1

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->hE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v8

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v4

    sub-int v9, v3, v4

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v4

    sub-int v10, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getVirtualChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->mGravity:I

    const v5, 0x800007

    and-int/2addr v5, v4

    sparse-switch v3, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v3

    :goto_0
    const/4 v7, 0x0

    move v6, v3

    :goto_1
    if-ge v7, v11, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_0

    add-int/lit8 v6, v6, 0x0

    move v3, v7

    :goto_2
    add-int/lit8 v7, v3, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v3

    add-int v3, v3, p5

    sub-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->abQ:I

    sub-int/2addr v3, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/at;->abQ:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_c

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/at$a;

    iget v4, v3, Landroid/support/v7/widget/at$a;->gravity:I

    if-gez v4, :cond_1

    move v4, v5

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v15

    invoke-static {v4, v15}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_1

    iget v4, v3, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v4, v8

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/at;->abX:I

    add-int/2addr v6, v15

    :cond_2
    iget v15, v3, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v6, v15

    add-int/lit8 v15, v6, 0x0

    invoke-static {v12, v4, v15, v13, v14}, Landroid/support/v7/widget/at;->g(Landroid/view/View;IIII)V

    iget v3, v3, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x0

    add-int/2addr v6, v3

    add-int/lit8 v3, v7, 0x0

    goto :goto_2

    :sswitch_2
    sub-int v4, v10, v13

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    iget v15, v3, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v4, v15

    iget v15, v3, Landroid/support/v7/widget/at$a;->rightMargin:I

    sub-int/2addr v4, v15

    goto :goto_3

    :sswitch_3
    sub-int v4, v9, v13

    iget v15, v3, Landroid/support/v7/widget/at$a;->rightMargin:I

    sub-int/2addr v4, v15

    goto :goto_3

    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/bw;->bj(Landroid/view/View;)Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v8

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v5

    sub-int v12, v3, v5

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v5

    sub-int v13, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getVirtualChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->mGravity:I

    const v5, 0x800007

    and-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->mGravity:I

    and-int/lit8 v11, v5, 0x70

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/v7/widget/at;->abN:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/at;->abT:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/at;->abU:[I

    move-object/from16 v17, v0

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Landroid/support/v4/view/e;->getAbsoluteGravity(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v9

    :goto_4
    const/4 v5, 0x0

    const/4 v3, 0x1

    if-eqz v4, :cond_b

    add-int/lit8 v5, v14, -0x1

    const/4 v3, -0x1

    move v4, v3

    :goto_5
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v14, :cond_7

    mul-int v3, v4, v10

    add-int v18, v5, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_4

    add-int/lit8 v9, v9, 0x0

    move v3, v10

    :goto_7
    add-int/lit8 v10, v3, 0x1

    goto :goto_6

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p4

    sub-int v3, v3, p2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abQ:I

    sub-int v9, v3, v5

    goto :goto_4

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v3

    sub-int v5, p4, p2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/at;->abQ:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v9, v3, v5

    goto :goto_4

    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_a

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    const/4 v6, -0x1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/at$a;

    if-eqz v15, :cond_5

    iget v7, v3, Landroid/support/v7/widget/at$a;->height:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBaseline()I

    move-result v6

    :cond_5
    iget v7, v3, Landroid/support/v7/widget/at$a;->gravity:I

    if-gez v7, :cond_6

    move v7, v11

    :cond_6
    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_3

    move v6, v8

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/at;->abW:I

    add-int/2addr v7, v9

    :goto_9
    iget v9, v3, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v7, v9

    add-int/lit8 v9, v7, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v9, v6, v1, v2}, Landroid/support/v7/widget/at;->g(Landroid/view/View;IIII)V

    iget v3, v3, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int v3, v3, v20

    add-int/lit8 v3, v3, 0x0

    add-int v9, v7, v3

    add-int/lit8 v3, v10, 0x0

    goto :goto_7

    :sswitch_6
    iget v7, v3, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v7, v8

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_9

    const/16 v22, 0x1

    aget v22, v16, v22

    sub-int v6, v22, v6

    add-int/2addr v6, v7

    goto :goto_8

    :sswitch_7
    sub-int v6, v13, v21

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    iget v7, v3, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/support/v7/widget/at$a;->bottomMargin:I

    sub-int/2addr v6, v7

    goto :goto_8

    :sswitch_8
    sub-int v7, v12, v21

    iget v0, v3, Landroid/support/v7/widget/at$a;->bottomMargin:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v6, v22, v6

    const/16 v22, 0x2

    aget v22, v17, v22

    sub-int v6, v22, v6

    sub-int v6, v7, v6

    goto :goto_8

    :cond_7
    return-void

    :cond_8
    move v7, v9

    goto :goto_9

    :cond_9
    move v6, v7

    goto :goto_8

    :cond_a
    move v3, v10

    goto/16 :goto_7

    :cond_b
    move v4, v3

    goto/16 :goto_5

    :cond_c
    move v3, v7

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x30 -> :sswitch_6
        0x50 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 26

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->hE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getVirtualChildCount()I

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/at;->abO:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/at;->abS:Z

    move/from16 v25, v0

    const/4 v11, 0x0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move/from16 v8, v19

    :goto_1
    add-int/lit8 v19, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abX:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/support/v7/widget/at$a;

    iget v3, v9, Landroid/support/v7/widget/at$a;->weight:F

    add-float v13, v7, v3

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    iget v3, v9, Landroid/support/v7/widget/at$a;->height:I

    if-nez v3, :cond_3

    iget v3, v9, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    iget v5, v9, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v5, v3

    iget v6, v9, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    const/4 v12, 0x1

    move v8, v11

    :goto_2
    if-ltz v24, :cond_2

    add-int/lit8 v3, v19, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abP:I

    :cond_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    iget v3, v9, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/high16 v3, -0x80000000

    iget v5, v9, Landroid/support/v7/widget/at$a;->height:I

    if-nez v5, :cond_4

    iget v5, v9, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    const/4 v3, 0x0

    const/4 v5, -0x2

    iput v5, v9, Landroid/support/v7/widget/at$a;->height:I

    :cond_4
    move/from16 v20, v3

    const/4 v6, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/at;->abQ:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/at;->f(Landroid/view/View;IIII)V

    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_5

    move/from16 v0, v20

    iput v0, v9, Landroid/support/v7/widget/at$a;->height:I

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int v6, v5, v3

    iget v7, v9, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v9, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/widget/at;->abQ:I

    if-eqz v25, :cond_25

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v8, v11

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_24

    iget v5, v9, Landroid/support/v7/widget/at$a;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    const/4 v5, 0x1

    const/4 v3, 0x1

    :goto_4
    iget v6, v9, Landroid/support/v7/widget/at$a;->leftMargin:I

    iget v7, v9, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v14, :cond_8

    iget v4, v9, Landroid/support/v7/widget/at$a;->width:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_8

    const/4 v4, 0x1

    :goto_5
    iget v9, v9, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    if-eqz v3, :cond_9

    move v3, v6

    :goto_6
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v3, v8

    move v6, v12

    move v7, v13

    move/from16 v17, v11

    :goto_7
    add-int/lit8 v8, v19, 0x0

    move v11, v3

    move v12, v6

    move v10, v5

    move v14, v4

    move v15, v9

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    move v3, v7

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    :goto_8
    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v3, v8

    move v6, v12

    move v7, v13

    move v9, v15

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_7

    :cond_b
    move v6, v7

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    if-lez v3, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->bx(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->abX:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    :cond_d
    if-eqz v25, :cond_11

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_e

    if-nez v23, :cond_11

    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move v3, v4

    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_10

    add-int/lit8 v3, v4, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/at$a;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/at;->abQ:I

    add-int v6, v5, v11

    iget v8, v3, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v6, v8

    iget v3, v3, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move v3, v4

    goto :goto_a

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v20

    const v3, 0xffffff

    and-int v3, v3, v20

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/at;->abQ:I

    sub-int v6, v3, v4

    if-nez v12, :cond_12

    if-eqz v6, :cond_1d

    const/4 v3, 0x0

    cmpl-float v3, v7, v3

    if-lez v3, :cond_1d

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abR:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/at;->abR:F

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    const/4 v3, 0x0

    move/from16 v19, v3

    move v5, v7

    move v12, v14

    move/from16 v13, v16

    move/from16 v11, v17

    move/from16 v15, v18

    :goto_b
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_23

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/at$a;

    iget v8, v3, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_22

    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-float v8, v5, v8

    sub-int v9, v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/at$a;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/at$a;->width:I

    move/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/support/v7/widget/at;->getChildMeasureSpec(III)I

    move-result v5

    iget v6, v3, Landroid/support/v7/widget/at$a;->height:I

    if-nez v6, :cond_14

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_16

    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    if-gez v4, :cond_15

    const/4 v4, 0x0

    :cond_15
    move-object v6, v7

    :goto_c
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    invoke-static {v11, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v4, v8

    move v6, v9

    move v11, v5

    :goto_d
    iget v5, v3, Landroid/support/v7/widget/at$a;->leftMargin:I

    iget v8, v3, Landroid/support/v7/widget/at$a;->rightMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v14, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v14, :cond_18

    iget v14, v3, Landroid/support/v7/widget/at$a;->width:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_18

    const/4 v14, 0x1

    :goto_e
    if-eqz v14, :cond_19

    :goto_f
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v12, :cond_1a

    iget v5, v3, Landroid/support/v7/widget/at$a;->width:I

    const/4 v12, -0x1

    if-ne v5, v12, :cond_1a

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v12

    iget v13, v3, Landroid/support/v7/widget/at$a;->topMargin:I

    add-int/2addr v7, v13

    iget v3, v3, Landroid/support/v7/widget/at$a;->bottomMargin:I

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move v3, v5

    move v7, v8

    :goto_11
    add-int/lit8 v8, v19, 0x1

    move/from16 v19, v8

    move v5, v4

    move v12, v3

    move v13, v7

    move v15, v9

    goto/16 :goto_b

    :cond_16
    if-lez v4, :cond_17

    move-object v6, v7

    goto :goto_c

    :cond_17
    const/4 v4, 0x0

    move-object v6, v7

    goto :goto_c

    :cond_18
    const/4 v14, 0x0

    goto :goto_e

    :cond_19
    move v5, v8

    goto :goto_f

    :cond_1a
    const/4 v5, 0x0

    goto :goto_10

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/at;->abQ:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/at;->abQ:I

    move v14, v12

    move v3, v13

    move/from16 v17, v11

    move v4, v15

    :goto_12
    if-nez v14, :cond_20

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_20

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/at;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/at;->setMeasuredDimension(II)V

    if-eqz v10, :cond_1c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/at;->Q(II)V

    :cond_1c
    :goto_14
    return-void

    :cond_1d
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-eqz v25, :cond_21

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_21

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    move/from16 v0, v21

    if-ge v4, v0, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/at$a;

    iget v3, v3, Landroid/support/v7/widget/at$a;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    :cond_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    :cond_1f
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/at;->R(II)V

    goto :goto_14

    :cond_20
    move v3, v4

    goto :goto_13

    :cond_21
    move v3, v13

    move/from16 v4, v18

    goto/16 :goto_12

    :cond_22
    move v4, v5

    goto/16 :goto_d

    :cond_23
    move v4, v5

    move v3, v12

    move v7, v13

    move v9, v15

    goto/16 :goto_11

    :cond_24
    move v5, v10

    goto/16 :goto_4

    :cond_25
    move v8, v11

    goto/16 :goto_2

    :cond_26
    move v3, v11

    move v6, v12

    move v5, v10

    move v4, v14

    move v9, v15

    goto/16 :goto_7
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/at;->abN:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "base aligned child index out of range (0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/at;->abO:I

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/at;->abV:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/at;->abW:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/at;->abX:I

    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/at;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->requestLayout()V

    goto :goto_0

    :cond_2
    iput v0, p0, Landroid/support/v7/widget/at;->abW:I

    iput v0, p0, Landroid/support/v7/widget/at;->abX:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/at;->abZ:I

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/at;->mGravity:I

    if-eq v0, p1, :cond_1

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    const v0, 0x800003

    or-int/2addr v0, p1

    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x30

    :cond_0
    iput v0, p0, Landroid/support/v7/widget/at;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    const v2, 0x800007

    and-int v0, p1, v2

    iget v1, p0, Landroid/support/v7/widget/at;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/at;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/at;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/at;->abS:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->hE:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/at;->hE:I

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/at;->abY:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->requestLayout()V

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/at;->abY:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/support/v7/widget/at;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/at;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/at;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/at;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/at;->abR:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
