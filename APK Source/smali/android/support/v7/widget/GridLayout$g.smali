.class public final Landroid/support/v7/widget/GridLayout$g;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field private static final aaX:Landroid/support/v7/widget/GridLayout$f;

.field private static final aaY:I

.field private static final aaZ:I

.field private static final aba:I

.field private static final abb:I

.field private static final abc:I

.field private static final abd:I

.field private static final abe:I

.field private static final abf:I

.field private static final abg:I

.field private static final abh:I

.field private static final abi:I

.field private static final abj:I

.field private static final abk:I


# instance fields
.field public abl:Landroid/support/v7/widget/GridLayout$j;

.field public abm:Landroid/support/v7/widget/GridLayout$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/GridLayout$f;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    sput-object v0, Landroid/support/v7/widget/GridLayout$g;->aaX:Landroid/support/v7/widget/GridLayout$f;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$f;->size()I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayout$g;->aaY:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->aaZ:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->aba:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abb:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abc:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abd:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_column:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abe:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abf:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abg:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_row:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abh:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abi:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abj:I

    sget v0, Landroid/support/v7/e/a$b;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroid/support/v7/widget/GridLayout$g;->abk:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    sget-object v1, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    sget-object v0, Landroid/support/v7/e/a$b;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/widget/GridLayout$g;->aaZ:I

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Landroid/support/v7/widget/GridLayout$g;->aba:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->leftMargin:I

    sget v2, Landroid/support/v7/widget/GridLayout$g;->abb:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->topMargin:I

    sget v2, Landroid/support/v7/widget/GridLayout$g;->abc:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$g;->rightMargin:I

    sget v2, Landroid/support/v7/widget/GridLayout$g;->abd:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$g;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Landroid/support/v7/e/a$b;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_1
    sget v0, Landroid/support/v7/widget/GridLayout$g;->abk:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Landroid/support/v7/widget/GridLayout$g;->abe:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroid/support/v7/widget/GridLayout$g;->abf:I

    sget v4, Landroid/support/v7/widget/GridLayout$g;->aaY:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Landroid/support/v7/widget/GridLayout$g;->abg:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->g(IZ)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v5

    invoke-static {v2, v3, v5, v4}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    sget v2, Landroid/support/v7/widget/GridLayout$g;->abh:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroid/support/v7/widget/GridLayout$g;->abi:I

    sget v4, Landroid/support/v7/widget/GridLayout$g;->aaY:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Landroid/support/v7/widget/GridLayout$g;->abj:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->g(IZ)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v0

    invoke-static {v2, v3, v0, v4}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/GridLayout$a;F)Landroid/support/v7/widget/GridLayout$j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$g;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;)V
    .locals 2

    const/4 v0, -0x2

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/widget/GridLayout$g;->setMargins(IIII)V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$g;-><init>(Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$j;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    sget-object v0, Landroid/support/v7/widget/GridLayout$j;->abq:Landroid/support/v7/widget/GridLayout$j;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/support/v7/widget/GridLayout$g;

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2

    const/4 v1, -0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$g;->width:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$g;->height:I

    return-void
.end method
