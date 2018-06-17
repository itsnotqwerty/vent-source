.class public final Lcom/vent/ActChat;
.super Lcom/vent/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActChat$a;
    }
.end annotation


# static fields
.field static bTT:Z


# instance fields
.field bUb:Lcom/vent/a/e;

.field bUc:Lcom/layer/sdk/messaging/Conversation;

.field private bUd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field

.field bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

.field bUf:Lcom/layer/atlas/AtlasMessageComposer;

.field bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

.field bUh:Lcom/layer/atlas/a;

.field bUi:Landroid/support/v7/app/c;

.field bUj:Landroid/widget/EditText;

.field bUk:I

.field final bUl:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    new-instance v0, Lcom/vent/ActChat$3;

    invoke-direct {v0, p0}, Lcom/vent/ActChat$3;-><init>(Lcom/vent/ActChat;)V

    iput-object v0, p0, Lcom/vent/ActChat;->bUl:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/vent/a;Lcom/vent/a/e;)V
    .locals 3

    sget-boolean v0, Lcom/vent/ActChat;->bTT:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActChat;->bTT:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api/v1/my/conversations.json?layer_conversation_ids%5b%5d="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vent/ActChat$2;

    const-string v2, "GET"

    invoke-direct {v1, p0, v0, v2}, Lcom/vent/ActChat$2;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static a(Lcom/vent/a;Lcom/vent/a/x;)V
    .locals 4

    sget-boolean v0, Lcom/vent/ActChat;->bTT:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "user_id"

    iget-object v3, p1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conversation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActChat;->bTT:Z

    new-instance v0, Lcom/vent/ActChat$1;

    const-string v2, "api/v1/my/conversations.json"

    const-string v3, "POST"

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/vent/ActChat$1;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static a(Lcom/vent/v;Z)V
    .locals 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/vent/v;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/vent/v;->ccH:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/vent/v;->bUd:Ljava/util/HashMap;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/vent/v;->bUd:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/vent/MyApplication;

    invoke-virtual {v1}, Lcom/vent/MyApplication;->DZ()Lcom/vent/ba;

    move-result-object v6

    if-eqz v6, :cond_11

    iget-object v1, p0, Lcom/vent/v;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/e;

    iget-object v7, p0, Lcom/vent/v;->bUd:Ljava/util/HashMap;

    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    :cond_0
    sget-object v2, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    :cond_1
    invoke-static {v1}, Lcom/vent/bb;->a(Lcom/vent/a/e;)I

    move-result v8

    if-ltz v8, :cond_c

    sget-object v2, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vent/a/f;

    iget-object v5, v2, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    if-eqz v1, :cond_6

    iget-object v9, v5, Lcom/vent/a/e;->cjy:Lcom/vent/a/m;

    iget-object v10, v1, Lcom/vent/a/e;->cjy:Lcom/vent/a/m;

    invoke-static {v9, v10}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    iget-object v10, v1, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/vent/a/e;->cjI:Ljava/util/List;

    if-nez v9, :cond_2

    iget-object v9, v1, Lcom/vent/a/e;->cjI:Ljava/util/List;

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, v5, Lcom/vent/a/e;->cjI:Ljava/util/List;

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/vent/a/e;->cjI:Ljava/util/List;

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/vent/a/e;->cjI:Ljava/util/List;

    iget-object v10, v1, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    iget-boolean v9, v5, Lcom/vent/a/e;->cjJ:Z

    iget-boolean v10, v1, Lcom/vent/a/e;->cjJ:Z

    if-ne v9, v10, :cond_6

    iget-boolean v5, v5, Lcom/vent/a/e;->cjK:Z

    iget-boolean v9, v1, Lcom/vent/a/e;->cjK:Z

    if-ne v5, v9, :cond_6

    move v5, v4

    :goto_0
    if-nez v5, :cond_10

    :cond_4
    iput-object v1, v2, Lcom/vent/a/f;->bUb:Lcom/vent/a/e;

    move v1, v4

    :goto_1
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v1

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    sget-object v2, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vent/a/x;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/vent/a/x;->Fd()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v2}, Lcom/vent/a/x;->Fd()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "User.equalsContents no yet implemented for full_user"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    move v5, v3

    goto :goto_0

    :cond_7
    iget-object v9, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    iget-object v10, v2, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-static {v9, v10}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    iget-object v10, v2, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    iget-object v10, v2, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    iget-object v10, v2, Lcom/vent/a/x;->ckO:Lcom/vent/a/m;

    invoke-static {v9, v10}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v1, Lcom/vent/a/x;->flags:I

    iget v2, v2, Lcom/vent/a/x;->flags:I

    if-ne v9, v2, :cond_9

    move v2, v4

    :goto_3
    if-nez v2, :cond_f

    :cond_8
    sget-object v2, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_4
    move v5, v1

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    invoke-static {}, Lcom/vent/bb;->Ew()V

    :cond_b
    invoke-virtual {v6, v8}, Lcom/vent/ba;->eE(I)V

    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActChat;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "conversation"

    iget-object v1, p0, Lcom/vent/v;->ccH:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "users"

    iget-object v5, p0, Lcom/vent/v;->bUd:Ljava/util/HashMap;

    invoke-static {v2, v1, v5}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    const/16 v1, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    instance-of v1, v0, Lcom/vent/ActMain;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lcom/vent/ActMain;

    invoke-virtual {v1, v3}, Lcom/vent/ActMain;->aX(Z)V

    :cond_d
    if-nez v4, :cond_e

    const v1, 0x7f0f0066

    invoke-static {v0, v1, v3}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_e
    return-void

    :cond_f
    move v1, v5

    goto :goto_4

    :cond_10
    move v1, v3

    goto/16 :goto_1

    :cond_11
    move v4, v3

    goto :goto_5
.end method


# virtual methods
.method final a(Lcom/layer/atlas/AtlasAvatar;)V
    .locals 8

    const/16 v7, 0x2f

    const v6, 0x7f08012b

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/layer/atlas/AtlasAvatar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/layer/atlas/AtlasAvatar;->getParticipants()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    iget-object v1, p0, Lcom/vent/ActChat;->bUd:Ljava/util/HashMap;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/vent/ActChat$a;

    invoke-direct {v4, v0}, Lcom/vent/ActChat$a;-><init>(Lcom/layer/sdk/messaging/Identity;)V

    sget v0, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v1, v0}, Lcom/vent/a/x;->eL(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/vent/ActChat$a;->avatar:Ljava/lang/String;

    iget-object v0, v4, Lcom/vent/ActChat$a;->avatar:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActChat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/vent/ActChat$a;->avatar:Ljava/lang/String;

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vent/ActChat;->bUd:Ljava/util/HashMap;

    new-instance v4, Lcom/vent/a/m;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    goto :goto_1

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lcom/layer/atlas/AtlasAvatar;->e(Ljava/util/Set;)Lcom/layer/atlas/AtlasAvatar;

    :cond_4
    return-void
.end method

.method public final aR(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActChat;->bUi:Landroid/support/v7/app/c;

    invoke-super {p0, p1}, Lcom/vent/a;->aR(Z)Z

    move-result v0

    return v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bnc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/vent/ActChat;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActChat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "conversation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/e;

    iput-object v0, p0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    invoke-virtual {p0}, Lcom/vent/ActChat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "users"

    invoke-static {v0, v2}, Lcom/vent/d/d;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActChat;->bUd:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vent/ActChat;->bUd:Ljava/util/HashMap;

    if-nez v2, :cond_3

    :cond_0
    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/vent/ActChat;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActChat;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/vent/ActChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iput-object v0, p0, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    const v0, 0x7f0901db

    invoke-virtual {p0, v0}, Lcom/vent/ActChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasMessagesRecyclerView;

    iput-object v0, p0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lcom/vent/ActChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/AtlasMessageComposer;

    iput-object v0, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, p0, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    invoke-virtual {v0, v4}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    invoke-virtual {v0, v4}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-virtual {v0, v4}, Lcom/layer/atlas/AtlasMessageComposer;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActChat;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DZ()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActChat;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vent/ActChat;->bUl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    invoke-virtual {v0}, Lcom/vent/a/e;->EP()Lcom/vent/a/m;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/vent/ActChat;->bUd:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/vent/ActChat;->aR(Z)Z

    goto :goto_2
.end method

.method protected final onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vent/ActChat;->bUj:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasMessagesRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/a/a;

    if-eqz v0, :cond_0

    iput-object v2, v0, Lcom/layer/atlas/a/a;->bnM:Lcom/layer/atlas/a/a$a;

    :cond_0
    iget-object v0, p0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    iget-object v1, v0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessagesRecyclerView;->bnm:Lcom/layer/atlas/a/a;

    invoke-virtual {v0}, Lcom/layer/atlas/a/a;->onDestroy()V

    :cond_1
    iput-object v2, p0, Lcom/vent/ActChat;->bUe:Lcom/layer/atlas/AtlasMessagesRecyclerView;

    :cond_2
    iget-object v0, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-virtual {v0, v2}, Lcom/layer/atlas/AtlasMessageComposer;->a(Lcom/layer/atlas/b/d/b;)Lcom/layer/atlas/AtlasMessageComposer;

    iput-object v2, p0, Lcom/vent/ActChat;->bUf:Lcom/layer/atlas/AtlasMessageComposer;

    :cond_3
    iput-object v2, p0, Lcom/vent/ActChat;->bUg:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iget-object v0, p0, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    iput-object v2, v0, Lcom/layer/atlas/a;->bnr:Lcom/layer/atlas/a$a;

    iget-object v0, p0, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    invoke-virtual {v0, v2}, Lcom/layer/atlas/a;->a(Lcom/layer/atlas/a$b;)Lcom/layer/atlas/a;

    iput-object v2, p0, Lcom/vent/ActChat;->bUh:Lcom/layer/atlas/a;

    :cond_4
    invoke-virtual {p0}, Lcom/vent/ActChat;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    invoke-static {v0}, Lcom/vent/ba;->c(Lcom/layer/sdk/messaging/Conversation;)V

    iput-object v2, p0, Lcom/vent/ActChat;->bUc:Lcom/layer/sdk/messaging/Conversation;

    invoke-static {}, Lcom/vent/ba;->Eo()V

    :cond_5
    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActChat;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/ba;->chi:Landroid/net/Uri;

    :cond_0
    invoke-super {p0}, Lcom/vent/a;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "Messaging"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActChat;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    iget-object v1, v1, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    iput-object v1, v0, Lcom/vent/ba;->chi:Landroid/net/Uri;

    :cond_0
    return-void
.end method
