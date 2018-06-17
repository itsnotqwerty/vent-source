.class public final Landroid/support/v4/app/aa$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field Aa:Ljava/lang/String;

.field Ab:J

.field Ac:I

.field public Ad:Landroid/app/Notification;

.field public Ae:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public gS:I

.field public mContext:Landroid/content/Context;

.field public zA:Landroid/graphics/Bitmap;

.field zB:Ljava/lang/CharSequence;

.field public zC:I

.field public zD:I

.field zE:Z

.field zF:Z

.field zG:Landroid/support/v4/app/aa$f;

.field zH:Ljava/lang/CharSequence;

.field zI:[Ljava/lang/CharSequence;

.field zJ:I

.field zK:I

.field zL:Z

.field zM:Ljava/lang/String;

.field zN:Z

.field zO:Ljava/lang/String;

.field public zP:Z

.field zQ:Z

.field zR:Z

.field public zS:Ljava/lang/String;

.field public zT:I

.field zU:Landroid/app/Notification;

.field zV:Landroid/widget/RemoteViews;

.field zW:Landroid/widget/RemoteViews;

.field zX:Landroid/widget/RemoteViews;

.field public zY:Ljava/lang/String;

.field zZ:I

.field zp:Landroid/os/Bundle;

.field public zu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/aa$a;",
            ">;"
        }
    .end annotation
.end field

.field zv:Ljava/lang/CharSequence;

.field zw:Ljava/lang/CharSequence;

.field public zx:Landroid/app/PendingIntent;

.field zy:Landroid/app/PendingIntent;

.field zz:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa$c;->zu:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aa$c;->zE:Z

    iput-boolean v4, p0, Landroid/support/v4/app/aa$c;->zP:Z

    iput v4, p0, Landroid/support/v4/app/aa$c;->zT:I

    iput v4, p0, Landroid/support/v4/app/aa$c;->gS:I

    iput v4, p0, Landroid/support/v4/app/aa$c;->zZ:I

    iput v4, p0, Landroid/support/v4/app/aa$c;->Ac:I

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput-object p1, p0, Landroid/support/v4/app/aa$c;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/aa$c;->zY:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    iput v4, p0, Landroid/support/v4/app/aa$c;->zD:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa$c;->Ae:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/app/aa$c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method protected static g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v1, 0x1400

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aa$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/aa$d;)Landroid/support/v4/app/aa$c;
    .locals 0

    invoke-interface {p1, p0}, Landroid/support/v4/app/aa$d;->a(Landroid/support/v4/app/aa$c;)Landroid/support/v4/app/aa$c;

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/aa$f;)Landroid/support/v4/app/aa$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->zG:Landroid/support/v4/app/aa$f;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/aa$c;->zG:Landroid/support/v4/app/aa$f;

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->zG:Landroid/support/v4/app/aa$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->zG:Landroid/support/v4/app/aa$f;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/aa$f;->b(Landroid/support/v4/app/aa$c;)V

    :cond_0
    return-object p0
.end method

.method public final a([J)Landroid/support/v4/app/aa$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public final ad(I)Landroid/support/v4/app/aa$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public final ae(I)Landroid/support/v4/app/aa$c;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public final build()Landroid/app/Notification;
    .locals 9

    const/16 v8, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v2, Landroid/support/v4/app/ab;

    invoke-direct {v2, p0}, Landroid/support/v4/app/ab;-><init>(Landroid/support/v4/app/aa$c;)V

    iget-object v0, v2, Landroid/support/v4/app/ab;->Av:Landroid/support/v4/app/aa$c;

    iget-object v3, v0, Landroid/support/v4/app/aa$c;->zG:Landroid/support/v4/app/aa$f;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/support/v4/app/aa$f;->a(Landroid/support/v4/app/z;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, v2, Landroid/support/v4/app/ab;->Av:Landroid/support/v4/app/aa$c;

    iget-object v1, v1, Landroid/support/v4/app/aa$c;->zV:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/support/v4/app/ab;->Av:Landroid/support/v4/app/aa$c;

    iget-object v1, v1, Landroid/support/v4/app/aa$c;->zV:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/support/v4/app/aa;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    :cond_3
    return-object v0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_5

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-ne v1, v5, :cond_5

    invoke-static {v0}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)V

    :cond_5
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_1

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-ne v1, v4, :cond_1

    invoke-static {v0}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)V

    goto :goto_0

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_7

    iget-object v1, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_7
    iget-object v1, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_8

    iget-object v1, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_8
    iget-object v1, v2, Landroid/support/v4/app/ab;->zX:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_9

    iget-object v1, v2, Landroid/support/v4/app/ab;->zX:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_9
    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-ne v1, v5, :cond_a

    invoke-static {v0}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)V

    :cond_a
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_1

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-ne v1, v4, :cond_1

    invoke-static {v0}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)V

    goto/16 :goto_0

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c

    iget-object v1, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_c
    iget-object v1, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_d

    iget-object v1, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_d
    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_e

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-ne v1, v5, :cond_e

    invoke-static {v0}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)V

    :cond_e
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_1

    iget v1, v2, Landroid/support/v4/app/ab;->Ac:I

    if-ne v1, v4, :cond_1

    invoke-static {v0}, Landroid/support/v4/app/ab;->b(Landroid/app/Notification;)V

    goto/16 :goto_0

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_12

    iget-object v0, v2, Landroid/support/v4/app/ab;->Aw:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/ac;->h(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, v2, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    const-string v4, "android.support.actionExtras"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_10
    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_11

    iget-object v1, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_11
    iget-object v1, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_18

    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/aa;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    iget-object v0, v2, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, v2, Landroid/support/v4/app/ab;->zp:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_14
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, v2, Landroid/support/v4/app/ab;->Aw:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/ac;->h(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v1}, Landroid/support/v4/app/aa;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.support.actionExtras"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_15
    iget-object v0, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_16

    iget-object v0, v2, Landroid/support/v4/app/ab;->zV:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_16
    iget-object v0, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_17

    iget-object v0, v2, Landroid/support/v4/app/ab;->zW:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_17
    move-object v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v0, v2, Landroid/support/v4/app/ab;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final c(III)Landroid/support/v4/app/aa$c;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final cZ()Landroid/support/v4/app/aa$c;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/aa$c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aa$c;->zv:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final e(Landroid/net/Uri;)Landroid/support/v4/app/aa$c;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/aa$c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aa$c;->zw:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final f(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa$c;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/aa$c;->Ad:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/aa$c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
