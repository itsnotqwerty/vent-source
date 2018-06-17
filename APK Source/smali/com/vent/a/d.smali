.class public final Lcom/vent/a/d;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public body:Ljava/lang/String;

.field public cjA:Ljava/util/Date;

.field public cjB:Ljava/util/Date;

.field public cjC:Ljava/util/HashMap;
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

.field public cjD:Lcom/vent/a/m;

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

.field public cjF:I

.field public cjG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/d;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/d;->body:Ljava/lang/String;

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/d;->cjB:Ljava/util/Date;

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    const-class v0, Lcom/vent/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    iput-object v0, p0, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    sget-object v0, Lcom/vent/a/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->d(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/d;->cjF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vent/a/d;->cjG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v1, "body"

    invoke-static {p1, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/d;->body:Ljava/lang/String;

    const-string v1, "created_at"

    invoke-static {p1, v1}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    const-string v1, "updated_at"

    invoke-static {p1, v1}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/d;->cjB:Ljava/util/Date;

    const-class v1, Lcom/vent/a/x;

    const-string v2, "mentioned_users"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    :cond_0
    const-string v1, "user_id"

    invoke-static {p1, v1}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    const-string v1, "comment_favourites_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vent/a/d;->cjF:I

    const-string v1, "my_favourite_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/vent/a/d;->cjG:Z

    const-string v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/a/r;->b(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;
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

.method private a(Lcom/vent/a/d;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/vent/a/b;->a(Lcom/vent/a/b;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/vent/a/b;)I
    .locals 1

    check-cast p1, Lcom/vent/a/d;

    invoke-direct {p0, p1}, Lcom/vent/a/d;->a(Lcom/vent/a/d;)I

    move-result v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/d;

    invoke-direct {p0, p1}, Lcom/vent/a/d;->a(Lcom/vent/a/d;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/d;->body:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/d;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/d;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/vent/a/d;->cjB:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;ILjava/util/Map;)V

    iget v0, p0, Lcom/vent/a/d;->cjF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vent/a/d;->cjG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
