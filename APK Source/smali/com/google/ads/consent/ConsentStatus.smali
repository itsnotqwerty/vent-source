.class public final enum Lcom/google/ads/consent/ConsentStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/consent/ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/consent/ConsentStatus;

.field public static final enum NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;
    .annotation runtime Lcom/google/a/a/c;
        value = "non_personalized"
    .end annotation
.end field

.field public static final enum PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;
    .annotation runtime Lcom/google/a/a/c;
        value = "personalized"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/consent/ConsentStatus;
    .annotation runtime Lcom/google/a/a/c;
        value = "unknown"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/ads/consent/ConsentStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/consent/ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    new-instance v0, Lcom/google/ads/consent/ConsentStatus;

    const-string v1, "NON_PERSONALIZED"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/consent/ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    new-instance v0, Lcom/google/ads/consent/ConsentStatus;

    const-string v1, "PERSONALIZED"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/consent/ConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/consent/ConsentStatus;

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/consent/ConsentStatus;->$VALUES:[Lcom/google/ads/consent/ConsentStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/consent/ConsentStatus;
    .locals 1

    const-class v0, Lcom/google/ads/consent/ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/consent/ConsentStatus;
    .locals 1

    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->$VALUES:[Lcom/google/ads/consent/ConsentStatus;

    invoke-virtual {v0}, [Lcom/google/ads/consent/ConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/consent/ConsentStatus;

    return-object v0
.end method
