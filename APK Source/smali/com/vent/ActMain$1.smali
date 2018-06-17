.class final Lcom/vent/ActMain$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/vent/ActMain$1;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain$1;->bXa:Lcom/vent/ActMain;

    iget-object v0, v0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vents"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$1;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "vents"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/an;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/an;->be(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActMain$1;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BD()V

    goto :goto_0
.end method
