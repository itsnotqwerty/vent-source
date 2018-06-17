.class public final Lcom/vent/a/z;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bXE:Lcom/vent/a/x;

.field public bYM:Lcom/vent/a/k;

.field public body:Ljava/lang/String;

.field public cjA:Ljava/util/Date;

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

.field public ckX:Lcom/vent/a/m;

.field public ckY:Ljava/lang/String;

.field public ckZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private cla:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public clb:I

.field public clc:I

.field public flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/z;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/b;-><init>()V

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

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->cjA:Ljava/util/Date;

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->body:Ljava/lang/String;

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/a/a;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Lcom/vent/a/a;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    sget-object v0, Lcom/vent/a/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    sget-object v0, Lcom/vent/a/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/vent/d/d;->g(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    sget-object v0, Lcom/vent/a/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/vent/d/d;->d(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/z;->clb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/z;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/z;->clc:I

    const-class v0, Lcom/vent/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    iput-object v0, p0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v1, "created_at"

    invoke-static {p1, v1}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->cjA:Ljava/util/Date;

    const-string v1, "emotion_id"

    invoke-static {p1, v1}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    const-string v1, "body"

    invoke-static {p1, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->body:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/x;->f(Lorg/json/JSONObject;)Lcom/vent/a/x;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    const-string v1, "city"

    invoke-static {p1, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    const-class v1, Lcom/vent/a/x;

    const-string v2, "mentioned_users"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vent/d/b;->a(Ljava/lang/Class;Lorg/json/JSONArray;Z)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    :cond_0
    const-string v1, "interaction_counts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/n;->e(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    const-string v1, "interaction_flags"

    invoke-static {p1, v1}, Lcom/vent/d/b;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    :cond_1
    const-string v1, "links"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/r;->b(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    :cond_2
    const-string v1, "index_score"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vent/a/z;->clb:I

    const-string v1, "privacy_setting"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/vent/d/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/z;->ei(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vent/a/z;->clc:I

    const-string v1, "group"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/a/k;->d(Lorg/json/JSONObject;)Lcom/vent/a/k;

    move-result-object v1

    iput-object v1, p0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    const-string v1, "author_is_followed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const-string v1, "is_explicit"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_1
    or-int/2addr v1, v2

    const-string v2, "comment_setting"

    const-string v3, "comments_enabled"

    invoke-static {p1, v2, v3}, Lcom/vent/d/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "comments_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    :cond_3
    or-int/2addr v0, v1

    const-string v1, "author_role"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/z;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static Fn()Lcom/vent/a/z;
    .locals 2

    new-instance v0, Lcom/vent/a/z;

    invoke-direct {v0}, Lcom/vent/a/z;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vent/a/z;->bp(Z)V

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v1, v1, Lcom/vent/a/y;->ckW:I

    iput v1, v0, Lcom/vent/a/z;->clc:I

    :cond_0
    return-object v0
.end method

.method private a(Lcom/vent/a/z;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/vent/a/z;->cjA:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/vent/a/z;->cjA:Ljava/util/Date;

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

.method public static eN(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "privacy_public"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "privacy_personal"

    goto :goto_0

    :pswitch_1
    const-string v0, "privacy_mutuals"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static eO(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f0f00ec

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0f00e7

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0f00be

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ei(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string v4, "privacy_public"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "privacy_personal"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "privacy_mutuals"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :pswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1ca04d28 -> :sswitch_2
        0x378f0300 -> :sswitch_0
        0x5d29ad17 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final Fl()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/z;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Fm()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/vent/a/z;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v2, v2, Lcom/vent/a/y;->ckU:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v2}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final bridge synthetic a(Lcom/vent/a/b;)I
    .locals 1

    check-cast p1, Lcom/vent/a/z;

    invoke-direct {p0, p1}, Lcom/vent/a/z;->a(Lcom/vent/a/z;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/vent/a/m;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    add-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/vent/a/n;->a(Ljava/util/ArrayList;Lcom/vent/a/m;)Lcom/vent/a/n;

    move-result-object v0

    if-nez v0, :cond_4

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/a/n;

    invoke-direct {v1, p1, p2}, Lcom/vent/a/n;-><init>(Lcom/vent/a/m;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v1, v0, Lcom/vent/a/n;->count:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/vent/a/n;->count:I

    goto :goto_1
.end method

.method public final bp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vent/a/z;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/vent/a/z;->flags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/vent/a/z;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/vent/a/z;->flags:I

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/z;

    invoke-direct {p0, p1}, Lcom/vent/a/z;->a(Lcom/vent/a/z;)I

    move-result v0

    return v0
.end method

.method public final f(Lcom/vent/a/m;)Z
    .locals 1

    iget-object v0, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/z;->body:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/z;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/z;->cjA:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v0, p1, p2}, Lcom/vent/a/a;->a(Lcom/vent/a/a;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/vent/a/z;->cla:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->b(Landroid/os/Parcel;ILjava/util/Map;)V

    iget-object v0, p0, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Lcom/vent/d/d;->c(Landroid/os/Parcel;ILjava/util/Map;)V

    iget v0, p0, Lcom/vent/a/z;->clb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/z;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/z;->clc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
