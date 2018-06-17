.class public final Lcom/vent/a/g;
.super Lcom/vent/a/b;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/g;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vent/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public axa:Z

.field public cjP:Ljava/lang/String;

.field public cjQ:Lcom/vent/a/m;

.field private cjR:Ljava/lang/CharSequence;

.field public cjS:Ljava/lang/String;

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/g;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    new-instance v0, Lcom/vent/a/m;

    invoke-direct {v0, p1}, Lcom/vent/a/m;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/g;->position:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vent/a/g;->axa:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    const-string v0, "emotion_category_id"

    invoke-static {p1, v0}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/a/g;->position:I

    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/a/g;->axa:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/vent/a/g;)I
    .locals 2

    iget v0, p0, Lcom/vent/a/g;->position:I

    iget v1, p1, Lcom/vent/a/g;->position:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    iget-object v1, p1, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/vent/a/b;->a(Lcom/vent/a/b;)I

    move-result v0

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

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "emotion_category_id"

    iget-object v2, p0, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/vent/a/g;->position:I

    if-eqz v1, :cond_0

    const-string v1, "position"

    iget v2, p0, Lcom/vent/a/g;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v1, p0, Lcom/vent/a/g;->axa:Z

    if-eqz v1, :cond_1

    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/vent/a/g;->axa:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vent/a/b;)I
    .locals 1

    check-cast p1, Lcom/vent/a/g;

    invoke-direct {p0, p1}, Lcom/vent/a/g;->a(Lcom/vent/a/g;)I

    move-result v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/g;

    invoke-direct {p0, p1}, Lcom/vent/a/g;->a(Lcom/vent/a/g;)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/g;->cjR:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/g;->cjR:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/vent/a/g;->cjR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    invoke-virtual {v0, p1, p2}, Lcom/vent/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/g;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vent/a/g;->axa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
