.class public final Lio/intercom/a/a/a/c/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/a/d;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic aw(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lio/intercom/a/a/a/c/a/a/b;->o(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/intercom/a/a/a/c/a/a/b;->p(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 5

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2, p3}, Lio/intercom/a/a/a/c/a/a/b;->aL(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOn:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p4, v0}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v1, Lio/intercom/a/a/a/h/b;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lio/intercom/a/a/a/c/c/a/d;->context:Landroid/content/Context;

    new-instance v3, Lio/intercom/a/a/a/c/a/a/c$b;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/intercom/a/a/a/c/a/a/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v2, p1, v3}, Lio/intercom/a/a/a/c/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;Lio/intercom/a/a/a/c/a/a/d;)Lio/intercom/a/a/a/c/a/a/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
