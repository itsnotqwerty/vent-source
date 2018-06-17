.class public final Lcom/vent/MyChooserTargetService;
.super Landroid/service/chooser/ChooserTargetService;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/chooser/ChooserTargetService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    const v7, 0x7f0800b8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "text/plain"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/vent/MyChooserTargetService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/vent/ActEmotions;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "vent_privacy"

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/y;->ckW:I

    invoke-static {v1}, Lcom/vent/a/z;->eN(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/service/chooser/ChooserTarget;

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/y;->ckW:I

    invoke-static {v1}, Lcom/vent/a/z;->eO(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vent/MyChooserTargetService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/vent/bb;->ciK:Lcom/vent/a/m;

    if-eqz v0, :cond_2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "group_id"

    sget-object v1, Lcom/vent/bb;->ciK:Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "group_name"

    sget-object v1, Lcom/vent/bb;->ciJ:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/service/chooser/ChooserTarget;

    sget-object v1, Lcom/vent/bb;->ciJ:Ljava/lang/String;

    invoke-static {p0, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v5}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v6
.end method
