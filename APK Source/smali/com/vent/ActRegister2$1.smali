.class final Lcom/vent/ActRegister2$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActRegister2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXw:Lcom/vent/ActRegister2;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    iput-object p1, p0, Lcom/vent/ActRegister2$1;->bXw:Lcom/vent/ActRegister2;

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
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vent/ActRegister2$1;->ccV:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/vent/bb;->c(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/bb;->ed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActRegister2$1;->bXw:Lcom/vent/ActRegister2;

    invoke-static {v0}, Lcom/vent/ax;->aL(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActRegister2$1;->bXw:Lcom/vent/ActRegister2;

    invoke-static {v0}, Lcom/vent/ax;->aM(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/vent/ActRegister2$1;->bXw:Lcom/vent/ActRegister2;

    iget-object v1, v0, Lcom/vent/ActRegister2;->bTI:Lcom/vent/views/b;

    invoke-virtual {v1}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vent/ActRegister3;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
