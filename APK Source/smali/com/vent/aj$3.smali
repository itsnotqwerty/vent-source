.class final Lcom/vent/aj$3;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/aj;->bd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ceo:Lcom/vent/aj;

.field final synthetic ceq:Z


# direct methods
.method constructor <init>(Lcom/vent/aj;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 7

    iput-object p1, p0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    iput-boolean p6, p0, Lcom/vent/aj$3;->ceq:Z

    const/4 v1, 0x0

    const v6, 0x7f0f00e1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/vent/aj$3;->ccV:Lorg/json/JSONObject;

    const-string v4, "invite"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "failed get invite id"

    invoke-static {v0}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->cen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->cen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    invoke-virtual {v0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f0068

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    invoke-virtual {v3}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    const v4, 0x7f0f00e1

    invoke-static {v3, v4}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v3

    new-instance v4, Lio/branch/referral/b/b;

    invoke-direct {v4}, Lio/branch/referral/b/b;-><init>()V

    const-string v5, "invite"

    iput-object v5, v4, Lio/branch/referral/b/b;->cxo:Ljava/lang/String;

    new-instance v5, Lio/branch/a/a;

    invoke-direct {v5}, Lio/branch/a/a;-><init>()V

    const-string v6, "invite"

    iput-object v6, v5, Lio/branch/a/a;->cuB:Ljava/lang/String;

    const-string v6, "inviteId"

    iget-object v7, v5, Lio/branch/a/a;->cuE:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/aj$3;->ceo:Lcom/vent/aj;

    invoke-virtual {v0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    new-instance v6, Lcom/vent/aj$3$1;

    invoke-direct {v6, p0, v3}, Lcom/vent/aj$3$1;-><init>(Lcom/vent/aj$3;Landroid/support/v7/app/c;)V

    new-instance v3, Lio/branch/referral/h;

    invoke-direct {v3, v0}, Lio/branch/referral/h;-><init>(Landroid/content/Context;)V

    iget-object v0, v4, Lio/branch/referral/b/b;->cxu:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lio/branch/referral/b/b;->cxu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->C(Ljava/util/List;)Lio/branch/referral/j;

    :cond_3
    iget-object v0, v4, Lio/branch/referral/b/b;->cxo:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lio/branch/referral/b/b;->cxo:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->eG(Ljava/lang/String;)Lio/branch/referral/h;

    :cond_4
    iget-object v0, v4, Lio/branch/referral/b/b;->cxr:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lio/branch/referral/b/b;->cxr:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->eE(Ljava/lang/String;)Lio/branch/referral/h;

    :cond_5
    iget-object v0, v4, Lio/branch/referral/b/b;->cxn:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v4, Lio/branch/referral/b/b;->cxn:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->eF(Ljava/lang/String;)Lio/branch/referral/h;

    :cond_6
    iget-object v0, v4, Lio/branch/referral/b/b;->cxp:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lio/branch/referral/b/b;->cxp:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->eH(Ljava/lang/String;)Lio/branch/referral/h;

    :cond_7
    iget-object v0, v4, Lio/branch/referral/b/b;->cxq:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v4, Lio/branch/referral/b/b;->cxq:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->eI(Ljava/lang/String;)Lio/branch/referral/h;

    :cond_8
    iget v0, v4, Lio/branch/referral/b/b;->cFm:I

    if-lez v0, :cond_9

    iget v0, v4, Lio/branch/referral/b/b;->cFm:I

    invoke-virtual {v3, v0}, Lio/branch/referral/h;->fb(I)Lio/branch/referral/h;

    :cond_9
    iget-object v0, v5, Lio/branch/a/a;->cuB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lio/branch/referral/n$a;->czi:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/a/a;->cuB:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_a
    iget-object v0, v5, Lio/branch/a/a;->cuz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lio/branch/referral/n$a;->czh:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/a/a;->cuz:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_b
    iget-object v0, v5, Lio/branch/a/a;->cuA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lio/branch/referral/n$a;->czl:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/a/a;->cuA:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_c
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v5, Lio/branch/a/a;->cuH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Lio/branch/referral/n$a;->czo:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lio/branch/referral/j;

    :cond_e
    iget-object v0, v5, Lio/branch/a/a;->cuC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lio/branch/referral/n$a;->czj:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/a/a;->cuC:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_f
    iget-object v0, v5, Lio/branch/a/a;->cuD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lio/branch/referral/n$a;->czk:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/a/a;->cuD:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_10
    iget-object v0, v5, Lio/branch/a/a;->cuF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lio/branch/referral/n$a;->czm:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    iget-object v7, v5, Lio/branch/a/a;->cuF:Ljava/lang/String;

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_11
    iget-wide v8, v5, Lio/branch/a/a;->cuI:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_12

    sget-object v0, Lio/branch/referral/n$a;->czp:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v5, Lio/branch/a/a;->cuI:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_12
    sget-object v0, Lio/branch/referral/n$a;->czn:Lio/branch/referral/n$a;

    iget-object v7, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v5, Lio/branch/a/a;->cuG:I

    sget v9, Lio/branch/a/a$a;->cuL:I

    if-ne v0, v9, :cond_14

    move v0, v1

    :goto_3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    iget-object v0, v5, Lio/branch/a/a;->cuJ:Ljava/lang/Double;

    if-eqz v0, :cond_13

    const-string v0, "$amount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lio/branch/a/a;->cuJ:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    const-string v0, "$currency"

    iget-object v1, v5, Lio/branch/a/a;->cuK:Lio/branch/referral/b/a;

    invoke-virtual {v1}, Lio/branch/referral/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    :cond_13
    iget-object v0, v5, Lio/branch/a/a;->cuE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v5, Lio/branch/a/a;->cuE:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    goto :goto_4

    :cond_14
    move v0, v2

    goto :goto_3

    :cond_15
    iget-object v2, v4, Lio/branch/referral/b/b;->cFn:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lio/branch/referral/h;->U(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/j;

    goto :goto_5

    :cond_16
    invoke-virtual {v3, v6}, Lio/branch/referral/h;->a(Lio/branch/referral/d$b;)V

    goto/16 :goto_1
.end method
