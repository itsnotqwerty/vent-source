.class final Lcom/vent/ActMain$10;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->BO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActMain$10;->bXa:Lcom/vent/ActMain;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    sput-boolean v3, Lcom/vent/ActMain;->bWO:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain$10;->bXa:Lcom/vent/ActMain;

    iget-object v1, p0, Lcom/vent/ActMain$10;->ccV:Lorg/json/JSONObject;

    const-string v2, "count"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/ActMain;->el(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActMain;->bWN:Z

    goto :goto_0
.end method
