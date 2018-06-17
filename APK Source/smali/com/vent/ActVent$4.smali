.class final Lcom/vent/ActVent$4;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVent;->Cs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bZn:Lcom/vent/ActVent;

.field bZo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/ActVent;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 7

    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    invoke-virtual {v0}, Lcom/vent/ActVent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActVent$4;->bZo:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/ActVent$4;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/ActVent$4;->bZo:Ljava/util/List;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActVent$4;->bZo:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    iget-object v1, v1, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    iget-object v1, v1, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v0, v1, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    iget-object v1, v1, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    iget-object v1, v1, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    const v3, 0x7f0f0073

    invoke-virtual {v2, v3}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVent$4;->bZn:Lcom/vent/ActVent;

    const v1, 0x7f0f0065

    invoke-virtual {v0, v1}, Lcom/vent/ActVent;->et(I)V

    goto :goto_0
.end method
