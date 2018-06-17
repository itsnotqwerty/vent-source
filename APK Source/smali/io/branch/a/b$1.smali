.class final Lio/branch/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cvc:Lio/branch/a/b;


# direct methods
.method constructor <init>(Lio/branch/a/b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget v1, v0, Lio/branch/a/b;->cuT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/branch/a/b;->cuT:I

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    iget-boolean v0, v0, Lio/branch/a/c;->cvk:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v1, "rl"

    iget-object v3, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v3, v3, Lio/branch/a/b;->cuR:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v1, "v"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v0, 0x1020002

    invoke-virtual {v4, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v1, v1, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    invoke-virtual {v1, v4}, Lio/branch/a/c;->x(Landroid/app/Activity;)Lio/branch/a/c$a;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_8

    iget-boolean v5, v3, Lio/branch/a/c$a;->cvp:Z

    iget-object v1, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v1, v1, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v7, "h"

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lio/branch/a/c$a;->Gs()Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v2, "ck"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v7, "cd"

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    invoke-static/range {v0 .. v5}, Lio/branch/a/b;->a(Lio/branch/a/b;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Landroid/app/Activity;Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuY:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v2, v0, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v0, "bnc_session_id"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "bnc_no_value"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    invoke-static {}, Lio/branch/referral/q;->GY()Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :try_start_1
    sget-object v0, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "bnc_branch_analytical_data"

    sget-object v2, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    :try_start_2
    iget-object v0, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    invoke-virtual {v0, v4}, Lio/branch/a/c;->x(Landroid/app/Activity;)Lio/branch/a/c$a;

    move-result-object v0

    iget v0, v0, Lio/branch/a/c$a;->cvq:I

    iget-object v2, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v3, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v3, v3, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    invoke-virtual {v3, v4}, Lio/branch/a/c;->x(Landroid/app/Activity;)Lio/branch/a/c$a;

    move-result-object v3

    iget v3, v3, Lio/branch/a/c$a;->cvr:I

    iput v3, v2, Lio/branch/a/b;->cuU:I

    iget-object v2, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget v2, v2, Lio/branch/a/b;->cuT:I

    iget-object v3, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget v3, v3, Lio/branch/a/b;->cuU:I

    if-ge v2, v3, :cond_5

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v1, v1, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    iget-object v2, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v2, v2, Lio/branch/a/b;->cuZ:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object v2, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v2, v2, Lio/branch/a/b;->cuY:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    iget-object v3, v3, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v5, "ck"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lio/branch/a/b$1;->cvc:Lio/branch/a/b;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v0, v2, v5}, Lio/branch/a/b;->a(Lio/branch/a/b;Landroid/view/ViewGroup;Lorg/json/JSONArray;Landroid/content/res/Resources;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v5, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_8
    move v5, v2

    goto/16 :goto_0
.end method
