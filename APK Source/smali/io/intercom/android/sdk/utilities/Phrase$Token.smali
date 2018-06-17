.class abstract Lio/intercom/android/sdk/utilities/Phrase$Token;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/utilities/Phrase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Token"
.end annotation


# instance fields
.field next:Lio/intercom/android/sdk/utilities/Phrase$Token;

.field private final prev:Lio/intercom/android/sdk/utilities/Phrase$Token;


# direct methods
.method protected constructor <init>(Lio/intercom/android/sdk/utilities/Phrase$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/utilities/Phrase$Token;->prev:Lio/intercom/android/sdk/utilities/Phrase$Token;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lio/intercom/android/sdk/utilities/Phrase$Token;->next:Lio/intercom/android/sdk/utilities/Phrase$Token;

    :cond_0
    return-void
.end method


# virtual methods
.method abstract expand(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getFormattedLength()I
.end method

.method final getFormattedStart()I
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase$Token;->prev:Lio/intercom/android/sdk/utilities/Phrase$Token;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase$Token;->prev:Lio/intercom/android/sdk/utilities/Phrase$Token;

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase$Token;->getFormattedStart()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase$Token;->prev:Lio/intercom/android/sdk/utilities/Phrase$Token;

    invoke-virtual {v1}, Lio/intercom/android/sdk/utilities/Phrase$Token;->getFormattedLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
