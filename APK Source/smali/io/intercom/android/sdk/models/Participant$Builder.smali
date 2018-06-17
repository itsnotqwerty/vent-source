.class public final Lio/intercom/android/sdk/models/Participant$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

.field email:Ljava/lang/String;

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/Participant;
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/models/Participant$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "user"

    :goto_0
    iget-object v1, p0, Lio/intercom/android/sdk/models/Participant$Builder;->name:Ljava/lang/String;

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/intercom/android/sdk/models/Participant$Builder;->email:Ljava/lang/String;

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lio/intercom/android/sdk/utilities/NameUtils;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/models/Participant$Builder;->avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-static {v4, v1}, Lio/intercom/android/sdk/models/Avatar;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar;

    move-result-object v1

    :goto_2
    iget-object v4, p0, Lio/intercom/android/sdk/models/Participant$Builder;->id:Ljava/lang/String;

    invoke-static {v4}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v0, v2, v1}, Lio/intercom/android/sdk/models/Participant;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/models/Avatar;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/models/Participant$Builder;->type:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lio/intercom/android/sdk/models/Participant$Builder;->avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

    invoke-virtual {v4, v1}, Lio/intercom/android/sdk/models/Avatar$Builder;->withInitials(Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Avatar$Builder;->build()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v1

    goto :goto_2
.end method

.method public final withEmail(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Participant$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public final withId(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Participant$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final withName(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Participant$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final withType(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Participant$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
