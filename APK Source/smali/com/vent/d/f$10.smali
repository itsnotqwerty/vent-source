.class final Lcom/vent/d/f$10;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/m;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic cnO:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p4, p0, Lcom/vent/d/f$10;->cnO:Ljava/lang/Runnable;

    const v6, 0x7f0f0002

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

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v1, v0, Lcom/vent/a/y;->ckT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vent/a/y;->ckT:I

    invoke-static {}, Lcom/vent/bb;->EB()V

    iget-object v0, p0, Lcom/vent/d/f$10;->cnO:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/d/f$10;->cnO:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
