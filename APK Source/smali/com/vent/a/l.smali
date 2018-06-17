.class public Lcom/vent/a/l;
.super Lcom/vent/a/k;


# instance fields
.field public ceB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public cjE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public ckm:Ljava/lang/String;

.field public ckn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/k;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vent/a/l;-><init>(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/vent/a/k;-><init>(Lorg/json/JSONObject;Z)V

    if-eqz p2, :cond_2

    :try_start_0
    iget v0, p0, Lcom/vent/a/l;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/a/l;->flags:I

    const-string v0, "interest_ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/a/m;->a(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    :cond_0
    const-string v0, "bio"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    const-class v0, Lcom/vent/a/x;

    const-string v1, "mentioned_users"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    iget-object v0, p0, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    :cond_1
    const-string v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/a/r;->b(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Lcom/vent/a/c;)V
    .locals 0

    check-cast p1, Lcom/vent/a/k;

    invoke-virtual {p0, p1}, Lcom/vent/a/l;->c(Lcom/vent/a/k;)V

    return-void
.end method

.method final c(Lcom/vent/a/k;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/a/k;->c(Lcom/vent/a/k;)V

    instance-of v0, p1, Lcom/vent/a/l;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/vent/a/k;->flags:I

    iput v0, p0, Lcom/vent/a/l;->flags:I

    check-cast p1, Lcom/vent/a/l;

    iget-object v0, p1, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    iget-object v0, p1, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    iget-object v0, p1, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    if-nez v0, :cond_3

    :goto_2
    iput-object v1, p0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method final d(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/vent/a/k;->d(Landroid/os/Parcel;)V

    iget v0, p0, Lcom/vent/a/l;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    sget-object v0, Lcom/vent/a/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->d(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/vent/d/d;->h(Landroid/os/Parcel;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/k;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/l;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/l;->ceB:Ljava/util/HashSet;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Collection;)V

    :cond_0
    return-void
.end method
