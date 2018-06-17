.class final Lcom/vent/ActGift$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/b/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActGift$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVM:[Landroid/support/v7/app/c;

.field final synthetic bVN:Lcom/vent/ActGift$1$1;


# direct methods
.method constructor <init>(Lcom/vent/ActGift$1$1;[Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iput-object p2, p0, Lcom/vent/ActGift$1$1$1;->bVM:[Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vent/b/d;)V
    .locals 6

    const v5, 0x7f0f01f6

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v0, v0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVJ:Lcom/vent/b/a;

    iget-object v3, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v3, v3, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v3, v3, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v3}, Lcom/vent/ActGift;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVM:[Landroid/support/v7/app/c;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVM:[Landroid/support/v7/app/c;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget v0, v0, Lcom/vent/ActGift$1$1;->ccY:I

    const/16 v3, 0x199

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v0, v0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget v0, v0, Lcom/vent/ActGift$1;->cly:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/vent/b/d;->mQ()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v3, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v4, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v4, v4, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v4, v4, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget-object v4, v4, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    iget-object v4, v4, Lcom/vent/a/h;->cka:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v0, v0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    const v2, 0x7f0f01f5

    invoke-static {v0, v2, v1}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/vent/b/d;->mQ()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p1, Lcom/vent/b/d;->cmc:I

    const/16 v1, -0x3ed

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v1, v1, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v1, v5}, Lcom/vent/ActGift;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (9)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v1, v1, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (1."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_6

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v0, v0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    invoke-virtual {v0, v5}, Lcom/vent/ActGift;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget v0, p1, Lcom/vent/b/d;->cmc:I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v0, v0, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v0, v0, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget-object v1, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v1, v1, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v1, v1, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget-object v1, v1, Lcom/vent/ActGift;->bVH:Lcom/vent/a/h;

    iget-object v2, p0, Lcom/vent/ActGift$1$1$1;->bVN:Lcom/vent/ActGift$1$1;

    iget-object v2, v2, Lcom/vent/ActGift$1$1;->bVL:Lcom/vent/ActGift$1;

    iget-object v2, v2, Lcom/vent/ActGift$1;->bVK:Lcom/vent/ActGift;

    iget-object v2, v2, Lcom/vent/ActGift;->bVI:Lcom/vent/a/x;

    invoke-static {v0, v1, v2}, Lcom/vent/ActGiftDone;->a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V

    goto/16 :goto_1
.end method
