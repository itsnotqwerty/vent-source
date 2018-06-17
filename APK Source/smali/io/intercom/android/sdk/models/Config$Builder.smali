.class public final Lio/intercom/android/sdk/models/Config$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field audio_enabled:Ljava/lang/Boolean;

.field background_requests_enabled:Ljava/lang/Boolean;

.field base_color:Ljava/lang/String;

.field batch_user_update_period:Ljava/lang/Float;

.field features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field help_center_base_color:Ljava/lang/String;

.field help_center_url:Ljava/lang/String;

.field inbound_messages:Ljava/lang/Boolean;

.field is_first_request:Ljava/lang/Boolean;

.field local_rate_limit:Ljava/lang/Integer;

.field local_rate_limit_period:Ljava/lang/Long;

.field locale:Ljava/lang/String;

.field messenger_background:Ljava/lang/String;

.field metrics_enabled:Ljava/lang/Boolean;

.field name:Ljava/lang/String;

.field new_session_threshold:Ljava/lang/Long;

.field ping_delay:Ljava/lang/Float;

.field real_time_config:Lio/intercom/android/sdk/nexus/NexusConfig$Builder;

.field show_powered_by:Ljava/lang/Boolean;

.field soft_reset_timeout:Ljava/lang/Long;

.field user_update_dup_cache_max_age:Ljava/lang/Long;

.field welcome_message_plain_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/Config;
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->local_rate_limit_period:Ljava/lang/Long;

    if-nez v2, :cond_0

    sget-wide v15, Lio/intercom/android/sdk/models/Config;->DEFAULT_RATE_LIMIT_PERIOD_MS:J

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->local_rate_limit:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/16 v17, 0x64

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->batch_user_update_period:Ljava/lang/Float;

    if-nez v2, :cond_2

    sget-wide v18, Lio/intercom/android/sdk/models/Config;->DEFAULT_BATCH_USER_UPDATE_PERIOD_MS:J

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->user_update_dup_cache_max_age:Ljava/lang/Long;

    if-nez v2, :cond_3

    sget-wide v20, Lio/intercom/android/sdk/models/Config;->DEFAULT_CACHE_MAX_AGE_MS:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->soft_reset_timeout:Ljava/lang/Long;

    if-nez v2, :cond_4

    sget-wide v22, Lio/intercom/android/sdk/models/Config;->DEFAULT_SOFT_RESET_TIMEOUT_MS:J

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->new_session_threshold:Ljava/lang/Long;

    if-nez v2, :cond_5

    sget-wide v24, Lio/intercom/android/sdk/models/Config;->DEFAULT_SESSION_TIMEOUT_MS:J

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->ping_delay:Ljava/lang/Float;

    if-nez v2, :cond_6

    sget-wide v26, Lio/intercom/android/sdk/models/Config;->DEFAULT_PING_DELAY_MS:J

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->real_time_config:Lio/intercom/android/sdk/nexus/NexusConfig$Builder;

    if-nez v2, :cond_7

    new-instance v28, Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-direct/range {v28 .. v28}, Lio/intercom/android/sdk/nexus/NexusConfig;-><init>()V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->features:Ljava/util/Set;

    if-nez v2, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v31

    :goto_8
    new-instance v3, Lio/intercom/android/sdk/models/AutoValue_Config;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->name:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/android/sdk/models/Config$Builder;->base_color:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->welcome_message_plain_text:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->messenger_background:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->locale:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->is_first_request:Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrDefault(Ljava/lang/Boolean;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->inbound_messages:Ljava/lang/Boolean;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrDefault(Ljava/lang/Boolean;Z)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->show_powered_by:Ljava/lang/Boolean;

    const/4 v11, 0x1

    invoke-static {v2, v11}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrDefault(Ljava/lang/Boolean;Z)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->audio_enabled:Ljava/lang/Boolean;

    const/4 v12, 0x1

    invoke-static {v2, v12}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrDefault(Ljava/lang/Boolean;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->metrics_enabled:Ljava/lang/Boolean;

    const/4 v13, 0x1

    invoke-static {v2, v13}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrDefault(Ljava/lang/Boolean;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->background_requests_enabled:Ljava/lang/Boolean;

    const/4 v14, 0x1

    invoke-static {v2, v14}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrDefault(Ljava/lang/Boolean;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->help_center_url:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/android/sdk/models/Config$Builder;->help_center_base_color:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-direct/range {v3 .. v31}, Lio/intercom/android/sdk/models/AutoValue_Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZJIJJJJJLio/intercom/android/sdk/nexus/NexusConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-object v3

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/android/sdk/models/Config$Builder;->local_rate_limit_period:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->local_rate_limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->batch_user_update_period:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v0, v2

    move-wide/from16 v18, v0

    goto/16 :goto_2

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/android/sdk/models/Config$Builder;->user_update_dup_cache_max_age:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    goto/16 :goto_3

    :cond_4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/android/sdk/models/Config$Builder;->soft_reset_timeout:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    goto/16 :goto_4

    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/android/sdk/models/Config$Builder;->new_session_threshold:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v24

    goto/16 :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->ping_delay:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v0, v2

    move-wide/from16 v26, v0

    goto/16 :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/android/sdk/models/Config$Builder;->real_time_config:Lio/intercom/android/sdk/nexus/NexusConfig$Builder;

    invoke-virtual {v2}, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->build()Lio/intercom/android/sdk/nexus/NexusConfig;

    move-result-object v28

    goto/16 :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/android/sdk/models/Config$Builder;->features:Ljava/util/Set;

    move-object/from16 v31, v0

    goto/16 :goto_8
.end method
