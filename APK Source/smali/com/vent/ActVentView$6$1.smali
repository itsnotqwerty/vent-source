.class final Lcom/vent/ActVentView$6$1;
.super Lcom/vent/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVentView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZE:Lcom/vent/ActVentView$6;


# direct methods
.method constructor <init>(Lcom/vent/ActVentView$6;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/vent/u;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iput-boolean v1, v0, Lcom/vent/g;->bZp:Z

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v2}, Lcom/vent/g;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v4, v4, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vent/ActVentView$6$1;->bZV:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, v3, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, v3, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v4, v4, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, v3, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v4, v4, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v0, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, v3, Lcom/vent/g;->bZH:Z

    :try_start_0
    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->ccV:Lorg/json/JSONObject;

    const-string v4, "meta"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "more_available"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/vent/g;->bZH:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, v3, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/vent/ActVentView$6$1;->bUd:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v1, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/vent/g;->bZY:J

    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v1, v1, Lcom/vent/g;->bZH:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v1, v2}, Lcom/vent/g;->notifyItemInserted(I)V

    :cond_7
    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v3, v3, Lcom/vent/g;->bZH:Z

    if-eqz v3, :cond_8

    const/4 v2, 0x2

    :cond_8
    invoke-virtual {v1, v2, v0}, Lcom/vent/g;->notifyItemRangeInserted(II)V

    :cond_9
    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bUd:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget v0, v0, Lcom/vent/a/x;->flags:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bUd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v2, v0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    iget-object v3, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v3, v3, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v3, v3, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v3, v3, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v3, v3, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v3, v3, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-static {v2, v3}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v1, v1, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget v0, v0, Lcom/vent/a/x;->flags:I

    and-int/lit16 v0, v0, 0x207e

    iput v0, v1, Lcom/vent/a/x;->flags:I

    :cond_b
    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-boolean v1, v1, Lcom/vent/ActVentView$6;->bTq:Z

    invoke-virtual {v0, v1}, Lcom/vent/g;->ba(Z)V

    iget v0, p0, Lcom/vent/ActVentView$6$1;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/vent/ActVentView$6$1;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    :cond_c
    iget-object v0, p0, Lcom/vent/ActVentView$6$1;->bZE:Lcom/vent/ActVentView$6;

    iget-object v0, v0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget v1, p0, Lcom/vent/ActVentView$6$1;->ccU:I

    iget-object v2, p0, Lcom/vent/ActVentView$6$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method
