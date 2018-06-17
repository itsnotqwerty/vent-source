.class final Lcom/vent/ActGift$1$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActGift$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVL:Lcom/vent/ActGift$1;


# direct methods
.method constructor <init>(Lcom/vent/ActGift$1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    iput-object p1, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    const/4 v1, 0x0

    const v6, 0x7f0f00e1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    iget-object v1, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v1}, Lcom/vent/ActGift;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/vent/ActGift$1$1;->ccY:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/vent/ActGift$1$1;->ccY:I

    const/16 v1, 0x12b

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/vent/ActGift$1$1;->ccY:I

    const/16 v1, 0x199

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    iget-object v1, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v1}, Lcom/vent/ActGift;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v2, v2, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget v3, p0, Lcom/vent/ActGift$1$1;->ccU:I

    iget-object v4, p0, Lcom/vent/ActGift$1$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v2, v3, v4}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v7/app/c;

    aput-object v8, v0, v7

    iget-object v1, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    const v2, 0x7f0f00e1

    invoke-static {v1, v2}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v1

    aput-object v1, v0, v7

    :try_start_0
    iget-object v1, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    iget-object v1, v1, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    iget-object v2, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v2, v2, Lcom/vent/ActGift$1;->clx:Lcom/vent/b/f;

    new-instance v3, Lcom/vent/ActGift$1$1$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActGift$1$1$1;-><init>(Lcom/vent/ActGift$1$1;[Landroid/support/v7/app/c;)V

    invoke-virtual {v1}, Lcom/vent/b/c;->Fv()V

    const-string v4, "consume"

    invoke-virtual {v1, v4}, Lcom/vent/b/c;->em(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v5, "consume"

    invoke-virtual {v1, v5}, Lcom/vent/b/c;->en(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/vent/b/c$3;

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/vent/b/c$3;-><init>(Lcom/vent/b/c;Ljava/util/List;Lcom/vent/b/c$b;Landroid/os/Handler;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lcom/vent/b/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    iget-object v2, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v2, v2, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v2}, Lcom/vent/ActGift;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    aput-object v8, v0, v7

    iget-object v0, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v2, v2, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    const v3, 0x7f0f01f6

    invoke-virtual {v2, v3}, Lcom/vent/ActGift;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0
.end method
