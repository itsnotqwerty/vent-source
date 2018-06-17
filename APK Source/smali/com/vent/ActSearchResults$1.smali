.class final Lcom/vent/ActSearchResults$1;
.super Lcom/vent/views/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActSearchResults;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXQ:Lcom/vent/ActSearchResults;


# direct methods
.method constructor <init>(Lcom/vent/ActSearchResults;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActSearchResults$1;->bXQ:Lcom/vent/ActSearchResults;

    invoke-direct {p0}, Lcom/vent/views/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/views/c;->Q(I)V

    iget-object v0, p0, Lcom/vent/ActSearchResults$1;->bXQ:Lcom/vent/ActSearchResults;

    iget-object v1, v0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vent/ActSearchResults;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/vent/ax;->aT(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/vent/ax;->aU(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final ei(I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActSearchResults$1;->bXQ:Lcom/vent/ActSearchResults;

    invoke-virtual {v0, p1}, Lcom/vent/ActSearchResults;->ei(I)V

    return-void
.end method
