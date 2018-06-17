.class final Lcom/vent/ActGroup$1;
.super Lcom/vent/views/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActGroup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWk:Lcom/vent/ActGroup;


# direct methods
.method constructor <init>(Lcom/vent/ActGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGroup$1;->bWk:Lcom/vent/ActGroup;

    invoke-direct {p0}, Lcom/vent/views/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/views/c;->Q(I)V

    iget-object v1, p0, Lcom/vent/ActGroup$1;->bWk:Lcom/vent/ActGroup;

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/vent/ActGroup;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "GroupDetail"

    goto :goto_0

    :pswitch_1
    const-string v0, "GroupDetail"

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

    iget-object v0, p0, Lcom/vent/ActGroup$1;->bWk:Lcom/vent/ActGroup;

    invoke-virtual {v0, p1}, Lcom/vent/ActGroup;->ei(I)V

    return-void
.end method
