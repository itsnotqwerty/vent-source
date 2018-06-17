.class final Lcom/vent/ActVent$a$a$1$1;
.super Lcom/vent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVent$a$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZr:Lcom/vent/ActVent$a$a$1;


# direct methods
.method constructor <init>(Lcom/vent/ActVent$a$a$1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/vent/ActVent$a$a$1$1;->bZr:Lcom/vent/ActVent$a$a$1;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/vent/x;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1$1;->bZr:Lcom/vent/ActVent$a$a$1;

    iget-object v0, v0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    iput-boolean v1, v0, Lcom/vent/ActVent$a$a;->bZp:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1$1;->bZr:Lcom/vent/ActVent$a$a$1;

    iget-object v0, v0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    iget-object v0, v0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/h;->isDetached()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vent/ActVent$a$a;->Cw()I

    move-result v2

    sget-boolean v0, Lcom/vent/ActVent;->bZe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1$1;->bZr:Lcom/vent/ActVent$a$a$1;

    iget-object v0, v0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    invoke-virtual {v0, v2}, Lcom/vent/ActVent$a$a;->notifyItemRemoved(I)V

    :cond_0
    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vent/ActVent$a$a$1$1;->caK:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/vent/d/c;->e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vent/ActVent$a$a;->Cw()I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vent/ActVent;->bZe:Z

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1$1;->bZr:Lcom/vent/ActVent$a$a$1;

    iget-object v0, v0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    sub-int v1, v3, v2

    invoke-virtual {v0, v2, v1}, Lcom/vent/ActVent$a$a;->notifyItemRangeInserted(II)V

    sget-boolean v0, Lcom/vent/ActVent;->bZe:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1$1;->bZr:Lcom/vent/ActVent$a$a$1;

    iget-object v0, v0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    invoke-virtual {v0, v3}, Lcom/vent/ActVent$a$a;->notifyItemInserted(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
