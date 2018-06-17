.class final Lcom/vent/bb$5$1;
.super Lcom/vent/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/bb$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cjv:Lcom/vent/bb$5;


# direct methods
.method constructor <init>(Lcom/vent/bb$5;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vent/bb$5$1;->cjv:Lcom/vent/bb$5;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vent/ad;->aQ(Z)V

    return-void
.end method
