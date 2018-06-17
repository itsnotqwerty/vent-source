.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$a;
    }
.end annotation


# instance fields
.field private bA:Z

.field private bB:I

.field private bC:Landroid/support/constraint/c;

.field private bD:I

.field bE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bF:I

.field private bG:I

.field bH:I

.field bI:I

.field bJ:I

.field bK:I

.field private bL:Landroid/support/constraint/a/f;

.field bs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private bt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/b;",
            ">;"
        }
    .end annotation
.end field

.field private final bu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field bv:Landroid/support/constraint/a/a/e;

.field private bw:I

.field private bx:I

.field private by:I

.field private bz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/e;

    invoke-direct {v0}, Landroid/support/constraint/a/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bB:I

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bD:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bE:Ljava/util/HashMap;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bF:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bG:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bH:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bI:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bJ:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bK:I

    invoke-direct {p0, v5}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/e;

    invoke-direct {v0}, Landroid/support/constraint/a/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bB:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bD:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bE:Ljava/util/HashMap;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bF:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bG:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bH:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bI:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bJ:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bK:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/e;

    invoke-direct {v0}, Landroid/support/constraint/a/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bB:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bD:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bE:Ljava/util/HashMap;

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bF:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bG:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bH:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bI:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bJ:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->bK:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iput-object p0, v0, Landroid/support/constraint/a/a/d;->gQ:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v13, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/g$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_8

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v5, Landroid/support/constraint/g$b;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget v5, Landroid/support/constraint/g$b;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v0, v5, :cond_2

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    goto :goto_1

    :cond_2
    sget v5, Landroid/support/constraint/g$b;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v0, v5, :cond_3

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    goto :goto_1

    :cond_3
    sget v5, Landroid/support/constraint/g$b;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v0, v5, :cond_4

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    goto :goto_1

    :cond_4
    sget v5, Landroid/support/constraint/g$b;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v0, v5, :cond_5

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->bB:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->bB:I

    goto :goto_1

    :cond_5
    sget v5, Landroid/support/constraint/g$b;->ConstraintLayout_Layout_constraintSet:I

    if-ne v0, v5, :cond_0

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    :try_start_0
    new-instance v0, Landroid/support/constraint/c;

    invoke-direct {v0}, Landroid/support/constraint/c;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    :try_start_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_2
    if-eq v0, v12, :cond_6

    packed-switch v0, :pswitch_data_0

    :goto_3
    :pswitch_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2

    :pswitch_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_4
    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->bD:I

    goto :goto_1

    :pswitch_2
    :try_start_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    new-instance v10, Landroid/support/constraint/c$a;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/support/constraint/c$a;-><init>(B)V

    sget-object v11, Landroid/support/constraint/g$b;->ConstraintSet:[I

    invoke-virtual {v7, v9, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/support/constraint/c;->a(Landroid/support/constraint/c$a;Landroid/content/res/TypedArray;)V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    const-string v9, "Guideline"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/support/constraint/c$a;->da:Z

    :cond_7
    iget-object v0, v6, Landroid/support/constraint/c;->cY:Ljava/util/HashMap;

    iget v9, v10, Landroid/support/constraint/c$a;->dd:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    iput-object v13, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout;->bB:I

    iput v1, v0, Landroid/support/constraint/a/a/e;->bB:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private ai()V
    .locals 6

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->aQ()V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->eu:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eu:J

    :cond_0
    return-void
.end method

.method protected static aj()Landroid/support/constraint/ConstraintLayout$a;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintLayout$a;-><init>()V

    return-object v0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bE:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bE:Ljava/util/HashMap;

    :cond_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->bE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final d(I)Landroid/support/constraint/a/a/d;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/support/constraint/a/a/d;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$a;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v0

    int-to-float v9, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v1, v1

    const/high16 v4, 0x44870000    # 1080.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v8

    float-to-int v10, v1

    int-to-float v1, v2

    const/high16 v2, 0x44f00000    # 1920.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v9

    float-to-int v11, v1

    int-to-float v1, v3

    const/high16 v2, 0x44870000    # 1080.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v8

    float-to-int v12, v1

    int-to-float v0, v0

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v9

    float-to-int v13, v0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v10

    int-to-float v2, v11

    add-int v0, v10, v12

    int-to-float v3, v0

    int-to-float v4, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v10, v12

    int-to-float v1, v0

    int-to-float v2, v11

    add-int v0, v10, v12

    int-to-float v3, v0

    add-int v0, v11, v13

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v10, v12

    int-to-float v1, v0

    add-int v0, v11, v13

    int-to-float v2, v0

    int-to-float v3, v10

    add-int v0, v11, v13

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    add-int v0, v11, v13

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v0, -0xff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v10

    int-to-float v2, v11

    add-int v0, v10, v12

    int-to-float v3, v0

    add-int v0, v11, v13

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    add-int v0, v11, v13

    int-to-float v2, v0

    add-int v0, v10, v12

    int-to-float v3, v0

    int-to-float v4, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintLayout$a;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iget v0, v0, Landroid/support/constraint/a/a/e;->bB:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    iget-boolean v7, v1, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-nez v7, :cond_0

    iget-boolean v7, v1, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    if-nez v7, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v1, v1, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    if-nez v1, :cond_1

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->aE()I

    move-result v1

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->aF()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    instance-of v9, v0, Landroid/support/constraint/f;

    if-eqz v9, :cond_1

    check-cast v0, Landroid/support/constraint/f;

    invoke-virtual {v0}, Landroid/support/constraint/f;->getContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->bJ:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/ConstraintLayout;->bK:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->bH:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/constraint/ConstraintLayout;->bI:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/e;->setX(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/e;->setY(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->by:I

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gm:[I

    const/4 v4, 0x0

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->bz:I

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->gm:[I

    const/4 v4, 0x1

    aput v3, v2, v4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Landroid/support/constraint/a/a/e;->hm:Z

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int v10, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int v11, v3, v4

    sget v7, Landroid/support/constraint/a/a/d$a;->hh:I

    sget v4, Landroid/support/constraint/a/a/d$a;->hh:I

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    sparse-switch v8, :sswitch_data_0

    move v5, v6

    :goto_1
    sparse-switch v9, :sswitch_data_1

    move v2, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/constraint/a/a/e;->setMinWidth(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/constraint/a/a/e;->setMinHeight(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3, v7}, Landroid/support/constraint/a/a/e;->j(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3, v5}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/e;->k(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3, v2}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->bw:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/e;->setMinWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->bx:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/e;->setMinHeight(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v21

    if-eqz v16, :cond_5

    const/4 v2, 0x0

    :goto_4
    move/from16 v0, v21

    if-ge v2, v0, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Landroid/support/constraint/ConstraintLayout;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    iput-object v3, v4, Landroid/support/constraint/a/a/d;->gT:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_0
    sget v6, Landroid/support/constraint/a/a/d$a;->hi:I

    move v7, v6

    goto/16 :goto_1

    :sswitch_1
    sget v7, Landroid/support/constraint/a/a/d$a;->hi:I

    move v5, v6

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->by:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v11

    goto/16 :goto_1

    :sswitch_3
    sget v3, Landroid/support/constraint/a/a/d$a;->hi:I

    move v4, v3

    goto/16 :goto_2

    :sswitch_4
    sget v4, Landroid/support/constraint/a/a/d$a;->hi:I

    move v2, v3

    goto/16 :goto_2

    :sswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->bz:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v10

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v2, v0, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/d;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/support/constraint/a/a/d;->reset()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/ConstraintLayout;->bD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    move/from16 v0, v21

    if-ge v3, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->bD:I

    if-ne v4, v5, :cond_8

    instance-of v4, v2, Landroid/support/constraint/d;

    if-eqz v4, :cond_8

    check-cast v2, Landroid/support/constraint/d;

    invoke-virtual {v2}, Landroid/support/constraint/d;->getConstraintSet()Landroid/support/constraint/c;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/constraint/c;->b(Landroid/support/constraint/ConstraintLayout;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->aX()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/b;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/constraint/b;->a(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    move v4, v2

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/support/constraint/f;

    if-eqz v3, :cond_d

    check-cast v2, Landroid/support/constraint/f;

    iget v3, v2, Landroid/support/constraint/f;->dF:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_c

    invoke-virtual {v2}, Landroid/support/constraint/f;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_c

    iget v3, v2, Landroid/support/constraint/f;->dH:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/f;->setVisibility(I)V

    :cond_c
    iget v3, v2, Landroid/support/constraint/f;->dF:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/f;->dG:Landroid/view/View;

    iget-object v3, v2, Landroid/support/constraint/f;->dG:Landroid/view/View;

    if-eqz v3, :cond_d

    iget-object v3, v2, Landroid/support/constraint/f;->dG:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$a;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    iget-object v3, v2, Landroid/support/constraint/f;->dG:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/f;->setVisibility(I)V

    :cond_d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    move v15, v2

    :goto_a
    move/from16 v0, v21

    if-ge v15, v0, :cond_31

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/d;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {v10}, Landroid/support/constraint/ConstraintLayout$a;->ak()V

    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cV:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    iput-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cV:Z

    :cond_f
    :goto_b
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v2, Landroid/support/constraint/a/a/d;->gS:I

    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    if-eqz v3, :cond_10

    const/16 v3, 0x8

    iput v3, v2, Landroid/support/constraint/a/a/d;->gS:I

    :cond_10
    iput-object v4, v2, Landroid/support/constraint/a/a/d;->gQ:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3, v2}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d;)V

    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    if-nez v3, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-eqz v3, :cond_18

    check-cast v2, Landroid/support/constraint/a/a/f;

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->cR:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->cS:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cT:F

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ge v6, v7, :cond_13

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->bM:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->bN:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bO:F

    :cond_13
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_16

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/f;->a(F)V

    :cond_14
    :goto_c
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_a

    :cond_15
    if-eqz v16, :cond_f

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Landroid/support/constraint/ConstraintLayout;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "id/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v5

    iput-object v3, v5, Landroid/support/constraint/a/a/d;->gT:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v3

    goto :goto_b

    :cond_16
    const/4 v3, -0x1

    if-eq v5, v3, :cond_17

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/f;->m(I)V

    goto :goto_c

    :cond_17
    const/4 v3, -0x1

    if-eq v4, v3, :cond_14

    invoke-virtual {v2, v4}, Landroid/support/constraint/a/a/f;->n(I)V

    goto :goto_c

    :cond_18
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    :cond_19
    iget v14, v10, Landroid/support/constraint/ConstraintLayout$a;->cK:I

    iget v13, v10, Landroid/support/constraint/ConstraintLayout$a;->cL:I

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->cM:I

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->cN:I

    iget v7, v10, Landroid/support/constraint/ConstraintLayout$a;->cO:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->cP:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cQ:F

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-ge v8, v9, :cond_87

    iget v14, v10, Landroid/support/constraint/ConstraintLayout$a;->bP:I

    iget v13, v10, Landroid/support/constraint/ConstraintLayout$a;->bQ:I

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->bR:I

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->bS:I

    iget v7, v10, Landroid/support/constraint/ConstraintLayout$a;->cf:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->ch:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cl:F

    const/4 v8, -0x1

    if-ne v14, v8, :cond_1a

    const/4 v8, -0x1

    if-ne v13, v8, :cond_1a

    iget v8, v10, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_20

    iget v14, v10, Landroid/support/constraint/ConstraintLayout$a;->cc:I

    :cond_1a
    :goto_d
    const/4 v8, -0x1

    if-ne v6, v8, :cond_87

    const/4 v8, -0x1

    if-ne v5, v8, :cond_87

    iget v8, v10, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_21

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->cd:I

    move v11, v3

    move v8, v4

    move v9, v5

    move v12, v6

    :goto_e
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_22

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget v8, v10, Landroid/support/constraint/ConstraintLayout$a;->ca:F

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->bZ:I

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fS:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fS:Landroid/support/constraint/a/a/c$c;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    iput v8, v2, Landroid/support/constraint/a/a/d;->gn:F

    :cond_1b
    :goto_f
    if-eqz v16, :cond_1d

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    :cond_1c
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cA:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->cB:I

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/a/a/d;->a(II)V

    :cond_1d
    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    if-nez v3, :cond_2e

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2d

    sget v3, Landroid/support/constraint/a/a/d$a;->hk:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->j(I)V

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iput v4, v3, Landroid/support/constraint/a/a/c;->fy:I

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iput v4, v3, Landroid/support/constraint/a/a/c;->fy:I

    :goto_10
    iget-boolean v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    if-nez v3, :cond_30

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f

    sget v3, Landroid/support/constraint/a/a/d$a;->hk:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->k(I)V

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iput v4, v3, Landroid/support/constraint/a/a/c;->fy:I

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iput v4, v3, Landroid/support/constraint/a/a/c;->fy:I

    :goto_11
    iget-object v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->q(Ljava/lang/String;)V

    :cond_1e
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->horizontalWeight:F

    iget-object v4, v2, Landroid/support/constraint/a/a/d;->hb:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->verticalWeight:F

    iget-object v4, v2, Landroid/support/constraint/a/a/d;->hb:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cq:I

    iput v3, v2, Landroid/support/constraint/a/a/d;->gX:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cr:I

    iput v3, v2, Landroid/support/constraint/a/a/d;->gY:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->cu:I

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->cw:I

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->cy:F

    iput v3, v2, Landroid/support/constraint/a/a/d;->ga:I

    iput v4, v2, Landroid/support/constraint/a/a/d;->gc:I

    iput v5, v2, Landroid/support/constraint/a/a/d;->gd:I

    iput v6, v2, Landroid/support/constraint/a/a/d;->ge:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v6, v3

    if-gez v3, :cond_1f

    iget v3, v2, Landroid/support/constraint/a/a/d;->ga:I

    if-nez v3, :cond_1f

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/constraint/a/a/d;->ga:I

    :cond_1f
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->cv:I

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->cx:I

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->cz:F

    iput v3, v2, Landroid/support/constraint/a/a/d;->gb:I

    iput v4, v2, Landroid/support/constraint/a/a/d;->gf:I

    iput v5, v2, Landroid/support/constraint/a/a/d;->gg:I

    iput v6, v2, Landroid/support/constraint/a/a/d;->gh:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v6, v3

    if-gez v3, :cond_14

    iget v3, v2, Landroid/support/constraint/a/a/d;->gb:I

    if-nez v3, :cond_14

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/constraint/a/a/d;->gb:I

    goto/16 :goto_c

    :cond_20
    iget v8, v10, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1a

    iget v13, v10, Landroid/support/constraint/ConstraintLayout$a;->cb:I

    goto/16 :goto_d

    :cond_21
    iget v8, v10, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_87

    iget v5, v10, Landroid/support/constraint/ConstraintLayout$a;->ce:I

    move v11, v3

    move v8, v4

    move v9, v5

    move v12, v6

    goto/16 :goto_e

    :cond_22
    const/4 v3, -0x1

    if-eq v14, v3, :cond_29

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_23

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    :cond_23
    :goto_12
    const/4 v3, -0x1

    if-eq v12, v3, :cond_2a

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_24

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    :cond_24
    :goto_13
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_25

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v7, v10, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    :cond_25
    :goto_14
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bV:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_26

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v7, v10, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    :cond_26
    :goto_15
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$a;->bX:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_27

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/support/constraint/ConstraintLayout$a;

    if-eqz v5, :cond_27

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$a;

    const/4 v5, 0x1

    iput-boolean v5, v10, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fR:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fR:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget v7, Landroid/support/constraint/a/a/c$b;->fJ:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;IIIIZ)Z

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/c;->reset()V

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/a/a/c;->reset()V

    :cond_27
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-ltz v3, :cond_28

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_28

    iput v11, v2, Landroid/support/constraint/a/a/d;->gO:F

    :cond_28
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1b

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1b

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->cm:F

    iput v3, v2, Landroid/support/constraint/a/a/d;->gP:F

    goto/16 :goto_f

    :cond_29
    const/4 v3, -0x1

    if-eq v13, v3, :cond_23

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_23

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    goto/16 :goto_12

    :cond_2a
    const/4 v3, -0x1

    if-eq v9, v3, :cond_24

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_24

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    goto/16 :goto_13

    :cond_2b
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bU:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_25

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v7, v10, Landroid/support/constraint/ConstraintLayout$a;->cg:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    goto/16 :goto_14

    :cond_2c
    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->bW:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->d(I)Landroid/support/constraint/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_26

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v7, v10, Landroid/support/constraint/ConstraintLayout$a;->ci:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V

    goto/16 :goto_15

    :cond_2d
    sget v3, Landroid/support/constraint/a/a/d$a;->hj:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->j(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    goto/16 :goto_10

    :cond_2e
    sget v3, Landroid/support/constraint/a/a/d$a;->hh:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->j(I)V

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->width:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    goto/16 :goto_10

    :cond_2f
    sget v3, Landroid/support/constraint/a/a/d$a;->hj:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->k(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    goto/16 :goto_11

    :cond_30
    sget v3, Landroid/support/constraint/a/a/d$a;->hh:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->k(I)V

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$a;->height:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    goto/16 :goto_11

    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/ConstraintLayout;->bB:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_34

    const/4 v2, 0x1

    move/from16 v16, v2

    :goto_16
    if-eqz v16, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->aS()V

    iget v3, v2, Landroid/support/constraint/a/a/e;->bB:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/e;->i(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/support/constraint/a/a/e;->e(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int v21, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v3

    add-int v22, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v23

    const/4 v2, 0x0

    move v6, v2

    :goto_17
    move/from16 v0, v23

    if-ge v6, v0, :cond_3e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_33

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v8, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-nez v3, :cond_33

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    if-nez v3, :cond_33

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v8, Landroid/support/constraint/a/a/d;->gS:I

    iget v5, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v9, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v5, :cond_32

    if-nez v9, :cond_35

    :cond_32
    invoke-virtual {v8}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/k;->invalidate()V

    invoke-virtual {v8}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/k;->invalidate()V

    :cond_33
    :goto_18
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_17

    :cond_34
    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_16

    :cond_35
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, -0x2

    if-ne v5, v10, :cond_36

    const/4 v3, 0x1

    :cond_36
    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    const/4 v11, -0x2

    if-ne v9, v11, :cond_37

    const/4 v4, 0x1

    :cond_37
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    if-eqz v10, :cond_38

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    iget-wide v12, v10, Landroid/support/constraint/a/f;->es:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v10, Landroid/support/constraint/a/f;->es:J

    :cond_38
    const/4 v10, -0x2

    if-ne v5, v10, :cond_3c

    const/4 v5, 0x1

    :goto_19
    iput-boolean v5, v8, Landroid/support/constraint/a/a/d;->gi:Z

    const/4 v5, -0x2

    if-ne v9, v5, :cond_3d

    const/4 v5, 0x1

    :goto_1a
    iput-boolean v5, v8, Landroid/support/constraint/a/a/d;->gj:Z

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v5}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    invoke-virtual {v8, v9}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    if-eqz v3, :cond_39

    iput v5, v8, Landroid/support/constraint/a/a/d;->gL:I

    :cond_39
    if-eqz v4, :cond_3a

    iput v9, v8, Landroid/support/constraint/a/a/d;->gM:I

    :cond_3a
    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    if-eqz v3, :cond_3b

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    iput v3, v8, Landroid/support/constraint/a/a/d;->gK:I

    :cond_3b
    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    if-eqz v3, :cond_33

    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    if-eqz v2, :cond_33

    invoke-virtual {v8}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/k;->p(I)V

    invoke-virtual {v8}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/k;->p(I)V

    goto :goto_18

    :cond_3c
    const/4 v5, 0x0

    goto :goto_19

    :cond_3d
    const/4 v5, 0x0

    goto :goto_1a

    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->aR()V

    const/4 v2, 0x0

    move v15, v2

    :goto_1b
    move/from16 v0, v23

    if-ge v15, v0, :cond_64

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_46

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    move-object/from16 v25, v0

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-nez v3, :cond_46

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    if-nez v3, :cond_46

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/support/constraint/a/a/d;->gS:I

    iget v6, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v8, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v6, :cond_3f

    if-nez v8, :cond_46

    :cond_3f
    sget-object v3, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget-object v10, v3, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget-object v11, v3, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v3, :cond_47

    sget-object v3, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v3

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v3, :cond_47

    const/4 v3, 0x1

    :goto_1c
    sget-object v4, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v26, v0

    sget-object v4, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v27, v0

    sget-object v4, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_48

    sget-object v4, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    move v14, v4

    :goto_1d
    if-nez v6, :cond_40

    if-nez v8, :cond_40

    if-eqz v3, :cond_40

    if-nez v14, :cond_46

    :cond_40
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->aM()I

    move-result v4

    sget v9, Landroid/support/constraint/a/a/d$a;->hi:I

    if-eq v4, v9, :cond_49

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v9}, Landroid/support/constraint/a/a/e;->aN()I

    move-result v9

    sget v12, Landroid/support/constraint/a/a/d$a;->hi:I

    if-eq v9, v12, :cond_4a

    const/4 v9, 0x1

    :goto_1f
    if-nez v4, :cond_41

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/a/a/k;->invalidate()V

    :cond_41
    if-nez v9, :cond_42

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/a/a/k;->invalidate()V

    :cond_42
    if-nez v6, :cond_4c

    if-eqz v4, :cond_4b

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->az()Z

    move-result v12

    if-eqz v12, :cond_4b

    if-eqz v3, :cond_4b

    invoke-virtual {v10}, Landroid/support/constraint/a/a/j;->aV()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v11}, Landroid/support/constraint/a/a/j;->aV()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget v3, v11, Landroid/support/constraint/a/a/j;->hQ:F

    iget v6, v10, Landroid/support/constraint/a/a/j;->hQ:F

    sub-float/2addr v3, v6

    float-to-int v6, v3

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/constraint/a/a/k;->p(I)V

    move v3, v5

    :goto_20
    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v10, v4

    move v11, v3

    move v12, v6

    move v13, v5

    :goto_21
    if-nez v8, :cond_4f

    if-eqz v9, :cond_4e

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aA()Z

    move-result v3

    if-eqz v3, :cond_4e

    if-eqz v14, :cond_4e

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/a/a/j;->aV()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/a/a/j;->aV()Z

    move-result v3

    if-eqz v3, :cond_4e

    move-object/from16 v0, v27

    iget v3, v0, Landroid/support/constraint/a/a/j;->hQ:F

    move-object/from16 v0, v26

    iget v4, v0, Landroid/support/constraint/a/a/j;->hQ:F

    sub-float/2addr v3, v4

    float-to-int v4, v3

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/k;->p(I)V

    move v3, v7

    :goto_22
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    move v5, v9

    move v7, v3

    move v8, v4

    :goto_23
    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v6}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    iget-wide v0, v3, Landroid/support/constraint/a/f;->es:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v3, Landroid/support/constraint/a/f;->es:J

    :cond_43
    const/4 v3, -0x2

    if-ne v12, v3, :cond_51

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, v25

    iput-boolean v3, v0, Landroid/support/constraint/a/a/d;->gi:Z

    const/4 v3, -0x2

    if-ne v8, v3, :cond_52

    const/4 v3, 0x1

    :goto_25
    move-object/from16 v0, v25

    iput-boolean v3, v0, Landroid/support/constraint/a/a/d;->gj:Z

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    if-eqz v11, :cond_44

    move-object/from16 v0, v25

    iput v3, v0, Landroid/support/constraint/a/a/d;->gL:I

    :cond_44
    if-eqz v7, :cond_45

    move-object/from16 v0, v25

    iput v4, v0, Landroid/support/constraint/a/a/d;->gM:I

    :cond_45
    if-eqz v10, :cond_53

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/constraint/a/a/k;->p(I)V

    :goto_26
    if-eqz v5, :cond_54

    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/a/k;->p(I)V

    :goto_27
    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    if-eqz v2, :cond_46

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_46

    move-object/from16 v0, v25

    iput v2, v0, Landroid/support/constraint/a/a/d;->gK:I

    :cond_46
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_1b

    :cond_47
    const/4 v3, 0x0

    goto/16 :goto_1c

    :cond_48
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_1d

    :cond_49
    const/4 v4, 0x0

    goto/16 :goto_1e

    :cond_4a
    const/4 v9, 0x0

    goto/16 :goto_1f

    :cond_4b
    const/4 v3, -0x2

    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v3

    goto/16 :goto_21

    :cond_4c
    const/4 v3, -0x1

    if-ne v6, v3, :cond_4d

    const/4 v3, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v3

    goto/16 :goto_21

    :cond_4d
    const/4 v3, -0x2

    if-ne v6, v3, :cond_86

    const/4 v3, 0x1

    goto/16 :goto_20

    :cond_4e
    const/4 v3, -0x2

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    const/4 v7, 0x1

    const/4 v3, 0x0

    move v5, v3

    move v6, v4

    goto/16 :goto_23

    :cond_4f
    const/4 v3, -0x1

    if-ne v8, v3, :cond_50

    const/4 v3, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v5, v9

    move v6, v3

    goto/16 :goto_23

    :cond_50
    const/4 v3, -0x2

    if-ne v8, v3, :cond_85

    const/4 v3, 0x1

    move v4, v8

    goto/16 :goto_22

    :cond_51
    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_52
    const/4 v3, 0x0

    goto/16 :goto_25

    :cond_53
    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v3

    const/4 v6, 0x2

    iput v6, v3, Landroid/support/constraint/a/a/k;->state:I

    goto/16 :goto_26

    :cond_54
    invoke-virtual/range {v25 .. v25}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v3

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/constraint/a/a/k;->state:I

    goto/16 :goto_27

    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int v12, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v3

    add-int v13, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v14

    const/4 v2, 0x0

    move v10, v2

    :goto_28
    if-ge v10, v14, :cond_64

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5b

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v0, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    move-object/from16 v21, v0

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-nez v3, :cond_5b

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    if-nez v3, :cond_5b

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v0, v21

    iput v3, v0, Landroid/support/constraint/a/a/d;->gS:I

    iget v8, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    iget v7, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    if-nez v3, :cond_57

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    if-nez v3, :cond_57

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    if-nez v3, :cond_56

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cs:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_57

    :cond_56
    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_57

    iget-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    if-nez v3, :cond_5c

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->ct:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_57

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5c

    :cond_57
    const/4 v3, 0x1

    move v5, v3

    :goto_29
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v5, :cond_84

    if-nez v8, :cond_5d

    const/4 v3, -0x2

    move/from16 v0, p1

    invoke-static {v0, v13, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v9, 0x1

    move v11, v3

    :goto_2a
    if-nez v7, :cond_60

    const/4 v3, -0x2

    move/from16 v0, p2

    invoke-static {v0, v12, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_2b
    invoke-virtual {v15, v11, v5}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    if-eqz v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    iget-wide v4, v3, Landroid/support/constraint/a/f;->es:J

    const-wide/16 v22, 0x1

    add-long v4, v4, v22

    iput-wide v4, v3, Landroid/support/constraint/a/f;->es:J

    :cond_58
    const/4 v3, -0x2

    if-ne v8, v3, :cond_62

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, v21

    iput-boolean v3, v0, Landroid/support/constraint/a/a/d;->gi:Z

    const/4 v3, -0x2

    if-ne v7, v3, :cond_63

    const/4 v3, 0x1

    :goto_2d
    move-object/from16 v0, v21

    iput-boolean v3, v0, Landroid/support/constraint/a/a/d;->gj:Z

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move v5, v3

    move v8, v4

    :goto_2e
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    if-eqz v9, :cond_59

    move-object/from16 v0, v21

    iput v8, v0, Landroid/support/constraint/a/a/d;->gL:I

    :cond_59
    if-eqz v6, :cond_5a

    move-object/from16 v0, v21

    iput v5, v0, Landroid/support/constraint/a/a/d;->gM:I

    :cond_5a
    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    if-eqz v2, :cond_5b

    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5b

    move-object/from16 v0, v21

    iput v2, v0, Landroid/support/constraint/a/a/d;->gK:I

    :cond_5b
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_28

    :cond_5c
    const/4 v3, 0x0

    move v5, v3

    goto :goto_29

    :cond_5d
    const/4 v5, -0x1

    if-ne v8, v5, :cond_5e

    const/4 v5, -0x1

    move/from16 v0, p1

    invoke-static {v0, v13, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v11, v5

    move v9, v3

    goto :goto_2a

    :cond_5e
    const/4 v5, -0x2

    if-ne v8, v5, :cond_5f

    const/4 v3, 0x1

    :cond_5f
    move/from16 v0, p1

    invoke-static {v0, v13, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v11, v5

    move v9, v3

    goto/16 :goto_2a

    :cond_60
    const/4 v3, -0x1

    if-ne v7, v3, :cond_61

    const/4 v3, -0x1

    move/from16 v0, p2

    invoke-static {v0, v12, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v5, v3

    move v6, v4

    goto/16 :goto_2b

    :cond_61
    const/4 v3, -0x2

    if-ne v7, v3, :cond_83

    const/4 v3, 0x1

    :goto_2f
    move/from16 v0, p2

    invoke-static {v0, v12, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    move v5, v4

    move v6, v3

    goto/16 :goto_2b

    :cond_62
    const/4 v3, 0x0

    goto :goto_2c

    :cond_63
    const/4 v3, 0x0

    goto :goto_2d

    :cond_64
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_30
    if-ge v4, v5, :cond_66

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/support/constraint/f;

    if-eqz v3, :cond_65

    check-cast v2, Landroid/support/constraint/f;

    iget-object v3, v2, Landroid/support/constraint/f;->dG:Landroid/view/View;

    if-eqz v3, :cond_65

    invoke-virtual {v2}, Landroid/support/constraint/f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v2, v2, Landroid/support/constraint/f;->dG:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$a;

    iget-object v6, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/constraint/a/a/d;->gS:I

    iget-object v6, v3, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iget-object v7, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iget-object v6, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    const/16 v3, 0x8

    iput v3, v2, Landroid/support/constraint/a/a/d;->gS:I

    :cond_65
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_30

    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_67

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v3, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_67
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_68

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->ai()V

    :cond_68
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    add-int v15, v18, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v2

    add-int v17, v17, v2

    if-lez v14, :cond_79

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->aM()I

    move-result v2

    sget v3, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v2, v3, :cond_6e

    const/4 v2, 0x1

    move v5, v2

    :goto_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->aN()I

    move-result v2

    sget v3, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v2, v3, :cond_6f

    const/4 v2, 0x1

    move v6, v2

    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->bw:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->bx:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v2, 0x0

    move v13, v2

    :goto_34
    if-ge v13, v14, :cond_72

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    iget-object v3, v2, Landroid/support/constraint/a/a/d;->gQ:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_82

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$a;

    iget-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    if-nez v7, :cond_82

    iget-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    if-nez v7, :cond_82

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_82

    if-eqz v16, :cond_69

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/a/a/k;->aV()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/a/a/k;->aV()Z

    move-result v7

    if-nez v7, :cond_82

    :cond_69
    iget v7, v4, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_70

    iget-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$a;->cE:Z

    if-eqz v7, :cond_70

    iget v7, v4, Landroid/support/constraint/ConstraintLayout$a;->width:I

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    :goto_35
    iget v8, v4, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_71

    iget-boolean v8, v4, Landroid/support/constraint/ConstraintLayout$a;->cF:Z

    if-eqz v8, :cond_71

    iget v8, v4, Landroid/support/constraint/ConstraintLayout$a;->height:I

    move/from16 v0, p2

    invoke-static {v0, v15, v8}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v8

    :goto_36
    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    if-eqz v7, :cond_6a

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    iget-wide v0, v7, Landroid/support/constraint/a/f;->et:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v7, Landroid/support/constraint/a/f;->et:J

    :cond_6a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v8

    if-eq v7, v8, :cond_81

    invoke-virtual {v2, v7}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    if-eqz v16, :cond_6b

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->aC()Landroid/support/constraint/a/a/k;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/constraint/a/a/k;->p(I)V

    :cond_6b
    if-eqz v5, :cond_80

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getRight()I

    move-result v7

    if-le v7, v9, :cond_80

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getRight()I

    move-result v7

    sget-object v8, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v8}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_37
    const/4 v8, 0x1

    :goto_38
    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v9

    move/from16 v0, v18

    if-eq v0, v9, :cond_7f

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    if-eqz v16, :cond_6c

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->aD()Landroid/support/constraint/a/a/k;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/support/constraint/a/a/k;->p(I)V

    :cond_6c
    if-eqz v6, :cond_7e

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getBottom()I

    move-result v8

    if-le v8, v11, :cond_7e

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getBottom()I

    move-result v8

    sget-object v9, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_39
    const/4 v9, 0x1

    move v11, v8

    :goto_3a
    iget-boolean v4, v4, Landroid/support/constraint/ConstraintLayout$a;->cG:Z

    if-eqz v4, :cond_6d

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_6d

    iget v8, v2, Landroid/support/constraint/a/a/d;->gK:I

    if-eq v4, v8, :cond_6d

    iput v4, v2, Landroid/support/constraint/a/a/d;->gK:I

    const/4 v9, 0x1

    :cond_6d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v2, v4, :cond_7d

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v2

    move v10, v9

    :goto_3b
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move v9, v7

    move v12, v2

    goto/16 :goto_34

    :cond_6e
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_32

    :cond_6f
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_33

    :cond_70
    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto/16 :goto_35

    :cond_71
    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v8

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_36

    :cond_72
    if-eqz v10, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    if-eqz v16, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->aR()V

    :cond_73
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->ai()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v3

    if-ge v3, v9, :cond_74

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2, v9}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    const/4 v2, 0x1

    :cond_74
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v3

    if-ge v3, v11, :cond_75

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2, v11}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    const/4 v2, 0x1

    :cond_75
    if-eqz v2, :cond_76

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->ai()V

    :cond_76
    const/4 v2, 0x0

    move v4, v2

    :goto_3c
    if-ge v4, v14, :cond_79

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    iget-object v3, v2, Landroid/support/constraint/a/a/d;->gQ:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_78

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_77

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_78

    :cond_77
    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v5, v2}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_78

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bL:Landroid/support/constraint/a/f;

    iget-wide v6, v2, Landroid/support/constraint/a/f;->et:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->et:J

    :cond_78
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3c

    :cond_79
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v2

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v3

    add-int/2addr v3, v15

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7c

    move/from16 v0, p1

    invoke-static {v2, v0, v12}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v12, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v2, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->by:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/ConstraintLayout;->bz:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iget-boolean v4, v4, Landroid/support/constraint/a/a/e;->hx:Z

    if-eqz v4, :cond_7a

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    :cond_7a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iget-boolean v4, v4, Landroid/support/constraint/a/a/e;->hy:Z

    if-eqz v4, :cond_7b

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    :cond_7b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->bF:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->bG:I

    :goto_3d
    return-void

    :cond_7c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->bF:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->bG:I

    goto :goto_3d

    :catch_1
    move-exception v3

    goto/16 :goto_5

    :cond_7d
    move v10, v9

    move v2, v12

    goto/16 :goto_3b

    :cond_7e
    move v8, v11

    goto/16 :goto_39

    :cond_7f
    move v9, v8

    goto/16 :goto_3a

    :cond_80
    move v7, v9

    goto/16 :goto_37

    :cond_81
    move v7, v9

    move v8, v10

    goto/16 :goto_38

    :cond_82
    move v7, v9

    move v2, v12

    goto/16 :goto_3b

    :cond_83
    move v3, v4

    goto/16 :goto_2f

    :cond_84
    move v5, v7

    move v6, v4

    move v9, v3

    goto/16 :goto_2e

    :cond_85
    move v3, v7

    move v4, v8

    goto/16 :goto_22

    :cond_86
    move v3, v5

    goto/16 :goto_20

    :cond_87
    move v11, v3

    move v8, v4

    move v9, v5

    move v12, v6

    goto/16 :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/d;

    move-result-object v0

    instance-of v1, p1, Landroid/support/constraint/e;

    if-eqz v1, :cond_1

    instance-of v0, v0, Landroid/support/constraint/a/a/f;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    new-instance v1, Landroid/support/constraint/a/a/f;

    invoke-direct {v1}, Landroid/support/constraint/a/a/f;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$a;->cH:Z

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->cU:Landroid/support/constraint/a/a/d;

    check-cast v1, Landroid/support/constraint/a/a/f;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$a;->orientation:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/f;->setOrientation(I)V

    :cond_1
    instance-of v0, p1, Landroid/support/constraint/b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/b;

    invoke-virtual {v0}, Landroid/support/constraint/b;->ah()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$a;

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$a;->cI:Z

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/e;->c(Landroid/support/constraint/a/a/d;)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->bt:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->bu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->bA:Z

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->bF:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->bG:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->bH:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->bI:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bJ:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->bK:I

    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->bC:Landroid/support/constraint/c;

    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->bz:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->by:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->bx:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->bw:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->bv:Landroid/support/constraint/a/a/e;

    iput p1, v0, Landroid/support/constraint/a/a/e;->bB:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
