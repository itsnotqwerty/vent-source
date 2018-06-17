.class public final Lcom/vent/a/t;
.super Lcom/vent/a/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ccR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field

.field public cjQ:Lcom/vent/a/m;

.field public ckG:Lcom/vent/a/m;

.field public ckH:Lcom/vent/a/o;

.field public ckI:I

.field public ckJ:Lcom/vent/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/t;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/t;->ckG:Lcom/vent/a/m;

    const-class v0, Lcom/vent/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/o;

    iput-object v0, p0, Lcom/vent/a/t;->ckH:Lcom/vent/a/o;

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/t;->ckI:I

    const-class v0, Lcom/vent/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/j;

    iput-object v0, p0, Lcom/vent/a/t;->ckJ:Lcom/vent/a/j;

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/t;->cjQ:Lcom/vent/a/m;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    :try_start_0
    const-string v1, "group_id"

    invoke-static {p1, v1}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/t;->ckG:Lcom/vent/a/m;

    const-string v1, "emotion_category_color"

    invoke-static {p1, v1}, Lcom/vent/d/b;->g(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vent/a/t;->ckI:I

    const-string v1, "emotion_category_id"

    invoke-static {p1, v1}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/t;->cjQ:Lcom/vent/a/m;

    const-string v1, "interaction_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/vent/a/o;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vent/a/o;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/vent/a/t;->ckH:Lcom/vent/a/o;

    :cond_0
    const-class v1, Lcom/vent/a/x;

    const-string v2, "users"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;ZI)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    const-string v1, "gift"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/vent/a/j;

    const-string v1, "gift"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/a/j;-><init>(Lorg/json/JSONObject;)V

    :cond_2
    iput-object v0, p0, Lcom/vent/a/t;->ckJ:Lcom/vent/a/j;

    :goto_1
    return-void

    :cond_3
    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    new-instance v2, Lcom/vent/a/x;

    const-string v3, "user"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/vent/a/x;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/vent/a/t;->ckG:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/t;->ckH:Lcom/vent/a/o;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/vent/a/t;->ckI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/t;->ckJ:Lcom/vent/a/j;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vent/a/t;->cjQ:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    return-void
.end method
