.class final Lcom/a/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/d;


# instance fields
.field private final avl:Lcom/crashlytics/android/answers/Answers;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/Answers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/a;->avl:Lcom/crashlytics/android/answers/Answers;

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/a/a/c;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/a/a/a/a/a;->avl:Lcom/crashlytics/android/answers/Answers;

    new-instance v3, Lcom/crashlytics/android/answers/CustomEvent;

    iget-object v0, p1, Lcom/a/a/a/a/c;->avn:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/a/a/a/a/c;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/a/a/a/a/c;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnswersKitEventLogger"

    const-string v2, "Unexpected error sending Answers event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_1
    :try_start_1
    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v3, v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
