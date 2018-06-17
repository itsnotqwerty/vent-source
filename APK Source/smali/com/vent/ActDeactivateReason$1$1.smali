.class final Lcom/vent/ActDeactivateReason$1$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActDeactivateReason$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUA:Lcom/vent/ActDeactivateReason$1;


# direct methods
.method constructor <init>(Lcom/vent/ActDeactivateReason$1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    const v6, 0x7f0f00e1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget-object v0, v0, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    const-string v1, "Deactivation"

    sget-object v2, Lcom/vent/ActDeactivateReason;->bUx:[Ljava/lang/String;

    iget-object v3, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget v3, v3, Lcom/vent/ActDeactivateReason$1;->bUy:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget-object v3, v3, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    sget-object v4, Lcom/vent/ActDeactivateReason;->bUw:[I

    iget-object v5, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget v5, v5, Lcom/vent/ActDeactivateReason$1;->bUy:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/vent/ActDeactivateReason;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/vent/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget-object v0, v0, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    const v1, 0x7f0f0121

    invoke-static {v0, v1}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget-object v2, v2, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    invoke-static {v2}, Lcom/vent/ag;->aH(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->username:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/vent/ActDeactivateReason$1$1;->bUA:Lcom/vent/ActDeactivateReason$1;

    iget-object v1, v1, Lcom/vent/ActDeactivateReason$1;->bUz:Lcom/vent/ActDeactivateReason;

    const/4 v2, 0x0

    new-instance v3, Lcom/vent/ActDeactivateReason$1$1$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActDeactivateReason$1$1$1;-><init>(Lcom/vent/ActDeactivateReason$1$1;Landroid/support/v7/app/c;)V

    invoke-static {v1, v2, v3}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method
