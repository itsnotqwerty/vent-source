.class final Lcom/vent/MyApplication$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/MyApplication;->onCreate()V
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
.field final synthetic cgL:Lcom/vent/MyApplication;


# direct methods
.method constructor <init>(Lcom/vent/MyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/MyApplication$1;->cgL:Lcom/vent/MyApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs Bq()Ljava/lang/Void;
    .locals 4

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/MyApplication$1;->cgL:Lcom/vent/MyApplication;

    invoke-virtual {v1}, Lcom/vent/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/MyApplication$1;->cgL:Lcom/vent/MyApplication;

    invoke-virtual {v2}, Lcom/vent/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/MyApplication$1$1;

    invoke-direct {v0, p0}, Lcom/vent/MyApplication$1$1;-><init>(Lcom/vent/MyApplication$1;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :array_0
    .array-data 1
        0x6dt
        0x1bt
        -0x4ft
        -0x1ct
        0x68t
        -0x2t
        -0xbt
        0x33t
        -0x31t
        -0x69t
        -0x62t
        -0x53t
        0x3bt
        -0x4bt
        -0x30t
        0x4dt
        -0x2dt
        -0x3ct
        0x20t
        0x7ft
    .end array-data

    :array_1
    .array-data 1
        -0x7ct
        -0x7at
        0x4et
        -0x11t
        -0x78t
        0x10t
        -0x47t
        -0x35t
        0x6at
        -0x7ct
        0x6ft
        0x3at
        0x48t
        -0x3ft
        0x47t
        0x6t
        0x10t
        -0x72t
        0x6ft
        -0xft
    .end array-data
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/vent/MyApplication$1;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
