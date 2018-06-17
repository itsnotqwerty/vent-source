.class final Lcom/vent/b/a$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a$5$1;->a(Lcom/vent/b/d;Lcom/vent/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clu:Lcom/vent/b/h;

.field final synthetic clv:Lcom/vent/b/a$5$1;


# direct methods
.method constructor <init>(Lcom/vent/b/a$5$1;Lcom/vent/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iput-object p2, p0, Lcom/vent/b/a$5$1$1;->clu:Lcom/vent/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v1, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v1, v1, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v1, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v0, Lcom/vent/b/a$5;->clr:Lcom/vent/b/a$a;

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v2, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v2, v2, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v2, v2, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/f;

    iput-object v0, v1, Lcom/vent/b/a$a;->clx:Lcom/vent/b/f;

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    invoke-virtual {v0}, Lcom/vent/b/a$5$1;->Ft()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iget-object v0, v0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lcom/vent/b/a$5$1;->el(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iget-object v7, v0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v8, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v3, v0, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clu:Lcom/vent/b/h;

    iget-object v4, v0, Lcom/vent/b/h;->gU:Ljava/lang/String;

    new-instance v9, Lcom/vent/b/a$5$1$1$1;

    invoke-direct {v9, p0}, Lcom/vent/b/a$5$1$1$1;-><init>(Lcom/vent/b/a$5$1$1;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/vent/b/c;->Fv()V

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {v7, v0}, Lcom/vent/b/c;->em(Ljava/lang/String;)V

    const-string v0, "launchPurchaseFlow"

    invoke-virtual {v7, v0}, Lcom/vent/b/c;->en(Ljava/lang/String;)V

    const-string v0, "subs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v7, Lcom/vent/b/c;->clD:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/vent/b/c;->Fw()V

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V
    :try_end_0
    .catch Lcom/vent/b/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v2, v2, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v2, v2, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v3, 0x7f0f01f6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/b/a$5$1;->el(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v0, v7, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v1, 0x3

    iget-object v2, v7, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v0 .. v5}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/b/c;->v(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/vent/b/c;->Fw()V

    new-instance v0, Lcom/vent/b/d;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/vent/b/c$a; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    invoke-virtual {v7}, Lcom/vent/b/c;->Fw()V

    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V
    :try_end_2
    .catch Lcom/vent/b/c$a; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const/16 v1, 0x2f

    iput v1, v7, Lcom/vent/b/c;->clK:I

    iput-object v9, v7, Lcom/vent/b/c;->clN:Lcom/vent/b/c$d;

    iput-object v4, v7, Lcom/vent/b/c;->clL:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2f

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/vent/b/c$a; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {v7}, Lcom/vent/b/c;->Fw()V

    new-instance v0, Lcom/vent/b/d;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Lcom/vent/b/c$d;->a(Lcom/vent/b/d;Lcom/vent/b/f;)V
    :try_end_4
    .catch Lcom/vent/b/c$a; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
