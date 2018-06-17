.class public final Lcom/vent/a/e;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cjH:Landroid/net/Uri;

.field public cjI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public cjJ:Z

.field public cjK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/e;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    sget-object v0, Lcom/vent/a/m;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vent/a/e;->cjJ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/vent/a/e;->cjK:Z

    return-void

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "layer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "layer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    const-string v0, "user_ids"

    invoke-static {p1, v0}, Lcom/vent/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    const-string v0, "typing_indicators_enabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/a/e;->cjJ:Z

    const-string v0, "read_receipts_enabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/a/e;->cjK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final EK()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    iget-object v2, p0, Lcom/vent/a/e;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "layer_id"

    iget-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "user_ids"

    iget-object v2, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/vent/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EP()Lcom/vent/a/m;
    .locals 3

    iget-object v0, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EQ()Lcom/vent/a/x;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/a/e;->EP()Lcom/vent/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/vent/a/e;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/vent/a/e;

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    iget-object v3, p1, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-static {v2, v3}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/vent/a/f;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    check-cast p1, Lcom/vent/a/f;

    iget-object v3, p1, Lcom/vent/a/f;->cjL:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/vent/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "<null>"

    move-object v1, v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/e;->cjH:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/e;->cjI:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/vent/a/e;->cjJ:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vent/a/e;->cjK:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
