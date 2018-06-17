.class final Lcom/vent/aj$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/referral/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/aj$3;->aQ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic cer:Lcom/vent/aj$3;


# direct methods
.method constructor <init>(Lcom/vent/aj$3;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iput-object p2, p0, Lcom/vent/aj$3$1;->bUB:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/branch/referral/f;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v0, v0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->cen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v0, v0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->cen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/vent/aj$3$1;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-boolean v0, v0, Lcom/vent/aj$3;->ceq:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v0, v0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    const v3, 0x7f0f0118

    invoke-virtual {v0, v3}, Lcom/vent/aj;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v3, v3, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    invoke-virtual {v3}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/af$a;

    invoke-direct {v4, v3}, Landroid/support/v4/app/af$a;-><init>(Landroid/app/Activity;)V

    iget-object v3, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v3, v0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-boolean v0, v0, Lcom/vent/aj$3;->ceq:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0f011a

    :goto_1
    invoke-virtual {v3, v0}, Lcom/vent/aj;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    iget-object v3, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v4, Landroid/support/v4/app/af$a;->xs:Landroid/app/Activity;

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AK:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.EMAIL"

    iget-object v5, v4, Landroid/support/v4/app/af$a;->AK:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/app/af$a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v8, v4, Landroid/support/v4/app/af$a;->AK:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AL:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.CC"

    iget-object v5, v4, Landroid/support/v4/app/af$a;->AL:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/app/af$a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v8, v4, Landroid/support/v4/app/af$a;->AL:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AM:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.BCC"

    iget-object v5, v4, Landroid/support/v4/app/af$a;->AM:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/app/af$a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v8, v4, Landroid/support/v4/app/af$a;->AM:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_8

    :goto_2
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v1, :cond_4

    if-eqz v5, :cond_4

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v6, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v7, "android.intent.extra.STREAM"

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    iput-object v8, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    :cond_4
    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, v4, Landroid/support/v4/app/af$a;->AN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_5
    :goto_4
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    iget-object v1, v4, Landroid/support/v4/app/af$a;->AJ:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v0, v0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    const v3, 0x7f0f0119

    invoke-virtual {v0, v3}, Lcom/vent/aj;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    sget-object v4, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v4, v4, Lcom/vent/a/y;->username:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0f011b

    goto/16 :goto_1

    :cond_8
    move v1, v2

    goto/16 :goto_2

    :cond_9
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, v4, Landroid/support/v4/app/af$a;->AI:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :try_start_0
    iget-object v0, p2, Lio/branch/referral/f;->cwL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed get invite url from branch "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v0, v0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    invoke-virtual {v0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/aj$3$1;->cer:Lcom/vent/aj$3;

    iget-object v1, v1, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    const v3, 0x7f0f0068

    invoke-virtual {v1, v3}, Lcom/vent/aj;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "unknown"

    goto :goto_6
.end method
