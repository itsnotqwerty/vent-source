.class public Lcom/vent/FrgVentsList;
.super Lcom/vent/am;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/FrgVentsList$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/am",
        "<",
        "Lcom/vent/s;",
        "Lcom/vent/a/z;",
        ">;"
    }
.end annotation


# static fields
.field static final cex:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vent/s$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bWj:J

.field private cbR:Lcom/vent/a/m;

.field private cbS:Lcom/vent/a/m;

.field cdb:Ljava/lang/CharSequence;

.field cfF:I

.field public cfG:I

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/am;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vent/FrgVentsList;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;
    .locals 15

    new-instance v1, Lcom/vent/FrgVentsList;

    invoke-direct {v1}, Lcom/vent/FrgVentsList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v8, 0x7f0b006c

    move-object v3, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-virtual/range {v1 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V

    return-object v1
.end method

.method public static flushCache()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    sget-object v2, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/s$a;->bZY:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private u(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cba:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cba:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cba:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "noitemstext"

    const v2, 0x7f0f00d4

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgVentsList;->cdb:Ljava/lang/CharSequence;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "currentUserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    const-string v1, "currentGroupId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vent/a/m;

    const-string v3, "pagemode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ventfeed_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hackTop"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/vent/FrgVentsList;->url:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vent/FrgVentsList;->cbR:Lcom/vent/a/m;

    invoke-static {v5, v0}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vent/FrgVentsList;->cbS:Lcom/vent/a/m;

    invoke-static {v5, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/vent/FrgVentsList;->cfF:I

    if-ne v3, v5, :cond_1

    iget v5, p0, Lcom/vent/FrgVentsList;->cfG:I

    if-ne v4, v5, :cond_1

    iget-wide v8, p0, Lcom/vent/FrgVentsList;->bWj:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_2

    :cond_1
    iput-object v2, p0, Lcom/vent/FrgVentsList;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/FrgVentsList;->cbR:Lcom/vent/a/m;

    iput-object v1, p0, Lcom/vent/FrgVentsList;->cbS:Lcom/vent/a/m;

    iput v3, p0, Lcom/vent/FrgVentsList;->cfF:I

    iput v4, p0, Lcom/vent/FrgVentsList;->cfG:I

    iput-wide v6, p0, Lcom/vent/FrgVentsList;->bWj:J

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, p0, Lcom/vent/FrgVentsList;->cbR:Lcom/vent/a/m;

    iput-object v1, v0, Lcom/vent/s;->cbR:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, p0, Lcom/vent/FrgVentsList;->cbS:Lcom/vent/a/m;

    iput-object v1, v0, Lcom/vent/s;->cbS:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gentleLoad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vent/s;->cbd:Z

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->CH()V

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dw()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final Du()V
    .locals 6

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->CH()V

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/vent/FrgVentsList;->cfG:I

    packed-switch v0, :pswitch_data_0

    const-wide/32 v0, 0x1b7740

    move-wide v2, v0

    :goto_1
    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-wide v0, v0, Lcom/vent/s$a;->bZY:J

    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vent/FrgVentsList;->f(ZZ)V

    goto :goto_0

    :pswitch_0
    const-wide/32 v0, 0x36ee80

    move-wide v2, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final Dv()Z
    .locals 1

    iget v0, p0, Lcom/vent/FrgVentsList;->cfG:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final Dw()V
    .locals 3

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    iget v2, p0, Lcom/vent/FrgVentsList;->cfG:I

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final Dx()I
    .locals 3

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "noitemstext"

    const v2, 0x7f0f00d4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/vent/a/m;Lcom/vent/a/m;IIIIIZJ)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "desc"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "currentUserId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "currentGroupId"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "pagemode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "noitemstext"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "layout"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ventfeed_id"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ad_cache_id"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "gentleLoad"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hackTop"

    invoke-virtual {v0, v1, p11, p12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/vent/FrgVentsList;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgVentsList;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgVentsList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/FrgVentsList$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vent/FrgVentsList$2;-><init>(Lcom/vent/FrgVentsList;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/am;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v1, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "vent"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    iget-object v1, v1, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v1, v1, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_1

    const-string v1, "update"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    iget-object v1, v1, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v1, v1, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dw()V

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    invoke-virtual {v1, v3}, Lcom/vent/s;->ey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/s;->notifyItemChanged(I)V

    :cond_1
    :goto_2
    const-string v0, "404"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    const-string v0, "delete"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "404"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dw()V

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget v0, v0, Lcom/vent/s$a;->ccc:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->notifyDataSetChanged()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    invoke-virtual {v1, v3}, Lcom/vent/s;->ey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/s;->notifyItemRemoved(I)V

    goto :goto_2

    :sswitch_1
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_0

    const-string v3, "update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    invoke-virtual {v1}, Lcom/vent/s;->CU()I

    move-result v4

    move-object v1, v0

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v2, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v2, v1}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/b;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/vent/a/x;->EN()Lcom/vent/a/c;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    iput-object v1, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {v1}, Lcom/vent/a/x;->Fh()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/vent/a/z;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vent/a/z;->flags:I

    :goto_4
    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dw()V

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v2, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v2, Lcom/vent/s;

    invoke-virtual {v2, v3}, Lcom/vent/s;->ey(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vent/s;->notifyItemChanged(I)V

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_7
    iget v2, v0, Lcom/vent/a/z;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/vent/a/z;->flags:I

    goto :goto_4

    :sswitch_2
    if-ne p2, v1, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f0138

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
        0x25 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/FrgVentsList;->ceF:Z

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/FrgVentsList;->u(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/FrgVentsList$1;

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    check-cast v2, Lcom/vent/a;

    iget-object v4, p0, Lcom/vent/FrgVentsList;->cbR:Lcom/vent/a/m;

    iget-object v5, p0, Lcom/vent/FrgVentsList;->cbS:Lcom/vent/a/m;

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ad_cache_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/FrgVentsList$1;-><init>(Lcom/vent/FrgVentsList;Lcom/vent/a;Lcom/vent/am;Lcom/vent/a/m;Lcom/vent/a/m;)V

    iput-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gentleLoad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vent/s;->cbd:Z

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    new-instance v1, Lcom/vent/s$a;

    invoke-direct {v1}, Lcom/vent/s$a;-><init>()V

    iput-object v1, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/FrgVentsList;->Dv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/FrgVentsList;->cex:Landroid/util/SparseArray;

    iget v1, p0, Lcom/vent/FrgVentsList;->cfG:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    iput-object v0, v1, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, v0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$f;

    invoke-virtual {v0}, Lcom/vent/s$f;->pause()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/vent/am;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/am;->onResume()V

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-object v1, v0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/vent/s;->cbZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/s$f;

    invoke-virtual {v0}, Lcom/vent/s$f;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method
