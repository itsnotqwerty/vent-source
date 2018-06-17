.class public final Lio/intercom/android/sdk/models/Upload$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Upload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field acl:Ljava/lang/String;

.field aws_access_key:Ljava/lang/String;

.field content_type:Ljava/lang/String;

.field id:I

.field key:Ljava/lang/String;

.field policy:Ljava/lang/String;

.field public_url:Ljava/lang/String;

.field signature:Ljava/lang/String;

.field success_action_status:Ljava/lang/String;

.field upload_destination:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/Upload;
    .locals 11

    new-instance v0, Lio/intercom/android/sdk/models/AutoValue_Upload;

    iget v1, p0, Lio/intercom/android/sdk/models/Upload$Builder;->id:I

    iget-object v2, p0, Lio/intercom/android/sdk/models/Upload$Builder;->acl:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/models/Upload$Builder;->aws_access_key:Ljava/lang/String;

    invoke-static {v3}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/models/Upload$Builder;->content_type:Ljava/lang/String;

    invoke-static {v4}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/models/Upload$Builder;->key:Ljava/lang/String;

    invoke-static {v5}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/intercom/android/sdk/models/Upload$Builder;->policy:Ljava/lang/String;

    invoke-static {v6}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/intercom/android/sdk/models/Upload$Builder;->public_url:Ljava/lang/String;

    invoke-static {v7}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lio/intercom/android/sdk/models/Upload$Builder;->signature:Ljava/lang/String;

    invoke-static {v8}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lio/intercom/android/sdk/models/Upload$Builder;->success_action_status:Ljava/lang/String;

    invoke-static {v9}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lio/intercom/android/sdk/models/Upload$Builder;->upload_destination:Ljava/lang/String;

    invoke-static {v10}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lio/intercom/android/sdk/models/AutoValue_Upload;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
