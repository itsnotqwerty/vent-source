.class final Lcom/vent/ActEmotions$8;
.super Lcom/vent/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActEmotions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVw:Lcom/vent/ActEmotions;

.field final synthetic bVx:I


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEmotions$8;->bVw:Lcom/vent/ActEmotions;

    iput p2, p0, Lcom/vent/ActEmotions$8;->bVx:I

    invoke-direct {p0}, Lcom/vent/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final aQ(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActEmotions$8;->bVw:Lcom/vent/ActEmotions;

    invoke-virtual {v0}, Lcom/vent/ActEmotions;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/ActEmotions$8;->bVw:Lcom/vent/ActEmotions;

    iget-object v0, v0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    iget-object v0, p0, Lcom/vent/ActEmotions$8;->bVw:Lcom/vent/ActEmotions;

    iget-object v0, v0, Lcom/vent/ActEmotions;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    iget v3, p0, Lcom/vent/ActEmotions$8;->bVx:I

    invoke-static {v1, v2, v0, v3}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/ActEmotions$c;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0901cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
