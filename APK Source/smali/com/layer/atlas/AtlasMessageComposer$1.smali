.class public final Lcom/layer/atlas/AtlasMessageComposer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/AtlasMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnl:Lcom/layer/atlas/AtlasMessageComposer;


# direct methods
.method public constructor <init>(Lcom/layer/atlas/AtlasMessageComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/AtlasMessageComposer$1;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$1;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer$1;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v1, v1, Lcom/layer/atlas/AtlasMessageComposer;->bne:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, p1, v3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
