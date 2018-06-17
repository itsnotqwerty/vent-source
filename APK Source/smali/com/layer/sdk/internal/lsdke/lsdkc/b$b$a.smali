.class final enum Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum brD:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brE:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brF:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brG:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brH:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brI:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brJ:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brK:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brL:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brM:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brN:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brO:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brP:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brQ:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brR:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brS:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brT:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field public static final enum brU:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

.field private static final synthetic brY:[Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;


# instance fields
.field public final avc:Ljava/lang/String;

.field public final brV:Ljava/lang/String;

.field public final brW:Ljava/lang/String;

.field public final brX:Ljava/lang/String;

.field public final w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v1, "CONVERSATION_PARTICIPANTS"

    const-string v3, "conversation_participants"

    const-string v4, "qcp"

    const-string v5, "database_identifier, conversation_database_identifier, stream_member_database_identifier, member_id, seq, event_database_identifier, is_deleted, mark_as_read_from_position"

    const-string v6, "qcp.database_identifier, qcp.conversation_database_identifier, qcp.stream_member_database_identifier, qcp.member_id, qcp.seq, qcp.event_database_identifier, qcp.is_deleted, qcp.mark_as_read_from_position"

    invoke-direct/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brD:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "CONVERSATIONS"

    const-string v6, "conversations"

    const-string v7, "qc"

    const-string v8, "object_identifier, type, database_identifier, stream_database_identifier, stream_id, is_distinct, total_message_count, total_unread_message_count, historic_message_status, created_at, is_deleted_all_participants, is_deleted_my_devices"

    const-string v9, "qc.object_identifier, qc.type, qc.database_identifier, qc.stream_database_identifier, qc.stream_id, qc.is_distinct, qc.total_message_count, qc.total_unread_message_count, qc.historic_message_status, qc.created_at, qc.is_deleted_all_participants, qc.is_deleted_my_devices"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brE:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "EVENT_CONTENT_PARTS"

    const-string v6, "event_content_parts"

    const-string v7, "qecp"

    const-string v8, "type, value, access_expiration, url, size"

    const-string v9, "qecp.type, qecp.value, qecp.access_expiration, qecp.url, qecp.size"

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brF:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "EVENTS"

    const-string v6, "events"

    const-string v7, "qe"

    const-string v8, "database_identifier, type, creator_id, seq, timestamp, preceding_seq, client_seq, subtype, member_id, target_seq, stream_database_identifier, client_id, creator_name, client_timestamp, initial_recipient_status, target_position"

    const-string v9, "qe.database_identifier, qe.type, qe.creator_id, qe.seq, qe.timestamp, qe.preceding_seq, qe.client_seq, qe.subtype, qe.member_id, qe.target_seq, qe.stream_database_identifier, qe.client_id, qe.creator_name, qe.client_timestamp, qe.initial_recipient_status, qe.target_position"

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brG:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "LOCAL_KEYED_VALUES"

    const-string v6, "local_keyed_values"

    const-string v7, "qlkv"

    const-string v8, "database_identifier, object_type, object_id, key_type, key, value, timestamp, is_deleted"

    const-string v9, "qlkv.database_identifier, qlkv.object_type, qlkv.object_id, qlkv.key_type, qlkv.key, qlkv.value, qlkv.timestamp, qlkv.is_deleted"

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brH:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "MESSAGE_PARTS"

    const/4 v5, 0x5

    const-string v6, "message_parts"

    const-string v7, "qmp"

    const-string v8, "object_identifier, database_identifier, message_database_identifier, mime_type, content, url, access_expiration, file_path, size, access_time, pruned, transfer_status"

    const-string v9, "qmp.object_identifier, qmp.database_identifier, qmp.message_database_identifier, qmp.mime_type, qmp.content, qmp.url, qmp.access_expiration, qmp.file_path, qmp.size, qmp.access_time, qmp.pruned, qmp.transfer_status"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brI:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "MESSAGE_RECIPIENT_STATUS"

    const/4 v5, 0x6

    const-string v6, "message_recipient_status"

    const-string v7, "qmrs"

    const-string v8, "database_identifier, message_database_identifier, user_id, status, seq"

    const-string v9, "qmrs.database_identifier, qmrs.message_database_identifier, qmrs.user_id, qmrs.status, qmrs.seq"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brJ:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "MESSAGES"

    const/4 v5, 0x7

    const-string v6, "messages"

    const-string v7, "qm"

    const-string v8, "object_identifier, type, database_identifier, conversation_database_identifier, sent_at, received_by_user, user_id, seq, event_database_identifier, message_index, user_name, is_deleted_all_participants, is_deleted_my_devices"

    const-string v9, "qm.object_identifier, qm.type, qm.database_identifier, qm.conversation_database_identifier, qm.sent_at, qm.received_by_user, qm.user_id, qm.seq, qm.event_database_identifier, qm.message_index, qm.user_name, qm.is_deleted_all_participants, qm.is_deleted_my_devices"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brK:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "MUTATIONS"

    const/16 v5, 0x8

    const-string v6, "mutations"

    const-string v7, "qmu"

    const-string v8, "database_identifier, stream_id, target_seq, type, target, conversation_object_identifier, message_object_identifier, stream_database_identifier, event_database_identifier, seq"

    const-string v9, "qmu.database_identifier, qmu.stream_id, qmu.target_seq, qmu.type, qmu.target, qmu.conversation_object_identifier, qmu.message_object_identifier, qmu.stream_database_identifier, qmu.event_database_identifier, qmu.seq"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brL:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "REMOTE_KEYED_VALUES"

    const/16 v5, 0x9

    const-string v6, "remote_keyed_values"

    const-string v7, "qrkv"

    const-string v8, "database_identifier, object_type, object_id, key_type, key, value, timestamp, is_deleted"

    const-string v9, "qrkv.database_identifier, qrkv.object_type, qrkv.object_id, qrkv.key_type, qrkv.key, qrkv.value, qrkv.timestamp, qrkv.is_deleted"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brM:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "SCHEMA_MIGRATIONS"

    const/16 v5, 0xa

    const-string v6, "schema_migrations"

    const-string v7, "qscm"

    const-string v8, "version"

    const-string v9, "qscm.version"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brN:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "STREAM_MEMBERS"

    const/16 v5, 0xb

    const-string v6, "stream_members"

    const-string v7, "qsm"

    const-string v8, "member_id"

    const-string v9, "qsm.member_id"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brO:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "STREAMS"

    const/16 v5, 0xc

    const-string v6, "streams"

    const-string v7, "qs"

    const-string v8, "type, database_identifier, stream_id, seq, client_id, min_synced_seq, max_synced_seq, metadata_timestamp, is_distinct, request_client_id, unread_message_count, total_message_count, last_message_received_at, last_message_seq, oldest_unread_message_seq, base_sync_seq, marked_to_fetch_historic_data, is_deleted, mutation_seq, base_sync_mutation_seq, min_synced_mutation_seq, max_synced_mutation_seq, starting_seq, created_at"

    const-string v9, "qs.type, qs.database_identifier, qs.stream_id, qs.seq, qs.client_id, qs.min_synced_seq, qs.max_synced_seq, qs.metadata_timestamp, qs.is_distinct, qs.request_client_id, qs.unread_message_count, qs.total_message_count, qs.last_message_received_at, qs.last_message_seq, qs.oldest_unread_message_seq, qs.base_sync_seq, qs.marked_to_fetch_historic_data, qs.is_deleted, qs.mutation_seq, qs.base_sync_mutation_seq, qs.min_synced_mutation_seq, qs.max_synced_mutation_seq, qs.starting_seq, qs.created_at"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brP:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "SYNCABLE_CHANGES"

    const/16 v5, 0xd

    const-string v6, "syncable_changes"

    const-string v7, "qsbc"

    const-string v8, "change_identifier, table_name, row_identifier, change_type"

    const-string v9, "qsbc.change_identifier, qsbc.table_name, qsbc.row_identifier, qsbc.change_type"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brQ:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "SYNCED_CHANGES"

    const/16 v5, 0xe

    const-string v6, "synced_changes"

    const-string v7, "qsdc"

    const-string v8, "change_identifier, table_name, row_identifier, change_type, column_name"

    const-string v9, "qsdc.change_identifier, qsdc.table_name, qsdc.row_identifier, qsdc.change_type, qsdc.column_name"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brR:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "IDENTITY"

    const/16 v5, 0xf

    const-string v6, "identities"

    const-string v7, "qi"

    const-string v8, "database_identifier, object_identifier, user_id, display_name, first_name, last_name, email_address, phone_number, avatar_image_url, public_key, followed, syncable_change"

    const-string v9, "qi.database_identifier, qi.object_identifier, qi.user_id, qi.display_name, qi.first_name, qi.last_name, qi.email_address, qi.phone_number, qi.avatar_image_url, qi.public_key, qi.followed, qi.syncable_change"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brS:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "RESPONSE_VERSIONS"

    const/16 v5, 0x10

    const-string v6, "response_versions"

    const-string v7, "qrv"

    const-string v8, "version"

    const-string v9, "qrv.version"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brT:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    new-instance v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const-string v4, "PRESENCE"

    const/16 v5, 0x11

    const-string v6, "presence"

    const-string v7, "qp"

    const-string v8, "database_identifier, user_id, status, last_seen_at"

    const-string v9, "qi.database_identifier, qi.user_id, qi.status, qi.last_seen_at"

    invoke-direct/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brU:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brD:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brE:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brF:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brG:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brH:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brI:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brJ:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brK:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brL:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brM:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brN:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brO:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brP:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brQ:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brR:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brS:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brT:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brU:Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brY:[Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->avc:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brV:Ljava/lang/String;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brW:Ljava/lang/String;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->w:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->brY:[Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdke/lsdkc/b$b$a;

    return-object v0
.end method
