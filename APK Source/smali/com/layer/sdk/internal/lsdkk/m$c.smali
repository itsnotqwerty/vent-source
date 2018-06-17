.class public Lcom/layer/sdk/internal/lsdkk/m$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/m$c;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/m$c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid MetadataImpl key path format: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$c;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$c;->a()[Lcom/layer/sdk/internal/lsdkk/m$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/m$c;->a()[Lcom/layer/sdk/internal/lsdkk/m$b;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/layer/sdk/internal/lsdkk/m$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a()[Lcom/layer/sdk/internal/lsdkk/m$b;
    .locals 5

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lcom/layer/sdk/internal/lsdkk/m$b;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/layer/sdk/internal/lsdkk/m$b;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/layer/sdk/internal/lsdkk/m$b;-><init>(Ljava/lang/CharSequence;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$c;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
