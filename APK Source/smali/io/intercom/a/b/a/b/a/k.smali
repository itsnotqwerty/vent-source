.class public final Lio/intercom/a/b/a/b/a/k;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final cRW:Lio/intercom/a/b/a/s;


# instance fields
.field private final biy:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/b/a/b/a/k$1;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/a/k$1;-><init>()V

    sput-object v0, Lio/intercom/a/b/a/b/a/k;->cRW:Lio/intercom/a/b/a/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/k;->biy:Ljava/text/DateFormat;

    return-void
.end method

.method private declared-synchronized a(Lio/intercom/a/b/a/d/c;Ljava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fe(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/k;->biy:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Lio/intercom/a/b/a/d/a;)Ljava/sql/Time;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/k;->biy:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v0, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/a/k;->e(Lio/intercom/a/b/a/d/a;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Time;

    invoke-direct {p0, p1, p2}, Lio/intercom/a/b/a/b/a/k;->a(Lio/intercom/a/b/a/d/c;Ljava/sql/Time;)V

    return-void
.end method
