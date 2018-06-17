.class Lio/intercom/android/sdk/utilities/Phrase$TextToken;
.super Lio/intercom/android/sdk/utilities/Phrase$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/utilities/Phrase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextToken"
.end annotation


# instance fields
.field private final textLength:I


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/utilities/Phrase$Token;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/Phrase$Token;-><init>(Lio/intercom/android/sdk/utilities/Phrase$Token;)V

    iput p2, p0, Lio/intercom/android/sdk/utilities/Phrase$TextToken;->textLength:I

    return-void
.end method


# virtual methods
.method expand(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V
    .locals 0
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

    return-void
.end method

.method getFormattedLength()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/utilities/Phrase$TextToken;->textLength:I

    return v0
.end method
