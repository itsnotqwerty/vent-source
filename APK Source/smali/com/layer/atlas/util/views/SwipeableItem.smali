.class public final Lcom/layer/atlas/util/views/SwipeableItem;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final bpA:[I


# instance fields
.field private bpB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/layer/atlas/b$b;->state_swiping:I

    aput v2, v0, v1

    sput-object v0, Lcom/layer/atlas/util/views/SwipeableItem;->bpA:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/atlas/util/views/SwipeableItem;->bpB:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/atlas/util/views/SwipeableItem;->bpB:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/atlas/util/views/SwipeableItem;->bpB:Z

    return-void
.end method


# virtual methods
.method protected final onCreateDrawableState(I)[I
    .locals 2

    iget-boolean v0, p0, Lcom/layer/atlas/util/views/SwipeableItem;->bpB:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/atlas/util/views/SwipeableItem;->bpA:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Lcom/layer/atlas/util/views/SwipeableItem;->bpA:[I

    invoke-static {v0, v1}, Lcom/layer/atlas/util/views/SwipeableItem;->mergeDrawableStates([I[I)[I

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method
