.class final Lcom/vent/ActCreateEditGroup$2;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActCreateEditGroup;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUv:Lcom/vent/ActCreateEditGroup;


# direct methods
.method constructor <init>(Lcom/vent/ActCreateEditGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActCreateEditGroup$2;->bUv:Lcom/vent/ActCreateEditGroup;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cmd"

    const-string v2, "delete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "group"

    iget-object v2, p0, Lcom/vent/ActCreateEditGroup$2;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v2, v2, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup$2;->bUv:Lcom/vent/ActCreateEditGroup;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vent/ActCreateEditGroup;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$2;->bUv:Lcom/vent/ActCreateEditGroup;

    invoke-virtual {v0}, Lcom/vent/ActCreateEditGroup;->finish()V

    return-void
.end method
