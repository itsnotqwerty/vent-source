.class final Lcom/vent/ActMain$25;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/vent/ActMain$25;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain$25;->bXa:Lcom/vent/ActMain;

    iget-object v1, p0, Lcom/vent/ActMain$25;->bXa:Lcom/vent/ActMain;

    invoke-virtual {v1}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vent/ag;->a(Landroid/app/Activity;Landroid/support/v4/app/n;)V

    const/4 v0, 0x1

    return v0
.end method
