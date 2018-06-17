.class final Lcom/vent/ActCreateEditGroup$1;
.super Lcom/vent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActCreateEditGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUv:Lcom/vent/ActCreateEditGroup;


# direct methods
.method constructor <init>(Lcom/vent/ActCreateEditGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActCreateEditGroup$1;->bUv:Lcom/vent/ActCreateEditGroup;

    const v6, 0x7f0f00e1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/x;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/x;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$1;->caK:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup$1;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$1;->caK:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-virtual {v0}, Lcom/vent/a/k;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    iput-object v0, v1, Lcom/vent/ActCreateEditGroup;->bUp:Lcom/vent/a/l;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$1;->bUv:Lcom/vent/ActCreateEditGroup;

    iget-object v1, p0, Lcom/vent/ActCreateEditGroup$1;->bUq:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/vent/ActCreateEditGroup;->bUq:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActCreateEditGroup$1;->bUv:Lcom/vent/ActCreateEditGroup;

    invoke-virtual {v0}, Lcom/vent/ActCreateEditGroup;->Bg()V

    :cond_0
    return-void
.end method
