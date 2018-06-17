.class Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/views/ExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# static fields
.field private static final NO_MEASURED_HEIGHT:I = -0xa


# instance fields
.field canExpand:Z

.field isExpanded:Z

.field isExpanding:Z

.field originalHeight:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, -0xa

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iget v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v0, -0xa

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iget v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0xa

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    sget-object v0, Lio/intercom/android/sdk/R$styleable;->ExpandableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$styleable;->ExpandableLayout_intercomCanExpand:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->canExpand:Z

    iget v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    iput v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, -0xa

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iget v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, -0xa

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iget v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/16 v0, -0xa

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iget v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    iput v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    return-void
.end method
