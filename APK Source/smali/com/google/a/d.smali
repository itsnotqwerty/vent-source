.class public abstract enum Lcom/google/a/d;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/d;",
        ">;",
        "Lcom/google/a/e;"
    }
.end annotation


# static fields
.field public static final enum bgj:Lcom/google/a/d;

.field public static final enum bgk:Lcom/google/a/d;

.field public static final enum bgl:Lcom/google/a/d;

.field public static final enum bgm:Lcom/google/a/d;

.field public static final enum bgn:Lcom/google/a/d;

.field public static final enum bgo:Lcom/google/a/d;

.field private static final synthetic bgp:[Lcom/google/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/a/d$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1}, Lcom/google/a/d$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d;->bgj:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1}, Lcom/google/a/d$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d;->bgk:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1}, Lcom/google/a/d$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d;->bgl:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1}, Lcom/google/a/d$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d;->bgm:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1}, Lcom/google/a/d$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d;->bgn:Lcom/google/a/d;

    new-instance v0, Lcom/google/a/d$6;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    invoke-direct {v0, v1}, Lcom/google/a/d$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/d;->bgo:Lcom/google/a/d;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/a/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/d;->bgj:Lcom/google/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/d;->bgk:Lcom/google/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/a/d;->bgl:Lcom/google/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/a/d;->bgm:Lcom/google/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/a/d;->bgn:Lcom/google/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/a/d;->bgo:Lcom/google/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/d;->bgp:[Lcom/google/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/d;
    .locals 1

    const-class v0, Lcom/google/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/d;

    return-object v0
.end method

.method public static values()[Lcom/google/a/d;
    .locals 1

    sget-object v0, Lcom/google/a/d;->bgp:[Lcom/google/a/d;

    invoke-virtual {v0}, [Lcom/google/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/d;

    return-object v0
.end method
