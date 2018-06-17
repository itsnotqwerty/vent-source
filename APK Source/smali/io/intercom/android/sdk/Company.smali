.class public Lio/intercom/android/sdk/Company;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/Company$Builder;
    }
.end annotation


# static fields
.field private static final COMPANY_ID:Ljava/lang/String; = "id"

.field private static final CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final CUSTOM_ATTRIBUTES:Ljava/lang/String; = "custom_attributes"

.field private static final MONTHLY_SPEND:Ljava/lang/String; = "monthly_spend"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PLAN:Ljava/lang/String; = "plan"

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final customAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/Company;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/Company$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/Company$Builder;->attributes:Ljava/util/Map;

    iput-object v0, p0, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    iget-object v0, p1, Lio/intercom/android/sdk/Company$Builder;->customAttributes:Ljava/util/Map;

    iput-object v0, p0, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/Company;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lio/intercom/android/sdk/Company;

    iget-object v1, p0, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    iget-object v2, p1, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    iget-object v1, p1, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    const-string v1, "custom_attributes"

    iget-object v2, p0, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Company{attributes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/Company;->attributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/Company;->customAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
