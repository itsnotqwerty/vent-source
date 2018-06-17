.class final Lio/branch/referral/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/referral/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cwx:Lio/branch/referral/d;


# direct methods
.method constructor <init>(Lio/branch/referral/d;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/d$1;->cwx:Lio/branch/referral/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eD(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/d$1;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "bnc_triggered_by_fb_app_link"

    invoke-static {v1, v0}, Lio/branch/referral/q;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v1, v1, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/d$1;->cwx:Lio/branch/referral/d;

    invoke-static {v1}, Lio/branch/referral/d;->a(Lio/branch/referral/d;)Lio/branch/referral/q;

    const-string v1, "bnc_link_click_identifier"

    invoke-static {v1, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/branch/referral/d$1;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    sget-object v1, Lio/branch/referral/r$a;->cBe:Lio/branch/referral/r$a;

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r$a;)V

    iget-object v0, p0, Lio/branch/referral/d$1;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->c(Lio/branch/referral/d;)V

    return-void
.end method
