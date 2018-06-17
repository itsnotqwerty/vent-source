.class public final enum Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/profile/ProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

.field public static final enum TEAM:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

.field public static final enum TEAMMATE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    const-string v1, "TEAMMATE"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAMMATE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    new-instance v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    const-string v1, "TEAM"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAM:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAMMATE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAM:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    aput-object v1, v0, v3

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->$VALUES:[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->$VALUES:[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    return-object v0
.end method
