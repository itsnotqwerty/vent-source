.class final Lio/branch/referral/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic cxH:Lio/branch/referral/l;

.field cxI:Ljava/lang/String;

.field cxJ:Ljava/lang/String;

.field private cxK:I

.field cxL:Ljava/lang/String;

.field cxM:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/branch/referral/l;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/branch/referral/l$a;->cxH:Lio/branch/referral/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/branch/referral/l$a;->cxI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lio/branch/referral/l$a;->cxK:I

    const-string v0, ""

    iput-object v0, p0, Lio/branch/referral/l$a;->cxL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/branch/referral/l$a;->cxM:Ljava/lang/String;

    :try_start_0
    iput-object p3, p0, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    sget-object v0, Lio/branch/referral/n$a;->czA:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/branch/referral/n$a;->czA:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/l$a;->cxI:Ljava/lang/String;

    :cond_0
    sget-object v0, Lio/branch/referral/n$a;->czC:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/branch/referral/n$a;->czC:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/branch/referral/l$a;->cxK:I

    :cond_1
    sget-object v0, Lio/branch/referral/n$a;->czD:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/branch/referral/n$a;->czD:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/l$a;->cxL:Ljava/lang/String;

    :cond_2
    sget-object v0, Lio/branch/referral/n$a;->czE:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lio/branch/referral/n$a;->czE:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/l$a;->cxM:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lio/branch/referral/l;Lorg/json/JSONObject;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/l$a;-><init>(Lio/branch/referral/l;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/branch/referral/l$a;Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    iget-object v0, p0, Lio/branch/referral/l$a;->cxI:Ljava/lang/String;

    invoke-static {v0}, Lio/branch/referral/q;->eO(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lio/branch/referral/l$a;->cxK:I

    if-gt v1, v0, :cond_0

    iget v0, p0, Lio/branch/referral/l$a;->cxK:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
