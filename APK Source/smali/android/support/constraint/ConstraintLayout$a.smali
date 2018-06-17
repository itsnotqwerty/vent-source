.class public Landroid/support/constraint/ConstraintLayout$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$a$a;
    }
.end annotation


# instance fields
.field public bM:I

.field public bN:I

.field public bO:F

.field public bP:I

.field public bQ:I

.field public bR:I

.field public bS:I

.field public bT:I

.field public bU:I

.field public bV:I

.field public bW:I

.field public bX:I

.field public bY:I

.field public bZ:I

.field public cA:I

.field public cB:I

.field public cC:Z

.field public cD:Z

.field cE:Z

.field cF:Z

.field cG:Z

.field cH:Z

.field cI:Z

.field cJ:Z

.field cK:I

.field cL:I

.field cM:I

.field cN:I

.field cO:I

.field cP:I

.field cQ:F

.field cR:I

.field cS:I

.field cT:F

.field cU:Landroid/support/constraint/a/a/d;

.field public cV:Z

.field public ca:F

.field public cb:I

.field public cc:I

.field public cd:I

.field public ce:I

.field public cf:I

.field public cg:I

.field public ch:I

.field public ci:I

.field public cj:I

.field public ck:I

.field public cl:F

.field public cm:F

.field public cn:Ljava/lang/String;

.field co:F

.field cp:I

.field public cq:I

.field public cr:I

.field public cs:I

.field public ct:I

.field public cu:I

.field public cv:I

.field public cw:I

.field public cx:I

.field public cy:F

.field public cz:F

.field public horizontalWeight:F

.field public orientation:I

.field public verticalWeight:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    iput-boolean v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iput-boolean v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cQ:F

    new-instance v0, Landroid/support/constraint/a/a/d;

    invoke-direct {v0}, Landroid/support/constraint/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$a;->cV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F

    iput v11, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    iput v9, p0, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    iput-boolean v11, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iput-boolean v11, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cQ:F

    new-instance v0, Landroid/support/constraint/a/a/d;

    invoke-direct {v0}, Landroid/support/constraint/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cV:Z

    sget-object v0, Landroid/support/constraint/g$b;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_6

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget-object v5, Landroid/support/constraint/ConstraintLayout$a$a;->cW:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_1
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    goto :goto_1

    :pswitch_2
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    goto :goto_1

    :pswitch_3
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    goto :goto_1

    :pswitch_4
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    goto :goto_1

    :pswitch_5
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    goto :goto_1

    :pswitch_6
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    goto :goto_1

    :pswitch_7
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    goto/16 :goto_1

    :pswitch_8
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    goto/16 :goto_1

    :pswitch_9
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    goto/16 :goto_1

    :pswitch_a
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    goto/16 :goto_1

    :pswitch_b
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    goto/16 :goto_1

    :pswitch_c
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v0, v5

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    sub-float/2addr v0, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v0, v5

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    goto/16 :goto_1

    :pswitch_d
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    goto/16 :goto_1

    :pswitch_e
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    goto/16 :goto_1

    :pswitch_f
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    goto/16 :goto_1

    :pswitch_10
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    goto/16 :goto_1

    :pswitch_11
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    goto/16 :goto_1

    :pswitch_12
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    goto/16 :goto_1

    :pswitch_13
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    goto/16 :goto_1

    :pswitch_14
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    goto/16 :goto_1

    :pswitch_15
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    goto/16 :goto_1

    :pswitch_16
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    goto/16 :goto_1

    :pswitch_17
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    goto/16 :goto_1

    :pswitch_18
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    goto/16 :goto_1

    :pswitch_19
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    goto/16 :goto_1

    :pswitch_1a
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    goto/16 :goto_1

    :pswitch_1b
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    goto/16 :goto_1

    :pswitch_1c
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    goto/16 :goto_1

    :pswitch_1d
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    goto/16 :goto_1

    :pswitch_1e
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F

    iput v8, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    add-int/lit8 v5, v5, -0x1

    if-ge v6, v5, :cond_5

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v6, v0, v9

    if-lez v6, :cond_0

    cmpl-float v6, v5, v9

    if-lez v6, :cond_0

    iget v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    if-ne v6, v11, :cond_4

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v11, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    div-float/2addr v0, v5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {v3, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {v3, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    goto/16 :goto_1

    :pswitch_24
    iget-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    goto/16 :goto_1

    :pswitch_25
    iget-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    goto/16 :goto_1

    :pswitch_26
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    if-ne v0, v11, :cond_0

    const-string v0, "ConstraintLayout"

    const-string v5, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    if-ne v0, v11, :cond_0

    const-string v0, "ConstraintLayout"

    const-string v5, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_28
    :try_start_3
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v10, :cond_0

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    goto/16 :goto_1

    :pswitch_29
    :try_start_4
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v10, :cond_0

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    goto/16 :goto_1

    :pswitch_2a
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    goto/16 :goto_1

    :pswitch_2b
    :try_start_5
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v10, :cond_0

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    goto/16 :goto_1

    :pswitch_2c
    :try_start_6
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v10, :cond_0

    iput v10, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    goto/16 :goto_1

    :pswitch_2d
    iget v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$a;->ak()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_12
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_24
        :pswitch_25
        :pswitch_1d
        :pswitch_1e
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->co:F

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cp:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->cQ:F

    new-instance v0, Landroid/support/constraint/a/a/d;

    invoke-direct {v0}, Landroid/support/constraint/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cV:Z

    return-void
.end method


# virtual methods
.method public final ak()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    :cond_1
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-ne v0, v4, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    if-ne v0, v2, :cond_3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cC:Z

    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v0, v4, :cond_5

    :cond_4
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    if-ne v0, v2, :cond_5

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cD:Z

    :cond_5
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    if-eq v0, v4, :cond_8

    :cond_6
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    instance-of v0, v0, Landroid/support/constraint/a/a/f;

    if-nez v0, :cond_7

    new-instance v0, Landroid/support/constraint/a/a/f;

    invoke-direct {v0}, Landroid/support/constraint/a/a/f;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    check-cast v0, Landroid/support/constraint/a/a/f;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/f;->setOrientation(I)V

    :cond_8
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v5, -0x1

    iget v3, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iget v4, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cQ:F

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cR:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cS:I

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cT:F

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$a;->getLayoutDirection()I

    move-result v2

    if-ne v1, v2, :cond_9

    move v2, v1

    :goto_0
    if-eqz v2, :cond_d

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    if-eq v2, v5, :cond_a

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    move v0, v1

    :cond_0
    :goto_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    if-eq v2, v5, :cond_1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    move v0, v1

    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    if-eq v2, v5, :cond_2

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    move v0, v1

    :cond_2
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    :cond_4
    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    sub-float v0, v7, v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cQ:F

    :cond_5
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    sub-float v0, v7, v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cT:F

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cR:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cS:I

    :cond_6
    :goto_2
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    if-ne v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    if-eq v0, v5, :cond_13

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    if-gtz v0, :cond_7

    if-lez v4, :cond_7

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    :cond_7
    :goto_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    if-eq v0, v5, :cond_14

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    if-gtz v0, :cond_8

    if-lez v3, :cond_8

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    :cond_8
    :goto_4
    return-void

    :cond_9
    move v2, v0

    goto :goto_0

    :cond_a
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    if-eq v2, v5, :cond_0

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    move v0, v1

    goto :goto_1

    :cond_b
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    if-eq v0, v5, :cond_c

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cS:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cR:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cT:F

    goto :goto_2

    :cond_c
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cR:I

    iput v5, p0, Landroid/support/constraint/ConstraintLayout$a;->cS:I

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$a;->cT:F

    goto :goto_2

    :cond_d
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    if-eq v0, v5, :cond_e

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    :cond_e
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    if-eq v0, v5, :cond_f

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    :cond_f
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    if-eq v0, v5, :cond_10

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    :cond_10
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    if-eq v0, v5, :cond_11

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    :cond_11
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    if-eq v0, v5, :cond_12

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cj:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    :cond_12
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->ck:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    if-eq v0, v5, :cond_7

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    if-gtz v0, :cond_7

    if-lez v4, :cond_7

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    goto :goto_3

    :cond_14
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    if-gtz v0, :cond_8

    if-lez v3, :cond_8

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    goto :goto_4
.end method
