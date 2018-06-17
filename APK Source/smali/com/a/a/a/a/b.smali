.class public final Lcom/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final avm:Lcom/a/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Answers must be initialized before logging kit events"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    sput-object v0, Lcom/a/a/a/a/b;->avm:Lcom/a/a/a/a/d;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/a/a/a/a/a;

    invoke-direct {v0, v2}, Lcom/a/a/a/a/a;-><init>(Lcom/crashlytics/android/answers/Answers;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "AnswersOptionalLogger"

    const-string v3, "Unexpected error creating AnswersKitEventLogger"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/a/a/e;

    invoke-direct {v0}, Lcom/a/a/a/a/e;-><init>()V

    goto :goto_1
.end method

.method public static kl()Lcom/a/a/a/a/d;
    .locals 1

    sget-object v0, Lcom/a/a/a/a/b;->avm:Lcom/a/a/a/a/d;

    return-object v0
.end method
