.class final Lio/branch/referral/d$l;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lio/branch/referral/r;",
        "Ljava/lang/Void;",
        "Lio/branch/referral/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cwx:Lio/branch/referral/d;


# direct methods
.method private constructor <init>(Lio/branch/referral/d;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/d$l;->cwx:Lio/branch/referral/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/branch/referral/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/referral/d$l;-><init>(Lio/branch/referral/d;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, [Lio/branch/referral/r;

    const-string v0, "v1/url"

    iget-object v1, p0, Lio/branch/referral/d$l;->cwx:Lio/branch/referral/d;

    invoke-static {v1}, Lio/branch/referral/d;->i(Lio/branch/referral/d;)Lio/branch/referral/a/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lio/branch/referral/r;->cxm:Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/branch/referral/d$l;->cwx:Lio/branch/referral/d;

    invoke-static {v4}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/q;->GS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lio/branch/referral/n$c;->cAf:Lio/branch/referral/n$c;

    iget-object v3, v3, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/referral/d$l;->cwx:Lio/branch/referral/d;

    invoke-static {v4}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/q;->GU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lio/branch/referral/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/ae;

    move-result-object v0

    return-object v0
.end method
