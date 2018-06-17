.class public Lio/intercom/android/sdk/models/EventData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/EventData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/models/EventData;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL:Lio/intercom/android/sdk/models/EventData;


# instance fields
.field private final eventAsPlainText:Ljava/lang/String;

.field private final participant:Lio/intercom/android/sdk/models/EventParticipant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/models/EventData;

    new-instance v1, Lio/intercom/android/sdk/models/EventData$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/EventData$Builder;-><init>()V

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/models/EventData;-><init>(Lio/intercom/android/sdk/models/EventData$Builder;)V

    sput-object v0, Lio/intercom/android/sdk/models/EventData;->NULL:Lio/intercom/android/sdk/models/EventData;

    new-instance v0, Lio/intercom/android/sdk/models/EventData$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/EventData$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/models/EventData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/intercom/android/sdk/models/EventParticipant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/EventParticipant;

    iput-object v0, p0, Lio/intercom/android/sdk/models/EventData;->participant:Lio/intercom/android/sdk/models/EventParticipant;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/EventData;->eventAsPlainText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/intercom/android/sdk/models/EventData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/models/EventData$Builder;->participant:Lio/intercom/android/sdk/models/EventParticipant$Builder;

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/models/EventParticipant;->NULL:Lio/intercom/android/sdk/models/EventParticipant;

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/EventData;->participant:Lio/intercom/android/sdk/models/EventParticipant;

    iget-object v0, p1, Lio/intercom/android/sdk/models/EventData$Builder;->eventAsPlainText:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/models/EventData;->eventAsPlainText:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/EventData$Builder;->participant:Lio/intercom/android/sdk/models/EventParticipant$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/EventParticipant$Builder;->build()Lio/intercom/android/sdk/models/EventParticipant;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/models/EventData$Builder;->eventAsPlainText:Ljava/lang/String;

    goto :goto_1
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/models/EventData$Builder;Lio/intercom/android/sdk/models/EventData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/models/EventData;-><init>(Lio/intercom/android/sdk/models/EventData$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventAsPlainText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/EventData;->eventAsPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Lio/intercom/android/sdk/models/EventParticipant;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/EventData;->participant:Lio/intercom/android/sdk/models/EventParticipant;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/EventData;->participant:Lio/intercom/android/sdk/models/EventParticipant;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/EventData;->eventAsPlainText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
