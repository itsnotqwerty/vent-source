.class final enum Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/profile/ProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProfileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

.field public static final enum COLLAPSED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

.field public static final enum EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

.field public static final enum IDLE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->COLLAPSED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    new-instance v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    new-instance v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->IDLE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->COLLAPSED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->IDLE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    aput-object v1, v0, v4

    sput-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->$VALUES:[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->$VALUES:[Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    return-object v0
.end method
