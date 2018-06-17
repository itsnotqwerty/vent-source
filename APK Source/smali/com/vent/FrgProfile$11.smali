.class final Lcom/vent/FrgProfile$11;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->bh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;

.field final synthetic cft:Z


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/FrgProfile$11;->cfr:Lcom/vent/FrgProfile;

    iput-boolean p5, p0, Lcom/vent/FrgProfile$11;->cft:Z

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
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vent/FrgProfile$11;->ccV:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vent/FrgProfile$11;->cft:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vent/FrgProfile$11;->cft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/vent/FrgProfile$11;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v1}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
