.class public abstract Lcom/vent/a/b;
.super Lcom/vent/a/a;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vent/a/b;",
        ">",
        "Lcom/vent/a/a;",
        "Ljava/lang/Comparable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public cjy:Lcom/vent/a/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    invoke-static {p1}, Lcom/vent/a/m;->f(Landroid/os/Parcel;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a/a;-><init>()V

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/vent/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vent/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/b;Lcom/vent/a/b;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-static {v0, p1}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-static {p0, v0}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/b;Lcom/vent/a/m;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/m;Lcom/vent/a/b;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/vent/a/b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    iget-object v1, p1, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Lcom/vent/a/m;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vent/a/b;

    invoke-virtual {p0, p1}, Lcom/vent/a/b;->a(Lcom/vent/a/b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/vent/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    check-cast p1, Lcom/vent/a/b;

    iget-object v1, p1, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vent/a/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    check-cast p1, Lcom/vent/a/m;

    invoke-static {v0, p1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    new-instance v1, Lcom/vent/a/m;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-static {v0, p1, p2}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Landroid/os/Parcel;I)V

    return-void
.end method
