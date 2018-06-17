.class final Lcom/vent/ActSubscriptions$2;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActSubscriptions;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYG:Lcom/vent/ActSubscriptions;


# direct methods
.method constructor <init>(Lcom/vent/ActSubscriptions;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    iput-object p1, p0, Lcom/vent/ActSubscriptions$2;->bYG:Lcom/vent/ActSubscriptions;

    const/4 v1, 0x0

    const v6, 0x7f0f0108

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActSubscriptions$2;->bYG:Lcom/vent/ActSubscriptions;

    invoke-static {v0}, Lcom/vent/ax;->bb(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vent/ActSubscriptions$2;->bYG:Lcom/vent/ActSubscriptions;

    invoke-virtual {v0}, Lcom/vent/ActSubscriptions;->finish()V

    :cond_0
    return-void
.end method
