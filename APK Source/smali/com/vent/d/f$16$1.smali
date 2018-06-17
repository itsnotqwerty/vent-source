.class final Lcom/vent/d/f$16$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f$16;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cnW:Lcom/vent/d/f$16;


# direct methods
.method constructor <init>(Lcom/vent/d/f$16;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/d/f$16$1;->cnW:Lcom/vent/d/f$16;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/d/f$16$1;->cnW:Lcom/vent/d/f$16;

    iget-object v0, v0, Lcom/vent/d/f$16;->cnS:Lcom/vent/a/k;

    iget v1, v0, Lcom/vent/a/k;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/vent/a/k;->flags:I

    iget-object v0, p0, Lcom/vent/d/f$16$1;->cnW:Lcom/vent/d/f$16;

    iget-object v0, v0, Lcom/vent/d/f$16;->cln:Lcom/vent/d/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d/f$16$1;->cnW:Lcom/vent/d/f$16;

    iget-object v0, v0, Lcom/vent/d/f$16;->cln:Lcom/vent/d/c$b;

    iget-object v1, p0, Lcom/vent/d/f$16$1;->cnW:Lcom/vent/d/f$16;

    iget-object v1, v1, Lcom/vent/d/f$16;->cnS:Lcom/vent/a/k;

    iput-object v1, v0, Lcom/vent/d/c$b;->cmT:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/d/f$16$1;->cnW:Lcom/vent/d/f$16;

    iget-object v0, v0, Lcom/vent/d/f$16;->cln:Lcom/vent/d/c$b;

    invoke-virtual {v0}, Lcom/vent/d/c$b;->run()V

    :cond_0
    return-void
.end method
