.class final Lcom/vent/ActVent$2;
.super Lcom/vent/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActVent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZm:Lcom/vent/a/m;

.field final synthetic bZn:Lcom/vent/ActVent;


# direct methods
.method constructor <init>(Lcom/vent/ActVent;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/vent/a/m;)V
    .locals 7

    iput-object p1, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iput-object p7, p0, Lcom/vent/ActVent$2;->bZm:Lcom/vent/a/m;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/vent/ac;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iput-boolean v7, v0, Lcom/vent/ActVent;->bYU:Z

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_c

    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, p0, Lcom/vent/ActVent$2;->ccb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v2

    :goto_1
    iput-object v0, v3, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v1, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/bb;->ec(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-static {v0}, Lcom/vent/d/f;->b(Lcom/vent/a/z;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZm:Lcom/vent/a/m;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v1, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v1, v1, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    iget-object v1, v1, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    iput-object v1, v0, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    :cond_2
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v1, v0, Lcom/vent/a/y;->ckk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vent/a/y;->ckk:I

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-nez v0, :cond_3

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v1, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v1, v1, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget v1, v1, Lcom/vent/a/z;->clc:I

    iput v1, v0, Lcom/vent/a/y;->ckW:I

    :cond_3
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v0, v0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    sput-object v0, Lcom/vent/bb;->ciJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v0, v0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    sput-object v0, Lcom/vent/bb;->ciK:Lcom/vent/a/m;

    :cond_4
    sput-boolean v6, Lcom/vent/bb;->chP:Z

    :cond_5
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {v2}, Lcom/vent/bb;->ea(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZm:Lcom/vent/a/m;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    invoke-static {v0}, Lcom/vent/ax;->bm(Landroid/content/Context;)V

    sget-object v0, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$a;

    if-eqz v0, :cond_7

    iput-wide v4, v0, Lcom/vent/s$a;->bZY:J

    :cond_7
    sget-object v1, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget v0, v0, Lcom/vent/a/z;->clc:I

    if-eq v0, v6, :cond_e

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$a;

    if-eqz v0, :cond_8

    iput-wide v4, v0, Lcom/vent/s$a;->bZY:J

    :cond_8
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/i$a;

    if-eqz v0, :cond_9

    iput-wide v4, v0, Lcom/vent/i$a;->bZY:J

    :cond_9
    sput-wide v4, Lcom/vent/bb;->ciA:J

    :cond_a
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    const/4 v1, -0x1

    const-string v2, "update"

    invoke-virtual {v0, v1, v7, v2}, Lcom/vent/ActVent;->a(IZLjava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    iget-object v0, p0, Lcom/vent/ActVent$2;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    move-object v1, v0

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/vent/ActVent$2;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x7

    goto :goto_2

    :cond_f
    iget v0, p0, Lcom/vent/ActVent$2;->ccU:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_b

    sput-wide v4, Lcom/vent/bb;->ciS:J

    invoke-static {}, Lcom/vent/bb;->EB()V

    goto :goto_3
.end method
