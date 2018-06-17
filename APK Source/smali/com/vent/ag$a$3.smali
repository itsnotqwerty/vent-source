.class final Lcom/vent/ag$a$3;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ag$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cec:Lcom/vent/ag$a;

.field final synthetic ced:Lcom/vent/ag$b;


# direct methods
.method constructor <init>(Lcom/vent/ag$a;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/vent/ag$b;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ag$a$3;->cec:Lcom/vent/ag$a;

    iput-object p5, p0, Lcom/vent/ag$a$3;->ced:Lcom/vent/ag$b;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ag$a$3;->ced:Lcom/vent/ag$b;

    iget-object v1, p0, Lcom/vent/ag$a$3;->ccV:Lorg/json/JSONObject;

    const-string v2, "count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/ag$b;->ceh:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vent/ag$a$3;->cec:Lcom/vent/ag$a;

    iget-object v0, v0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/ag$a$3;->ced:Lcom/vent/ag$b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ag$a$3;->cec:Lcom/vent/ag$a;

    invoke-virtual {v1, v0}, Lcom/vent/ag$a;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
