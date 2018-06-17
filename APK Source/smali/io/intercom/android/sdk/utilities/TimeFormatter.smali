.class public Lio/intercom/android/sdk/utilities/TimeFormatter;
.super Ljava/lang/Object;


# instance fields
.field private absoluteDateFormatter:Ljava/text/SimpleDateFormat;

.field private absoluteTimeFormatter:Ljava/text/SimpleDateFormat;

.field private final context:Landroid/content/Context;

.field private final timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    return-void
.end method

.method private static createDateFormatter(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private getAdminActiveStatus(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 12

    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x1f

    const-wide/16 v6, 0x1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInMinutes(Ljava/util/Date;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_active_week_ago:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x17

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v3, Lio/intercom/android/sdk/R$string;->intercom_active_day_ago:I

    invoke-static {v2, v3}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v2

    const-string v3, "days"

    div-long/2addr v0, v10

    const-wide/16 v4, 0xd

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x18

    div-long/2addr v0, v4

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x35

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v3, Lio/intercom/android/sdk/R$string;->intercom_active_hour_ago:I

    invoke-static {v2, v3}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v2

    const-string v3, "hours"

    sub-long/2addr v0, v8

    div-long/2addr v0, v10

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x26

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_active_minute_ago:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "minutes"

    const-wide/16 v2, 0x2d

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_active_minute_ago:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "minutes"

    const-wide/16 v2, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_active_15m_ago:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "minutes"

    const-wide/16 v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_1
.end method

.method private getDateFromTimeStamp(J)Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private getDifferenceInDays(Ljava/util/Date;)J
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v1}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDifferenceInHours(Ljava/util/Date;)J
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v1}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDifferenceInMinutes(Ljava/util/Date;)J
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v1}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFormattedTime(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 12

    const-wide/16 v10, 0x0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInMinutes(Ljava/util/Date;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInHours(Ljava/util/Date;)J

    move-result-wide v2

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInDays(Ljava/util/Date;)J

    move-result-wide v4

    const-wide/16 v6, 0x7

    div-long v6, v4, v6

    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_time_week_ago:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "delta"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_time_day_ago:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "delta"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_0

    :cond_1
    cmp-long v4, v2, v10

    if-lez v4, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_time_hour_ago:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "delta"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v3, Lio/intercom/android/sdk/R$string;->intercom_time_minute_ago:I

    invoke-static {v2, v3}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v2

    const-string v3, "delta"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_time_just_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getAbsoluteDate(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, v1, v2}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAbsoluteDate(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAbsoluteDate(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->absoluteDateFormatter:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    const-string v0, "MMMM d"

    invoke-static {p3, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->createDateFormatter(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->absoluteDateFormatter:Ljava/text/SimpleDateFormat;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->absoluteDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, v1, v2}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAbsoluteTime(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAbsoluteTime(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->absoluteTimeFormatter:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    const-string v0, "hh:mm"

    invoke-static {p3, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->createDateFormatter(Ljava/util/Locale;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->absoluteTimeFormatter:Ljava/text/SimpleDateFormat;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->absoluteTimeFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdminActiveStatus(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Lio/intercom/android/sdk/Provider;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    invoke-interface {p2}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->shouldShowActiveOrAwayState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_active_state:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_away_state:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getLastActiveAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getLastActiveAt()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDateFromTimeStamp(J)Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAdminActiveStatus(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getFormattedTime(J)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getFormattedTime(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastActiveMinutes(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInMinutes(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdated(J)Ljava/lang/CharSequence;
    .locals 13

    const-wide/16 v10, 0x0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDateFromTimeStamp(J)Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInMinutes(Ljava/util/Date;)J

    move-result-wide v2

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInHours(Ljava/util/Date;)J

    move-result-wide v4

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getDifferenceInDays(Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v6, 0x7

    div-long v6, v0, v6

    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " weeks ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    cmp-long v6, v0, v10

    if-lez v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " days ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hours ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/TimeFormatter;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_time_just_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method shouldShowActiveOrAwayState(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
