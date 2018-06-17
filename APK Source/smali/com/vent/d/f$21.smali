.class final Lcom/vent/d/f$21;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/z;Lcom/vent/a/m;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field private cnP:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p4, p0, Lcom/vent/d/f$21;->bXe:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vent/d/f$21;->cnP:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/vent/d/f$21;->cnP:I

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vent/d/f$21;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/ax;->aP(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected final b(Ljava/lang/Void;)V
    .locals 2

    iget v0, p0, Lcom/vent/d/f$21;->ccU:I

    iput v0, p0, Lcom/vent/d/f$21;->cnP:I

    iget v0, p0, Lcom/vent/d/f$21;->ccU:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/vent/d/f$21;->ccU:I

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/ad;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/d/f$21;->b(Ljava/lang/Void;)V

    return-void
.end method
