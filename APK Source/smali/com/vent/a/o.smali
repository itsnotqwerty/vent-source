.class public final Lcom/vent/a/o;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final ckv:Lcom/vent/a/m;

.field private static final ckw:Lcom/vent/a/m;

.field public static final ckx:Lcom/vent/a/o;

.field public static final cky:Lcom/vent/a/o;


# instance fields
.field private cjP:Ljava/lang/String;

.field private cjR:Ljava/lang/CharSequence;

.field public cku:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "00000000-0000-0000-0000-000000000001"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/a/o;->ckv:Lcom/vent/a/m;

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "41d0f4c6-5659-4353-a029-eb6632722dc2"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/a/o;->ckw:Lcom/vent/a/m;

    new-instance v0, Lcom/vent/a/o;

    const-string v1, "comment"

    const-string v2, "<-"

    invoke-direct {v0, v1, v2}, Lcom/vent/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    new-instance v0, Lcom/vent/a/o;

    sget-object v1, Lcom/vent/a/o;->ckw:Lcom/vent/a/m;

    const-string v2, "*"

    const v3, -0x989680

    invoke-direct {v0, v1, v2, v3}, Lcom/vent/a/o;-><init>(Lcom/vent/a/m;Ljava/lang/String;I)V

    sput-object v0, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/o;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/o;->cku:I

    return-void
.end method

.method private constructor <init>(Lcom/vent/a/m;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/b;-><init>()V

    iput-object p1, p0, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    iput-object p2, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    iput p3, p0, Lcom/vent/a/o;->cku:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/vent/a/o;->eh(Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v0

    const v1, 0x989680

    invoke-direct {p0, v0, p2, v1}, Lcom/vent/a/o;-><init>(Lcom/vent/a/m;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    const-string v0, "sort_order"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/a/o;->cku:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/vent/a/o;)I
    .locals 2

    iget v0, p0, Lcom/vent/a/o;->cku:I

    iget v1, p1, Lcom/vent/a/o;->cku:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/a/b;->a(Lcom/vent/a/b;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/o;",
            ">;",
            "Lcom/vent/a/m;",
            ")",
            "Lcom/vent/a/o;"
        }
    .end annotation

    sget-object v0, Lcom/vent/a/o;->ckv:Lcom/vent/a/m;

    invoke-static {p1, v0}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vent/a/o;->ckw:Lcom/vent/a/m;

    invoke-static {p1, v0}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/o;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/vent/a/m;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vent/a/o;->ckv:Lcom/vent/a/m;

    invoke-virtual {p0, v0}, Lcom/vent/a/m;->b(Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "comment"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Lcom/vent/a/m;)Lcom/vent/a/o;
    .locals 4

    sget-object v0, Lcom/vent/bb;->ciQ:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/vent/a/o;->b(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vent/bb;->ciS:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciS:J

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eh(Ljava/lang/String;)Lcom/vent/a/m;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "comment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/a/o;->ckv:Lcom/vent/a/m;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vent/a/m;

    invoke-direct {v0, p0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
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

    iget-object v2, p0, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v0, p0, Lcom/vent/a/o;->cjR:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/vent/a/o;->cku:I

    if-eqz v0, :cond_0

    const-string v0, "sort_order"

    iget v2, p0, Lcom/vent/a/o;->cku:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/vent/a/o;->cjR:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/vent/a/b;)I
    .locals 1

    check-cast p1, Lcom/vent/a/o;

    invoke-direct {p0, p1}, Lcom/vent/a/o;->a(Lcom/vent/a/o;)I

    move-result v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/o;

    invoke-direct {p0, p1}, Lcom/vent/a/o;->a(Lcom/vent/a/o;)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/o;->cjR:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/o;->cjR:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/vent/a/o;->cjR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/o;->cjP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vent/a/o;->cku:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
