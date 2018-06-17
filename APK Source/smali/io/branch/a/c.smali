.class public final Lio/branch/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/a/c$a;
    }
.end annotation


# static fields
.field private static cve:Lio/branch/a/c;


# instance fields
.field public cvf:Lorg/json/JSONObject;

.field public cvg:Ljava/lang/String;

.field public cvh:I

.field public cvi:I

.field public cvj:I

.field public cvk:Z

.field public cvl:Lorg/json/JSONArray;

.field public cvm:Landroid/content/SharedPreferences;

.field private final cvn:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lio/branch/a/c;->cvh:I

    const/4 v0, 0x1

    iput v0, p0, Lio/branch/a/c;->cvi:I

    iput v1, p0, Lio/branch/a/c;->cvj:I

    iput-boolean v1, p0, Lio/branch/a/c;->cvk:Z

    const-string v0, "BNC_CD_MANIFEST"

    iput-object v0, p0, Lio/branch/a/c;->cvn:Ljava/lang/String;

    const-string v0, "bnc_content_discovery_manifest_storage"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/branch/a/c;->cvm:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lio/branch/a/c;->cvm:Landroid/content/SharedPreferences;

    const-string v1, "BNC_CD_MANIFEST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    const-string v1, "mv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    const-string v1, "mv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/a/c;->cvg:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lio/branch/a/c;->cvl:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/a/c;->cvf:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static bP(Landroid/content/Context;)Lio/branch/a/c;
    .locals 1

    sget-object v0, Lio/branch/a/c;->cve:Lio/branch/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/a/c;

    invoke-direct {v0, p0}, Lio/branch/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/a/c;->cve:Lio/branch/a/c;

    :cond_0
    sget-object v0, Lio/branch/a/c;->cve:Lio/branch/a/c;

    return-object v0
.end method


# virtual methods
.method public final Gr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/a/c;->cvg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-1"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/branch/a/c;->cvg:Ljava/lang/String;

    goto :goto_0
.end method

.method final x(Landroid/app/Activity;)Lio/branch/a/c$a;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lio/branch/a/c;->cvl:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/branch/a/c;->cvl:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lio/branch/a/c;->cvl:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lio/branch/a/c$a;

    invoke-direct {v0, p0, v3}, Lio/branch/a/c$a;-><init>(Lio/branch/a/c;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
