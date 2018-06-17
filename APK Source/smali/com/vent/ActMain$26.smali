.class final Lcom/vent/ActMain$26;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$26;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/vent/ActMain$26;->bXa:Lcom/vent/ActMain;

    iget-object v0, v0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/vent/ActMain$26;->bXa:Lcom/vent/ActMain;

    iget-object v1, v1, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActMain$26;->bXa:Lcom/vent/ActMain;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    sget v0, Lcom/vent/MyApplication;->cgh:I

    iget-object v1, p0, Lcom/vent/ActMain$26;->bXa:Lcom/vent/ActMain;

    new-instance v2, Landroid/graphics/RectF;

    sub-int v3, p2, v0

    int-to-float v3, v3

    sub-int v4, p3, v0

    int-to-float v4, v4

    add-int v5, p4, v0

    int-to-float v5, v5

    add-int/2addr v0, p5

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v1, Lcom/vent/ActMain;->bWB:Landroid/graphics/RectF;

    return-void
.end method
