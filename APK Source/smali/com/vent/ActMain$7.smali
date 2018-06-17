.class final Lcom/vent/ActMain$7;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 6

    const v5, 0x104000a

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    if-eqz p1, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/vent/MyApplication;->cgA:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActMain$7;->ccV:Lorg/json/JSONObject;

    const-string v2, "android_buildnum_block"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    iget-object v0, p0, Lcom/vent/ActMain$7;->ccV:Lorg/json/JSONObject;

    const-string v3, "android_buildnum_nag"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    sget v3, Lcom/vent/MyApplication;->cgG:I

    if-ge v3, v2, :cond_3

    iget-object v0, p0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v2, p0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    invoke-direct {v0, v2}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01c2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActMain$7$1;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$7$1;-><init>(Lcom/vent/ActMain$7;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->cix:J

    :goto_1
    invoke-static {}, Lcom/vent/bb;->EB()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/vent/ActMain$7;->ccV:Lorg/json/JSONObject;

    const-string v2, "android_buildnum_block_amazon"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :try_start_3
    iget-object v0, p0, Lcom/vent/ActMain$7;->ccV:Lorg/json/JSONObject;

    const-string v3, "android_buildnum_nag_amazon"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget v1, Lcom/vent/MyApplication;->cgG:I

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/ActMain$7;->bXa:Lcom/vent/ActMain;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01c3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActMain$7$2;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$7$2;-><init>(Lcom/vent/ActMain$7;)V

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/vent/bb;->cix:J

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vent/bb;->cix:J

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
