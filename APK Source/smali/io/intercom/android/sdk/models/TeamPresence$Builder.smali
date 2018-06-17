.class public final Lio/intercom/android/sdk/models/TeamPresence$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/TeamPresence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field active_admins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant$Builder;",
            ">;"
        }
    .end annotation
.end field

.field expected_response_delay:Ljava/lang/String;

.field office_hours:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/TeamPresence;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/intercom/android/sdk/models/TeamPresence$Builder;->active_admins:Ljava/util/List;

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/CollectionUtils;->capacityFor(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/TeamPresence$Builder;->active_admins:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/models/TeamPresence$Builder;->active_admins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant$Builder;->build()Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/models/TeamPresence$Builder;->expected_response_delay:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/models/TeamPresence$Builder;->office_hours:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lio/intercom/android/sdk/models/TeamPresence;->create(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    return-object v0
.end method
