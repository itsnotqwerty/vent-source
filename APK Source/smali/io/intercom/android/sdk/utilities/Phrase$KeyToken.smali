.class Lio/intercom/android/sdk/utilities/Phrase$KeyToken;
.super Lio/intercom/android/sdk/utilities/Phrase$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/utilities/Phrase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyToken"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private value:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/utilities/Phrase$Token;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/Phrase$Token;-><init>(Lio/intercom/android/sdk/utilities/Phrase$Token;)V

    iput-object p2, p0, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method expand(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V
    .locals 3
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

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->key:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->getFormattedStart()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->value:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method getFormattedLength()I
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;->value:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method
