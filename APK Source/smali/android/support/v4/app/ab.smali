.class final Landroid/support/v4/app/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/z;


# instance fields
.field Ac:I

.field final Av:Landroid/support/v4/app/aa$c;

.field final Aw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mBuilder:Landroid/app/Notification$Builder;

.field zV:Landroid/widget/RemoteViews;

.field zW:Landroid/widget/RemoteViews;

.field zX:Landroid/widget/RemoteViews;

.field final zp:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aa$c;)V
    .locals 10

    const/16 v9, 0x1a

    const/16 v8, 0x14

    const/16 v7, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->Aw:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/app/ab;->Av:Landroid/support/v4/app/aa$c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/aa$c;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->icon:I

    iget v5, v3, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/aa$c;->zz:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->ledARGB:I

    iget v5, v3, Landroid/app/Notification;->ledOnMS:I

    iget v6, v3, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zv:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zw:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zB:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zx:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/aa$c;->zy:Landroid/app/PendingIntent;

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v4, v5, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zA:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/aa$c;->zC:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/aa$c;->zJ:I

    iget v5, p1, Landroid/support/v4/app/aa$c;->zK:I

    iget-boolean v6, p1, Landroid/support/v4/app/aa$c;->zL:Z

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v5, v3, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zH:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v4, p1, Landroid/support/v4/app/aa$c;->zF:Z

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/aa$c;->zD:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa$a;

    invoke-direct {p0, v0}, Landroid/support/v4/app/ab;->b(Landroid/support/v4/app/aa$a;)V

    goto :goto_5

    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/aa$c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zp:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zp:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_a

    iget-boolean v0, p1, Landroid/support/v4/app/aa$c;->zP:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v4, "android.support.localOnly"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zM:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v4, "android.support.groupKey"

    iget-object v5, p1, Landroid/support/v4/app/aa$c;->zM:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Landroid/support/v4/app/aa$c;->zN:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v4, "android.support.isGroupSummary"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zO:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v1, "android.support.sortKey"

    iget-object v4, p1, Landroid/support/v4/app/aa$c;->zO:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zV:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zW:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/aa$c;->zE:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_c

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->Ae:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->Ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v4, "android.people"

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->Ae:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/support/v4/app/aa$c;->Ae:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/aa$c;->zP:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/support/v4/app/aa$c;->zN:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget v0, p1, Landroid/support/v4/app/aa$c;->Ac:I

    iput v0, p0, Landroid/support/v4/app/ab;->Ac:I

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/aa$c;->zT:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/aa$c;->gS:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zU:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->Ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_7

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v4, "android.support.useSideChannel"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zX:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/ab;->zX:Landroid/widget/RemoteViews;

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zp:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zI:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zV:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zV:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zW:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zW:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zX:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->zX:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroid/support/v4/app/aa$c;->zZ:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/aa$c;->Aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v4, p1, Landroid/support/v4/app/aa$c;->Ab:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/aa$c;->Ac:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-boolean v0, p1, Landroid/support/v4/app/aa$c;->zR:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/aa$c;->zQ:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_15
    return-void
.end method

.method static b(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/Notification;->vibrate:[J

    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private b(Landroid/support/v4/app/aa$a;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget v0, p1, Landroid/support/v4/app/aa$a;->icon:I

    iget-object v2, p1, Landroid/support/v4/app/aa$a;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/aa$a;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p1, Landroid/support/v4/app/aa$a;->zq:[Landroid/support/v4/app/ae;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/aa$a;->zq:[Landroid/support/v4/app/ae;

    invoke-static {v0}, Landroid/support/v4/app/ae;->b([Landroid/support/v4/app/ae;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/aa$a;->zp:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p1, Landroid/support/v4/app/aa$a;->zp:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    const-string v2, "android.support.allowGeneratedReplies"

    iget-boolean v3, p1, Landroid/support/v4/app/aa$a;->zs:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    iget-boolean v2, p1, Landroid/support/v4/app/aa$a;->zs:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/ab;->Aw:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/ac;->a(Landroid/app/Notification$Builder;Landroid/support/v4/app/aa$a;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public final cY()Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method
