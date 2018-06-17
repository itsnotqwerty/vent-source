.class public Lcom/google/android/gms/common/m;
.super Ljava/lang/Object;


# static fields
.field public static final aCp:I

.field private static final aJL:Lcom/google/android/gms/common/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/y;->aCp:I

    sput v0, Lcom/google/android/gms/common/m;->aCp:I

    new-instance v0, Lcom/google/android/gms/common/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/m;->aJL:Lcom/google/android/gms/common/m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static K(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/y;->K(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/y;->t(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    :cond_0
    return v0
.end method

.method public static L(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/y;->L(Landroid/content/Context;)V

    return-void
.end method

.method public static M(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/y;->M(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/m;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, 0x10000000

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/util/g;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/internal/l;->od()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms"

    invoke-static {p0, p2}, Lcom/google/android/gms/common/m;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->p(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->be(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static cN(I)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lcom/google/android/gms/common/m;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gcore_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/gms/common/m;->aCp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ee;->ag(Landroid/content/Context;)Lcom/google/android/gms/internal/ed;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ed;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static oN()Lcom/google/android/gms/common/m;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/m;->aJL:Lcom/google/android/gms/common/m;

    return-object v0
.end method

.method public static t(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/y;->t(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/common/m;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public cC(I)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/y;->cO(I)Z

    move-result v0

    return v0
.end method

.method public cD(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/y;->cD(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/m;->K(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
