.class final Lcom/vent/bb$6;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/bb;->EJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs Bq()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/vent/bb;->ciI:J

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->us()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->uu()V

    const-string v0, "reset"

    invoke-static {v0}, Lcom/vent/bb;->ee(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/bb;->cjk:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/vent/bb$6;->Bq()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
