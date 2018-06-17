.class final Lio/branch/referral/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic cwx:Lio/branch/referral/d;

.field private cwy:I


# direct methods
.method private constructor <init>(Lio/branch/referral/d;)V
    .locals 1

    iput-object p1, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/referral/d$a;->cwy:I

    return-void
.end method

.method synthetic constructor <init>(Lio/branch/referral/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/referral/d$a;-><init>(Lio/branch/referral/d;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->d(Lio/branch/referral/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lio/branch/referral/d$i;->cwE:I

    :goto_0
    invoke-static {v1, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;I)I

    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lio/branch/referral/l;->cxA:Lio/branch/referral/l$a;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lio/branch/referral/l;->cxA:Lio/branch/referral/l$a;

    invoke-static {v0, v1}, Lio/branch/referral/l$a;->a(Lio/branch/referral/l$a;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v0

    iget-object v1, v0, Lio/branch/referral/l;->cxA:Lio/branch/referral/l$a;

    invoke-virtual {v0, v1, p1, v3}, Lio/branch/referral/l;->a(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v3, v0, Lio/branch/referral/l;->cxA:Lio/branch/referral/l$a;

    :cond_0
    return-void

    :cond_1
    sget v0, Lio/branch/referral/d$i;->cwF:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    invoke-static {}, Lio/branch/referral/l;->GL()Lio/branch/referral/l;

    move-result-object v0

    iget-object v1, v0, Lio/branch/referral/l;->cxC:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lio/branch/referral/l;->cxC:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/branch/referral/l;->cxy:Z

    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->g(Lio/branch/referral/d;)Lio/branch/referral/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->g(Lio/branch/referral/d;)Lio/branch/referral/af;

    move-result-object v0

    iget-object v1, v0, Lio/branch/referral/af;->cBD:Lio/branch/referral/a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/branch/referral/af;->cBD:Lio/branch/referral/a;

    invoke-virtual {v1}, Lio/branch/referral/a;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/branch/referral/af;->cBD:Lio/branch/referral/a;

    invoke-virtual {v0}, Lio/branch/referral/a;->cancel()V

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/d;->h(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    invoke-static {v0, v1}, Lio/branch/referral/d;->b(Lio/branch/referral/d;I)I

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0, p1}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->d(Lio/branch/referral/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    sget v1, Lio/branch/referral/d$i;->cwF:I

    invoke-static {v0, v1}, Lio/branch/referral/d;->a(Lio/branch/referral/d;I)I

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->e(Lio/branch/referral/d;)I

    move-result v0

    sget v1, Lio/branch/referral/d$k;->cwH:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v1, p1, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Landroid/app/Activity;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v1, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->d(Lio/branch/referral/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lio/branch/referral/d$i;->cwE:I

    :goto_0
    invoke-static {v1, v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;I)I

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->e(Lio/branch/referral/d;)I

    move-result v0

    sget v1, Lio/branch/referral/d$k;->cwH:I

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lio/branch/a/b;->Gq()Lio/branch/a/b;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    iget-object v1, v1, Lio/branch/referral/d;->cwq:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/branch/a/b;->d(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget v0, p0, Lio/branch/referral/d$a;->cwy:I

    if-gtz v0, :cond_5

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->e(Lio/branch/referral/d;)I

    move-result v0

    sget v1, Lio/branch/referral/d$k;->cwH:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    invoke-static {v0, v1}, Lio/branch/referral/d;->b(Lio/branch/referral/d;I)I

    :cond_1
    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->f(Lio/branch/referral/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/k;->bS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/q;->GZ()V

    :cond_2
    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/d;->GE()Z

    move-result v0

    invoke-static {v0}, Lio/branch/referral/q;->bs(Z)V

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0, p1}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Landroid/app/Activity;)V

    :cond_3
    :goto_2
    iget v0, p0, Lio/branch/referral/d$a;->cwy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/branch/referral/d$a;->cwy:I

    return-void

    :cond_4
    sget v0, Lio/branch/referral/d$i;->cwF:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/d;->h(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    sget v1, Lio/branch/referral/d$k;->cwJ:I

    invoke-static {v0, v1}, Lio/branch/referral/d;->b(Lio/branch/referral/d;I)I

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0, p1}, Lio/branch/referral/d;->a(Lio/branch/referral/d;Landroid/app/Activity;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 6

    invoke-static {}, Lio/branch/a/b;->Gq()Lio/branch/a/b;

    move-result-object v1

    iget-object v0, v1, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    iget-object v2, v1, Lio/branch/a/b;->cuZ:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    :cond_0
    :try_start_0
    iget-object v0, v1, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lio/branch/a/b;->cuS:Lorg/json/JSONObject;

    const-string v2, "tc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, v1, Lio/branch/a/b;->cuX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_2

    iget-object v3, v1, Lio/branch/a/b;->cva:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lio/branch/a/b;->cuX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lio/branch/referral/d$a;->cwy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/branch/referral/d$a;->cwy:I

    iget v0, p0, Lio/branch/referral/d$a;->cwy:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/d$a;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->h(Lio/branch/referral/d;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
