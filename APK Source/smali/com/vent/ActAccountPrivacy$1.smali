.class final Lcom/vent/ActAccountPrivacy$1;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActAccountPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTk:Lcom/vent/ActAccountPrivacy;


# direct methods
.method constructor <init>(Lcom/vent/ActAccountPrivacy;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActAccountPrivacy$1;->bTk:Lcom/vent/ActAccountPrivacy;

    const v6, 0x7f0f0108

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ab;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActAccountPrivacy$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/vent/bb;->c(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/vent/ActAccountPrivacy$1;->bTk:Lcom/vent/ActAccountPrivacy;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vent/ActAccountPrivacy;->setResult(I)V

    iget-object v0, p0, Lcom/vent/ActAccountPrivacy$1;->bTk:Lcom/vent/ActAccountPrivacy;

    invoke-virtual {v0}, Lcom/vent/ActAccountPrivacy;->finish()V

    :cond_0
    return-void
.end method
