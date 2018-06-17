.class public Lcom/vent/a/k;
.super Lcom/vent/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/c",
        "<",
        "Lcom/vent/a/k;",
        "Lcom/vent/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cjP:Ljava/lang/String;

.field private cjR:Ljava/lang/CharSequence;

.field public cki:Ljava/lang/String;

.field public ckj:I

.field public ckk:I

.field public ckl:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vent/a/c$a;

    const-class v1, Lcom/vent/a/k;

    const-class v2, Lcom/vent/a/l;

    invoke-direct {v0, v1, v2}, Lcom/vent/a/c$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vent/a/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/c;-><init>()V

    iput-object p1, p0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {p0, p2}, Lcom/vent/a/k;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/vent/a/c;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v1, "you_listen_to"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    move v2, v1

    :goto_0
    const-string v1, "has_new_content"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_1
    or-int/2addr v2, v1

    const-string v1, "muted"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    :goto_2
    or-int/2addr v1, v2

    const-string v2, "is_nsfw"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x20

    :cond_0
    or-int/2addr v0, v1

    const-string v1, "your_role"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/k;->flags:I

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vent/a/k;->setName(Ljava/lang/String;)V

    const-string v0, "banner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/k;->cki:Ljava/lang/String;

    :cond_1
    const-string v0, "listener_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/a/k;->ckj:I

    const-string v0, "vent_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/a/k;->ckk:I

    const-string v0, "last_vented_at"

    invoke-static {p1, v0}, Lcom/vent/d/b;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/k;->ckl:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/vent/a/k;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/vent/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vent/a/k;-><init>(Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method


# virtual methods
.method final synthetic EL()Lcom/vent/a/c;
    .locals 1

    new-instance v0, Lcom/vent/a/k;

    invoke-direct {v0}, Lcom/vent/a/k;-><init>()V

    return-object v0
.end method

.method final synthetic EM()Lcom/vent/a/c;
    .locals 1

    new-instance v0, Lcom/vent/a/l;

    invoke-direct {v0}, Lcom/vent/a/l;-><init>()V

    return-object v0
.end method

.method public final EX()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/k;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EY()Z
    .locals 2

    iget v0, p0, Lcom/vent/a/k;->flags:I

    shr-int/lit8 v0, v0, 0x18

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic a(Lcom/vent/a/c;)V
    .locals 0

    check-cast p1, Lcom/vent/a/k;

    invoke-virtual {p0, p1}, Lcom/vent/a/k;->c(Lcom/vent/a/k;)V

    return-void
.end method

.method c(Lcom/vent/a/k;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/a/c;->a(Lcom/vent/a/c;)V

    iget-object v0, p1, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    iget-object v0, p1, Lcom/vent/a/k;->cki:Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/a/k;->cki:Ljava/lang/String;

    iget v0, p1, Lcom/vent/a/k;->ckj:I

    iput v0, p0, Lcom/vent/a/k;->ckj:I

    iget v0, p1, Lcom/vent/a/k;->ckk:I

    iput v0, p0, Lcom/vent/a/k;->ckk:I

    iget-object v0, p1, Lcom/vent/a/k;->ckl:Ljava/util/Date;

    iput-object v0, p0, Lcom/vent/a/k;->ckl:Ljava/util/Date;

    iget-object v0, p1, Lcom/vent/a/k;->cjR:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vent/a/k;->cjR:Ljava/lang/CharSequence;

    return-void
.end method

.method d(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vent/a/k;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/k;->cki:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/k;->ckj:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vent/a/k;->ckk:I

    invoke-static {p1}, Lcom/vent/d/d;->i(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/k;->ckl:Ljava/util/Date;

    return-void
.end method

.method public final eJ(I)V
    .locals 2

    iget v0, p0, Lcom/vent/a/k;->flags:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vent/a/k;->flags:I

    return-void
.end method

.method public final eK(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/k;->cki:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/k;->cjR:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/e;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/k;->cjR:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/vent/a/k;->cjR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isAdmin()Z
    .locals 2

    iget v0, p0, Lcom/vent/a/k;->flags:I

    shr-int/lit8 v0, v0, 0x18

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFull()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/k;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMuted()Z
    .locals 1

    iget v0, p0, Lcom/vent/a/k;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/a/k;->cjR:Ljava/lang/CharSequence;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vent/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/k;->cki:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vent/a/k;->ckj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vent/a/k;->ckk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vent/a/k;->ckl:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/vent/d/d;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    return-void
.end method
