.class final Lcom/vent/ActMain$27;
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

    iput-object p1, p0, Lcom/vent/ActMain$27;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/vent/ActMain$27;->bXa:Lcom/vent/ActMain;

    iget-object v0, v0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vent/ActMain$27;->bXa:Lcom/vent/ActMain;

    iget-object v1, v1, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActMain$27;->bXa:Lcom/vent/ActMain;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/vent/ActMain$27;->bXa:Lcom/vent/ActMain;

    sub-int v1, p4, p2

    iput v1, v0, Lcom/vent/ActMain;->bWz:I

    iget-object v0, p0, Lcom/vent/ActMain$27;->bXa:Lcom/vent/ActMain;

    sub-int v1, p5, p3

    iput v1, v0, Lcom/vent/ActMain;->bWA:I

    return-void
.end method
