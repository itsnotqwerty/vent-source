.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/iid/f;


# static fields
.field private static final zzoma:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzoma:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/f;-><init>()V

    return-void
.end method

.method static p(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "google.c."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static q(Landroid/os/Bundle;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    const-string v1, "google.c.a.e"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final handleIntent(Landroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v1, "FirebaseMessaging"

    const-string v2, "Unknown intent action: "

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :sswitch_0
    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :pswitch_0
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "gcm"

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_4
    :goto_4
    packed-switch v3, :pswitch_data_1

    const-string v1, "FirebaseMessaging"

    const-string v2, "Received message with unknown type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "google.message_id"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/firebase/iid/o;->ao(Landroid/content/Context;)Lcom/google/firebase/iid/o;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/v;

    invoke-virtual {v1}, Lcom/google/firebase/iid/o;->uL()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/iid/v;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/o;->a(Lcom/google/firebase/iid/w;)Lcom/google/android/gms/c/e;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzoma:Ljava/util/Queue;

    invoke-interface {v0, v5}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v6, "FirebaseMessaging"

    const-string v7, "Received duplicate message: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzoma:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_a

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzoma:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_a
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzoma:Ljava/util/Queue;

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto/16 :goto_3

    :sswitch_2
    const-string v4, "gcm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v1

    goto/16 :goto_4

    :sswitch_3
    const-string v4, "deleted_messages"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto/16 :goto_4

    :sswitch_4
    const-string v4, "send_event"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x2

    goto/16 :goto_4

    :sswitch_5
    const-string v6, "send_error"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->q(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "google.c.a.abt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v3, "fcm"

    new-instance v4, Lcom/google/firebase/messaging/e;

    invoke-direct {v4}, Lcom/google/firebase/messaging/e;-><init>()V

    invoke-static {p0, v3, v0, v4}, Lcom/google/firebase/messaging/f;->a(Landroid/content/Context;Ljava/lang/String;[BLcom/google/firebase/messaging/e;)V

    :cond_b
    const-string v0, "_nr"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_d
    const-string v3, "android.support.content.wakelockid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "1"

    const-string v4, "gcm.n.e"

    invoke-static {v0, v4}, Lcom/google/firebase/messaging/d;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "gcm.n.icon"

    invoke-static {v0, v3}, Lcom/google/firebase/messaging/d;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/google/firebase/messaging/d;->ap(Landroid/content/Context;)Lcom/google/firebase/messaging/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/d;->r(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->q(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "_nf"

    invoke-static {p0, v1, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_10
    new-instance v1, Lcom/google/firebase/messaging/b;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/b;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/b;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    goto/16 :goto_6

    :pswitch_3
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_4
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    new-instance v1, Lcom/google/firebase/messaging/c;

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_6

    :cond_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->q(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_nd"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x47cfddf -> :sswitch_1
        0x15d8a480 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_5
        0x3090df23 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDeletedMessages()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/b;)V
    .locals 0

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method protected final zzp(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/google/firebase/iid/ac;->uW()Lcom/google/firebase/iid/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/google/firebase/iid/ac;->bfU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public final zzq(Landroid/content/Intent;)Z
    .locals 5

    const/4 v2, 0x3

    const-string v0, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "pending_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->q(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "google.c.a.tc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/google/firebase/messaging/g;->aq(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FirebaseMessaging"

    const-string v2, "Received event with track-conversion=true. Setting user property and reengagement event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_4

    const-string v1, "google.c.a.c_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fcm"

    const-string v3, "_ln"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "Firebase"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fcm"

    const-string v3, "_cmp"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    const-string v0, "_no"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_3
    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-string v0, "FirebaseMessaging"

    const-string v1, "Notification pending intent canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "FirebaseMessaging"

    const-string v1, "Unable to set user property for conversion tracking:  analytics library is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FirebaseMessaging"

    const-string v1, "Received event with track-conversion=false. Do not set user property"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
