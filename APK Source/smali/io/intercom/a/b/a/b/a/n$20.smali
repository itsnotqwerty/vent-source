.class final Lio/intercom/a/b/a/b/a/n$20;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v1

    sget-object v2, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginObject()V

    move v6, v0

    move v5, v0

    move v4, v0

    move v3, v0

    move v2, v0

    move v1, v0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v7, Lio/intercom/a/b/a/d/b;->cTz:Lio/intercom/a/b/a/d/b;

    if-eq v0, v7, :cond_7

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextInt()I

    move-result v0

    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    goto :goto_1

    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endObject()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kl()Lio/intercom/a/b/a/d/c;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Km()Lio/intercom/a/b/a/d/c;

    goto :goto_0
.end method
