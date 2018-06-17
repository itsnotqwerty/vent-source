.class public final Lcom/vent/a/n;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/n;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/n;->count:I

    return-void
.end method

.method constructor <init>(Lcom/vent/a/m;I)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/b;-><init>()V

    iput-object p1, p0, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    iput p2, p0, Lcom/vent/a/n;->count:I

    return-void
.end method

.method static a(Ljava/util/ArrayList;Lcom/vent/a/m;)Lcom/vent/a/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/n;",
            ">;",
            "Lcom/vent/a/m;",
            ")",
            "Lcom/vent/a/n;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/n;

    invoke-static {p1, v0}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/n;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/a/o;->eh(Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/vent/a/n;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v4, v3, v0}, Lcom/vent/a/n;-><init>(Lcom/vent/a/m;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/a/o;->d(Lcom/vent/a/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/n;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
