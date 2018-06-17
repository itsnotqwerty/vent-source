.class final Lcom/vent/ActStore$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActStore;->a(Lcom/vent/a;Lcom/vent/a/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bYu:Lcom/vent/a;

.field final synthetic bYv:Lcom/vent/a/x;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/vent/a;Lcom/vent/a/x;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p4, p0, Lcom/vent/ActStore$1;->bYu:Lcom/vent/a;

    iput-object p5, p0, Lcom/vent/ActStore$1;->bYv:Lcom/vent/a/x;

    const v6, 0x7f0f00e1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/ActStore$1;->ccV:Lorg/json/JSONObject;

    const-string v1, "emotion_category_ids"

    invoke-static {v0, v1}, Lcom/vent/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vent/ActStore$1;->bYu:Lcom/vent/a;

    const-class v3, Lcom/vent/ActStore;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "emotion_category_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "user_gift"

    iget-object v2, p0, Lcom/vent/ActStore$1;->bYv:Lcom/vent/a/x;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vent/ActStore$1;->bYu:Lcom/vent/a;

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lcom/vent/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
