.class final enum Lio/intercom/android/sdk/nexus/NexusEventType$14;
.super Lio/intercom/android/sdk/nexus/NexusEventType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/nexus/NexusEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/android/sdk/nexus/NexusEventType;-><init>(Ljava/lang/String;ILio/intercom/android/sdk/nexus/NexusEventType$1;)V

    return-void
.end method


# virtual methods
.method protected final toJsonObject(Lio/intercom/android/sdk/nexus/NexusEvent;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lio/intercom/android/sdk/nexus/NexusEventType;->toJsonObject(Lio/intercom/android/sdk/nexus/NexusEvent;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eventData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adminId"

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v3

    const-string v4, "adminId"

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "assigneeId"

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v3

    const-string v4, "assigneeId"

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
