.class public Lio/intercom/android/sdk/blocks/function/TimestampAdder;
.super Ljava/lang/Object;


# instance fields
.field private final currentDate:Ljava/util/Calendar;

.field private final nextDate:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->currentDate:Ljava/util/Calendar;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->nextDate:Ljava/util/Calendar;

    return-void
.end method

.method public static create()Lio/intercom/android/sdk/blocks/function/TimestampAdder;
    .locals 3

    new-instance v0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/blocks/function/TimestampAdder;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0
.end method

.method private isDivider(Lio/intercom/android/sdk/models/Part;)Z
    .locals 2

    const-string v0, "day_divider_style"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addDayDividers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->nextDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->isDivider(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->nextDate:Ljava/util/Calendar;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->datesAreFromDifferentDays()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->isDivider(Lio/intercom/android/sdk/models/Part;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Part$Builder;-><init>()V

    const-string v4, "day_divider_style"

    invoke-virtual {v0, v4}, Lio/intercom/android/sdk/models/Part$Builder;->withStyle(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/models/Part$Builder;->withCreatedAt(J)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part$Builder;->build()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->currentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->nextDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method datesAreFromDifferentDays()Z
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x1

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->nextDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->nextDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
