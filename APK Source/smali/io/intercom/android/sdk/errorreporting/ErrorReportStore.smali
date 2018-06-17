.class Lio/intercom/android/sdk/errorreporting/ErrorReportStore;
.super Ljava/lang/Object;


# static fields
.field private static final REPORT_FILE_PATH:Ljava/lang/String; = "intercom-error.json"

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;


# instance fields
.field private final reportFile:Ljava/io/File;

.field private final storage:Lio/intercom/android/sdk/persistence/JsonStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lio/intercom/android/sdk/persistence/JsonStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->reportFile:Ljava/io/File;

    iput-object p2, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->storage:Lio/intercom/android/sdk/persistence/JsonStorage;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->reportFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/api/Api;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->readAndSendReport(Lio/intercom/android/sdk/api/Api;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/errorreporting/ErrorReportStore;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "intercom-error.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    new-instance v2, Lio/intercom/android/sdk/persistence/JsonStorage;

    invoke-direct {v2, p1}, Lio/intercom/android/sdk/persistence/JsonStorage;-><init>(Lio/intercom/a/b/a/e;)V

    invoke-direct {v1, v0, v2}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;-><init>(Ljava/io/File;Lio/intercom/android/sdk/persistence/JsonStorage;)V

    return-object v1
.end method

.method private readAndSendReport(Lio/intercom/android/sdk/api/Api;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->storage:Lio/intercom/android/sdk/persistence/JsonStorage;

    iget-object v1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->reportFile:Ljava/io/File;

    const-class v2, Lio/intercom/android/sdk/errorreporting/ErrorReport;

    new-instance v3, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;

    invoke-direct {v3, p0, p1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;-><init>(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/api/Api;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/persistence/JsonStorage;->loadThenDelete(Ljava/io/File;Ljava/lang/Class;Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;)V

    return-void
.end method


# virtual methods
.method saveToDisk(Lio/intercom/android/sdk/errorreporting/ErrorReport;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->storage:Lio/intercom/android/sdk/persistence/JsonStorage;

    iget-object v1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->reportFile:Ljava/io/File;

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/persistence/JsonStorage;->saveToFileAsJson(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method sendSavedReport(Lio/intercom/android/sdk/Provider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;-><init>(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/Provider;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t queue up sending of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0
.end method
