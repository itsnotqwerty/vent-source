.class public final Lcom/vent/a/j;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/a/b",
        "<",
        "Lcom/vent/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vent/a/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cjQ:Lcom/vent/a/m;

.field public ckg:Ljava/lang/String;

.field public ckh:Z

.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/a$a;

    const-class v1, Lcom/vent/a/j;

    invoke-direct {v0, v1}, Lcom/vent/a/a$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/vent/a/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/j;->cjQ:Lcom/vent/a/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/j;->ckg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/j;->message:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vent/a/j;->ckh:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "emotion_category_id"

    invoke-static {p1, v0}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/j;->cjQ:Lcom/vent/a/m;

    const-string v0, "gifter_name"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/j;->ckg:Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/vent/d/b;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/j;->message:Ljava/lang/String;

    const-string v0, "is_anonymous"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/a/j;->ckh:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/j;->cjQ:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vent/a/j;->ckg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/a/j;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vent/a/j;->ckh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
