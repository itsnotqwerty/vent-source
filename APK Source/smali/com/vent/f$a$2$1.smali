.class final Lcom/vent/f$a$2$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/f$a$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZU:Lcom/vent/f$a$2;


# direct methods
.method constructor <init>(Lcom/vent/f$a$2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/f$a$2$1;->bZU:Lcom/vent/f$a$2;

    const v6, 0x7f0f0047

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
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/f$a$2$1;->bZU:Lcom/vent/f$a$2;

    iget-object v0, v0, Lcom/vent/f$a$2;->bZR:Lcom/vent/f$a;

    iget-object v0, v0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    invoke-virtual {v0}, Lcom/vent/f;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vent/f$a$2$1;->bZU:Lcom/vent/f$a$2;

    iget-object v1, v1, Lcom/vent/f$a$2;->bZT:Lcom/vent/a/f;

    iget-object v1, v1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-static {v1}, Lcom/vent/bb;->m(Landroid/net/Uri;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vent/ba;->k(IZ)V

    :cond_0
    invoke-static {}, Lcom/vent/bb;->Ew()V

    :cond_1
    return-void
.end method
