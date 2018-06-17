.class final Lcom/vent/FrgSearchBoth$3$1;
.super Lcom/vent/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgSearchBoth$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfz:Lcom/vent/FrgSearchBoth$3;


# direct methods
.method constructor <init>(Lcom/vent/FrgSearchBoth$3;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    invoke-direct {p0, p2, p3}, Lcom/vent/aa;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3$1;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iput-boolean v2, v0, Lcom/vent/q;->bZp:Z

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3$1;->ccQ:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/vent/q;->cbf:Z

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vent/q;->bZY:J

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-boolean v0, v0, Lcom/vent/q;->cbf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v0, v2, v2, v2}, Lcom/vent/FrgSearchBoth;->c(ZZZ)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0, v2, v2}, Lcom/vent/q;->g(ZZ)V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-object v0, v0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    sput-object v0, Lcom/vent/FrgSearchBoth;->cfw:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3$1;->cfz:Lcom/vent/FrgSearchBoth$3;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-wide v0, v0, Lcom/vent/q;->bZY:J

    sput-wide v0, Lcom/vent/FrgSearchBoth;->cfx:J

    goto/16 :goto_0
.end method
