.class final Lcom/vent/d/f$25;
.super Lcom/vent/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic caC:Lcom/vent/a/x;

.field final synthetic cnI:Lcom/vent/d/f$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Lcom/vent/d/f$a;Lcom/vent/a/x;)V
    .locals 11

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/vent/d/f$25;->cnI:Lcom/vent/d/f$a;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/vent/d/f$25;->caC:Lcom/vent/a/x;

    const/4 v2, 0x0

    const v7, 0x7f0f0105

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/vent/ab;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/ab;->aQ(Z)V

    iget-object v0, p0, Lcom/vent/d/f$25;->cnI:Lcom/vent/d/f$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/d/f$25;->cnI:Lcom/vent/d/f$a;

    new-instance v2, Lcom/vent/a/y;

    iget-object v0, p0, Lcom/vent/d/f$25;->ccR:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/d/f$25;->ccR:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    :goto_0
    invoke-direct {v2, v0}, Lcom/vent/a/y;-><init>(Lcom/vent/a/x;)V

    iput-object v2, v1, Lcom/vent/d/f$a;->ceP:Lcom/vent/a/y;

    iget-object v0, p0, Lcom/vent/d/f$25;->cnI:Lcom/vent/d/f$a;

    iget-object v0, v0, Lcom/vent/d/f$a;->ceP:Lcom/vent/a/y;

    iget v1, v0, Lcom/vent/a/y;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/vent/a/y;->flags:I

    iget-object v0, p0, Lcom/vent/d/f$25;->cnI:Lcom/vent/d/f$a;

    iput-boolean p1, v0, Lcom/vent/d/f$a;->cog:Z

    iget-object v0, p0, Lcom/vent/d/f$25;->cnI:Lcom/vent/d/f$a;

    invoke-virtual {v0}, Lcom/vent/d/f$a;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/d/f$25;->caC:Lcom/vent/a/x;

    goto :goto_0
.end method
