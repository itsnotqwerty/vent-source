.class public final Landroid/support/v4/app/aa$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/aa$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private Ak:Landroid/app/PendingIntent;

.field private Al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public Am:Landroid/graphics/Bitmap;

.field private An:I

.field private Ao:I

.field private Ap:I

.field private Aq:I

.field private Ar:I

.field private As:I

.field private At:Ljava/lang/String;

.field private Au:Ljava/lang/String;

.field private mFlags:I

.field private mGravity:I

.field private zu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/aa$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa$g;->zu:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/aa$g;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa$g;->Al:Ljava/util/ArrayList;

    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/aa$g;->Ao:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/aa$g;->Ap:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/aa$g;->Aq:I

    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/aa$g;->mGravity:I

    return-void
.end method

.method private static a(Landroid/support/v4/app/aa$a;)Landroid/app/Notification$Action;
    .locals 5

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget v0, p0, Landroid/support/v4/app/aa$a;->icon:I

    iget-object v2, p0, Landroid/support/v4/app/aa$a;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/aa$a;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/support/v4/app/aa$a;->zp:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v4/app/aa$a;->zp:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    const-string v2, "android.support.allowGeneratedReplies"

    iget-boolean v3, p0, Landroid/support/v4/app/aa$a;->zs:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/app/aa$a;->zs:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Landroid/support/v4/app/aa$a;->zq:[Landroid/support/v4/app/ae;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/support/v4/app/ae;->b([Landroid/support/v4/app/ae;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/aa$c;)Landroid/support/v4/app/aa$c;
    .locals 7

    const/16 v6, 0x10

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Landroid/support/v4/app/aa$g;->zu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v4/app/aa$g;->zu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Landroid/support/v4/app/aa$g;->zu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa$a;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    invoke-static {v0}, Landroid/support/v4/app/aa$g;->a(Landroid/support/v4/app/aa$a;)Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_0

    invoke-static {v0}, Landroid/support/v4/app/ac;->c(Landroid/support/v4/app/aa$a;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "actions"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/app/aa$g;->mFlags:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const-string v0, "flags"

    iget v2, p0, Landroid/support/v4/app/aa$g;->mFlags:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aa$g;->Ak:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    const-string v0, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/aa$g;->Ak:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/aa$g;->Al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v2, "pages"

    iget-object v0, p0, Landroid/support/v4/app/aa$g;->Al:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/aa$g;->Al:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/aa$g;->Am:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    const-string v0, "background"

    iget-object v2, p0, Landroid/support/v4/app/aa$g;->Am:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_7
    iget v0, p0, Landroid/support/v4/app/aa$g;->An:I

    if-eqz v0, :cond_8

    const-string v0, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/aa$g;->An:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    iget v0, p0, Landroid/support/v4/app/aa$g;->Ao:I

    const v2, 0x800005

    if-eq v0, v2, :cond_9

    const-string v0, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/aa$g;->Ao:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget v0, p0, Landroid/support/v4/app/aa$g;->Ap:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    const-string v0, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/aa$g;->Ap:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    iget v0, p0, Landroid/support/v4/app/aa$g;->Aq:I

    if-eqz v0, :cond_b

    const-string v0, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/aa$g;->Aq:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget v0, p0, Landroid/support/v4/app/aa$g;->Ar:I

    if-eqz v0, :cond_c

    const-string v0, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/aa$g;->Ar:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    iget v0, p0, Landroid/support/v4/app/aa$g;->mGravity:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_d

    const-string v0, "gravity"

    iget v2, p0, Landroid/support/v4/app/aa$g;->mGravity:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    iget v0, p0, Landroid/support/v4/app/aa$g;->As:I

    if-eqz v0, :cond_e

    const-string v0, "hintScreenTimeout"

    iget v2, p0, Landroid/support/v4/app/aa$g;->As:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/aa$g;->At:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string v0, "dismissalId"

    iget-object v2, p0, Landroid/support/v4/app/aa$g;->At:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/aa$g;->Au:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v0, "bridgeTag"

    iget-object v2, p0, Landroid/support/v4/app/aa$g;->Au:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zp:Landroid/os/Bundle;

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/support/v4/app/aa$c;->zp:Landroid/os/Bundle;

    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/aa$c;->zp:Landroid/os/Bundle;

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1

    :cond_12
    const-string v0, "actions"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/aa$g;

    invoke-direct {v0}, Landroid/support/v4/app/aa$g;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aa$g;->zu:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/aa$g;->zu:Ljava/util/ArrayList;

    iget v1, p0, Landroid/support/v4/app/aa$g;->mFlags:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->mFlags:I

    iget-object v1, p0, Landroid/support/v4/app/aa$g;->Ak:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/aa$g;->Ak:Landroid/app/PendingIntent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/aa$g;->Al:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/aa$g;->Al:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/aa$g;->Am:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/aa$g;->Am:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/app/aa$g;->An:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->An:I

    iget v1, p0, Landroid/support/v4/app/aa$g;->Ao:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->Ao:I

    iget v1, p0, Landroid/support/v4/app/aa$g;->Ap:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->Ap:I

    iget v1, p0, Landroid/support/v4/app/aa$g;->Aq:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->Aq:I

    iget v1, p0, Landroid/support/v4/app/aa$g;->Ar:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->Ar:I

    iget v1, p0, Landroid/support/v4/app/aa$g;->mGravity:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->mGravity:I

    iget v1, p0, Landroid/support/v4/app/aa$g;->As:I

    iput v1, v0, Landroid/support/v4/app/aa$g;->As:I

    iget-object v1, p0, Landroid/support/v4/app/aa$g;->At:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/aa$g;->At:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/aa$g;->Au:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/aa$g;->Au:Ljava/lang/String;

    return-object v0
.end method
