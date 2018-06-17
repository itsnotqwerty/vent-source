.class final Lcom/vent/d/f$12$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cnR:Lcom/vent/d/f$12;


# direct methods
.method constructor <init>(Lcom/vent/d/f$12;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/d/f$12$1;->cnR:Lcom/vent/d/f$12;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/d/f$12$1;->cnR:Lcom/vent/d/f$12;

    iget-object v0, v0, Lcom/vent/d/f$12;->bZz:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v0}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    iget-object v0, p0, Lcom/vent/d/f$12$1;->cnR:Lcom/vent/d/f$12;

    iget-object v0, v0, Lcom/vent/d/f$12;->bXk:Landroid/support/v7/app/d;

    invoke-static {v0, v2, v2}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V

    :cond_0
    iget-object v0, p0, Lcom/vent/d/f$12$1;->cnR:Lcom/vent/d/f$12;

    iget-object v0, v0, Lcom/vent/d/f$12;->cnO:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/d/f$12$1;->cnR:Lcom/vent/d/f$12;

    iget-object v0, v0, Lcom/vent/d/f$12;->cnO:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method protected final b(Ljava/lang/Void;)V
    .locals 2

    iget v0, p0, Lcom/vent/d/f$12$1;->ccU:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/vent/d/f$12$1;->ccU:I

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/ad;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/d/f$12$1;->b(Ljava/lang/Void;)V

    return-void
.end method
