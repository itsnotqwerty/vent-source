.class final Lcom/vent/ActMain$17;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/support/v7/app/d;)V
    .locals 9

    const/4 v1, 0x0

    iput-object p5, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move v6, p4

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$17;->ccV:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vent/bb;->b(Lorg/json/JSONObject;Z)V

    iget-object v0, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/FrgProfile;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iput-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    sget-wide v2, Lcom/vent/bb;->ciA:J

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DK()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/vent/ActMain;->BT()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    instance-of v0, v0, Lcom/vent/ActProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->Y(I)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/FrgProfile;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iput-object v1, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    sget-wide v2, Lcom/vent/bb;->ciA:J

    iput-wide v2, v0, Lcom/vent/FrgProfile;->bZY:J

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DK()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    instance-of v0, v0, Lcom/vent/ActChangeEmail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$17;->bXk:Landroid/support/v7/app/d;

    check-cast v0, Lcom/vent/ActChangeEmail;

    invoke-virtual {v0}, Lcom/vent/ActChangeEmail;->Bd()V

    goto :goto_0
.end method
