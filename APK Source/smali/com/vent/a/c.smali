.class public abstract Lcom/vent/a/c;
.super Lcom/vent/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ts:",
        "Lcom/vent/a/c;",
        "Tf:TTs;>",
        "Lcom/vent/a/b",
        "<TTs;>;"
    }
.end annotation


# instance fields
.field public flags:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/b;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/vent/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTs;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vent/a/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vent/a/c;->a(Lcom/vent/a/c;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vent/a/c;-><init>(Lorg/json/JSONObject;B)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vent/a/b;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Lcom/vent/a/c;)Lcom/vent/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ts:",
            "Lcom/vent/a/c;",
            ">(TTs;)TTs;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/a/c;->EN()Lcom/vent/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/vent/a/c;)Lcom/vent/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ts:",
            "Lcom/vent/a/c;",
            "Tf:TTs;>(TTs;)TTf;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/a/c;->EO()Lcom/vent/a/c;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method abstract EL()Lcom/vent/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTs;"
        }
    .end annotation
.end method

.method abstract EM()Lcom/vent/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTf;"
        }
    .end annotation
.end method

.method public final EN()Lcom/vent/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTs;"
        }
    .end annotation

    iget v0, p0, Lcom/vent/a/c;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/a/c;->EL()Lcom/vent/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vent/a/c;->a(Lcom/vent/a/c;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final EO()Lcom/vent/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTf;"
        }
    .end annotation

    iget v0, p0, Lcom/vent/a/c;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/a/c;->EM()Lcom/vent/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vent/a/c;->a(Lcom/vent/a/c;)V

    move-object p0, v0

    goto :goto_0
.end method

.method a(Lcom/vent/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTs;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/vent/a/c;->cjy:Lcom/vent/a/m;

    iput-object v0, p0, Lcom/vent/a/c;->cjy:Lcom/vent/a/m;

    iget v0, p1, Lcom/vent/a/c;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/vent/a/c;->flags:I

    return-void
.end method

.method abstract d(Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vent/a/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vent/a/c;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
