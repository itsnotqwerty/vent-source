.class public Lio/intercom/android/sdk/utilities/LocationFormatter;
.super Ljava/lang/Object;


# static fields
.field private static final LOWER_CASE_ENGLISH_AM_PM:[Ljava/lang/String;

.field private static final ONE_MINUTE_IN_MILLIS:J

.field private static final UPPER_CASE_EN_GB_AM_PM:[Ljava/lang/String;

.field private static final UPPER_CASE_EN_US_AM_PM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "AM"

    aput-object v1, v0, v2

    const-string v1, "PM"

    aput-object v1, v0, v3

    sput-object v0, Lio/intercom/android/sdk/utilities/LocationFormatter;->UPPER_CASE_EN_US_AM_PM:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "a.m."

    aput-object v1, v0, v2

    const-string v1, "p.m."

    aput-object v1, v0, v3

    sput-object v0, Lio/intercom/android/sdk/utilities/LocationFormatter;->UPPER_CASE_EN_GB_AM_PM:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "am"

    aput-object v1, v0, v2

    const-string v1, "pm"

    aput-object v1, v0, v3

    sput-object v0, Lio/intercom/android/sdk/utilities/LocationFormatter;->LOWER_CASE_ENGLISH_AM_PM:[Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/utilities/LocationFormatter;->ONE_MINUTE_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationString(Landroid/content/Context;Lio/intercom/android/sdk/models/Location;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getTimezoneOffset()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mma"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getTimezoneOffset()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->setRawOffset(I)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lio/intercom/android/sdk/utilities/LocationFormatter;->UPPER_CASE_EN_GB_AM_PM:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lio/intercom/android/sdk/utilities/LocationFormatter;->UPPER_CASE_EN_US_AM_PM:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/utilities/LocationFormatter;->LOWER_CASE_ENGLISH_AM_PM:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/text/DateFormatSymbols;->setAmPmStrings([Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_profile_location:I

    invoke-static {p0, v0}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static postOnNextMinute(Landroid/view/View;Ljava/lang/Runnable;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V
    .locals 4

    invoke-interface {p2}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lio/intercom/android/sdk/utilities/LocationFormatter;->ONE_MINUTE_IN_MILLIS:J

    rem-long/2addr v0, v2

    sget-wide v2, Lio/intercom/android/sdk/utilities/LocationFormatter;->ONE_MINUTE_IN_MILLIS:J

    sub-long v0, v2, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
