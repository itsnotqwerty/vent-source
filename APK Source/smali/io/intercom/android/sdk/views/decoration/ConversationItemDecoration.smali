.class public Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$h;


# static fields
.field private static final CONCAT_SPACING:I = 0x4

.field private static final DIVIDER_BOTTOM_SPACING:I = 0xa

.field private static final DIVIDER_TOP_SPACING:I = 0x10

.field private static final SPACING:I = 0x18


# instance fields
.field private final concatSpacing:I

.field private final headerBottomSpacing:I

.field private final headerTopSpacing:I

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field private final spacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    iput-object p2, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->spacing:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->concatSpacing:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->headerTopSpacing:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->headerBottomSpacing:I

    return-void
.end method

.method private nextPartIsDivider(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "day_divider_style"

    iget-object v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private topSpacingForPartAtPosition(I)I
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->spacing:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->aP(Landroid/view/View;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    const-string v2, "day_divider_style"

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->headerTopSpacing:I

    iget v1, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->headerBottomSpacing:I

    invoke-virtual {p1, v4, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->shouldConcatenate(Lio/intercom/android/sdk/models/Part;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->topSpacingForPartAtPosition(I)I

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->concatSpacing:I

    invoke-virtual {p1, v4, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->nextPartIsDivider(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->topSpacingForPartAtPosition(I)I

    move-result v0

    invoke-virtual {p1, v4, v0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->topSpacingForPartAtPosition(I)I

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->spacing:I

    invoke-virtual {p1, v4, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method shouldConcatenate(Lio/intercom/android/sdk/models/Part;I)Z
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;->parts:Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-static {p1, v0}, Lio/intercom/android/sdk/models/Part;->shouldConcatenate(Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
