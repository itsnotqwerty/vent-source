.class public final Lio/intercom/android/sdk/utilities/Phrase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/utilities/Phrase$KeyToken;,
        Lio/intercom/android/sdk/utilities/Phrase$LeftCurlyBracketToken;,
        Lio/intercom/android/sdk/utilities/Phrase$TextToken;,
        Lio/intercom/android/sdk/utilities/Phrase$Token;
    }
.end annotation


# static fields
.field private static final EOF:I


# instance fields
.field private curChar:C

.field private curCharIndex:I

.field private formatted:Ljava/lang/CharSequence;

.field private head:Lio/intercom/android/sdk/utilities/Phrase$Token;

.field private final keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keysToValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->keysToValues:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_0
    iput-char v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    iput-object p1, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/Phrase;->token(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$Token;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->head:Lio/intercom/android/sdk/utilities/Phrase$Token;

    if-nez v1, :cond_1

    iput-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->head:Lio/intercom/android/sdk/utilities/Phrase$Token;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private consume()V
    .locals 2

    iget v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    iget v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-char v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    iget v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static from(Landroid/app/Fragment;I)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/res/Resources;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/res/Resources;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/content/res/Resources;I)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/Phrase;->from(Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/view/View;I)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/res/Resources;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/utilities/Phrase;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/utilities/Phrase;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private key(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$KeyToken;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->consume()V

    :goto_0
    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_0
    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_1
    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_3

    :cond_2
    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->consume()V

    goto :goto_0

    :cond_3
    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing closing brace: } in \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->consume()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty key: {} in \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;

    invoke-direct {v1, p1, v0}, Lio/intercom/android/sdk/utilities/Phrase$KeyToken;-><init>(Lio/intercom/android/sdk/utilities/Phrase$Token;Ljava/lang/String;)V

    return-object v1
.end method

.method private leftCurlyBracket(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$LeftCurlyBracketToken;
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->consume()V

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->consume()V

    new-instance v0, Lio/intercom/android/sdk/utilities/Phrase$LeftCurlyBracketToken;

    invoke-direct {v0, p1}, Lio/intercom/android/sdk/utilities/Phrase$LeftCurlyBracketToken;-><init>(Lio/intercom/android/sdk/utilities/Phrase$Token;)V

    return-object v0
.end method

.method private lookahead()C
    .locals 2

    iget v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    iget v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private text(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$TextToken;
    .locals 3

    iget v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    :goto_0
    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->consume()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/intercom/android/sdk/utilities/Phrase$TextToken;

    iget v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->curCharIndex:I

    sub-int v0, v2, v0

    invoke-direct {v1, p1, v0}, Lio/intercom/android/sdk/utilities/Phrase$TextToken;-><init>(Lio/intercom/android/sdk/utilities/Phrase$Token;I)V

    return-object v1
.end method

.method private token(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$Token;
    .locals 4

    const/16 v1, 0x7b

    iget-char v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-char v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->curChar:C

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/Phrase;->lookahead()C

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/Phrase;->leftCurlyBracket(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$LeftCurlyBracketToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/Phrase;->key(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$KeyToken;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'; expected key in \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/utilities/Phrase;->text(Lio/intercom/android/sdk/utilities/Phrase$Token;)Lio/intercom/android/sdk/utilities/Phrase$TextToken;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final format()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->formatted:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->keysToValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->keysToValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing keys: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->head:Lio/intercom/android/sdk/utilities/Phrase$Token;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->keysToValues:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase$Token;->expand(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V

    iget-object v0, v0, Lio/intercom/android/sdk/utilities/Phrase$Token;->next:Lio/intercom/android/sdk/utilities/Phrase$Token;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lio/intercom/android/sdk/utilities/Phrase;->formatted:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->formatted:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final into(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TextView must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final put(Ljava/lang/String;I)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null value for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->keysToValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->formatted:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final putOptional(Ljava/lang/String;I)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final putOptional(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/utilities/Phrase;->pattern:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
