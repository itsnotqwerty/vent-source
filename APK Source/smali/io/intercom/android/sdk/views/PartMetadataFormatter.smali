.class public Lio/intercom/android/sdk/views/PartMetadataFormatter;
.super Ljava/lang/Object;


# instance fields
.field private final timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/utilities/TimeFormatter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/views/PartMetadataFormatter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    return-void
.end method

.method private formatLastPart(Lio/intercom/android/sdk/models/Part;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isDisplayDelivered()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_delivered:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "seen"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getSeenByAdmin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_message_seen:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/views/PartMetadataFormatter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "unseen"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getSeenByAdmin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_message_unseen:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private formatPart(Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isDisplayDelivered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/PartMetadataFormatter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAbsoluteTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getMetadataString(Lio/intercom/android/sdk/models/Part;ZLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/views/PartMetadataFormatter$1;->$SwitchMap$io$intercom$android$sdk$models$Part$MessageState:[I

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part$MessageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lio/intercom/android/sdk/views/PartMetadataFormatter;->formatLastPart(Lio/intercom/android/sdk/models/Part;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget v0, Lio/intercom/android/sdk/R$string;->intercom_message_state_sending:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget v0, Lio/intercom/android/sdk/R$string;->intercom_message_failed_try_again:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/PartMetadataFormatter;->formatPart(Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
