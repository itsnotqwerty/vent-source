.class public Lcom/layer/sdk/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/UUID;

.field private final d:Ljava/util/UUID;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lcom/layer/sdk/internal/lsdkd/i;

.field private final h:Lcom/layer/b/d/k;

.field private final i:Ljava/io/File;

.field private j:Lcom/layer/sdk/internal/b$a;

.field private final k:Lcom/layer/sdk/internal/lsdki/a;

.field private final l:Lcom/layer/sdk/internal/lsdke/g;

.field private final m:Lcom/layer/sdk/internal/lsdkd/j;

.field private final n:Lcom/layer/sdk/internal/lsdkf/c;

.field private final o:Lcom/layer/sdk/internal/lsdkc/a;

.field private final p:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/layer/sdk/internal/lsdkd/f$b;Lcom/layer/sdk/internal/lsdkf/c$a;Lcom/layer/sdk/internal/lsdkd/i;Lcom/layer/sdk/internal/lsdkc/a$a;Lcom/layer/sdk/internal/lsdkk/o;ZZLjava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Lcom/layer/sdk/internal/lsdkc/c;)V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/layer/sdk/internal/b$a;->a:Lcom/layer/sdk/internal/b$a;

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->j:Lcom/layer/sdk/internal/b$a;

    if-nez p9, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Null app ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p10, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Null Layer user ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p11, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Null user ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/layer/sdk/internal/b;->c:Ljava/util/UUID;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/layer/sdk/internal/b;->d:Ljava/util/UUID;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/layer/sdk/internal/b;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->b:Ljava/lang/String;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/layer/sdk/internal/b;->f:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/layer/sdk/internal/b;->h:Lcom/layer/b/d/k;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/layer/sdk/internal/b;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->a()Lcom/layer/sdk/internal/lsdki/a;

    move-result-object v2

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->k:Lcom/layer/sdk/internal/lsdki/a;

    new-instance v2, Lcom/layer/sdk/internal/lsdke/g;

    move-object/from16 v3, p1

    move/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v2 .. v7}, Lcom/layer/sdk/internal/lsdke/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->l:Lcom/layer/sdk/internal/lsdke/g;

    iget-object v2, p0, Lcom/layer/sdk/internal/b;->l:Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdke/g;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/layer/sdk/internal/b$a;->c:Lcom/layer/sdk/internal/b$a;

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->j:Lcom/layer/sdk/internal/b$a;

    :goto_0
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/layer/sdk/internal/b;->g:Lcom/layer/sdk/internal/lsdkd/i;

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/j;

    invoke-direct {v2, p0}, Lcom/layer/sdk/internal/lsdkd/j;-><init>(Lcom/layer/sdk/internal/lsdkd/h;)V

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->m:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->b()Lcom/layer/sdk/internal/lsdkf/c;

    move-result-object v2

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->n:Lcom/layer/sdk/internal/lsdkf/c;

    iget-object v2, p0, Lcom/layer/sdk/internal/b;->c:Ljava/util/UUID;

    iget-object v3, p0, Lcom/layer/sdk/internal/b;->d:Ljava/util/UUID;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkc/e;->a(Landroid/content/Context;Ljava/util/UUID;Ljava/util/UUID;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->i:Ljava/io/File;

    iget-object v2, p0, Lcom/layer/sdk/internal/b;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/layer/sdk/internal/b;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Could not create content directory"

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v5, Lcom/layer/sdk/internal/lsdkc/a;

    iget-object v7, p0, Lcom/layer/sdk/internal/b;->l:Lcom/layer/sdk/internal/lsdke/g;

    iget-object v8, p0, Lcom/layer/sdk/internal/b;->h:Lcom/layer/b/d/k;

    iget-object v10, p0, Lcom/layer/sdk/internal/b;->i:Ljava/io/File;

    iget-object v12, p0, Lcom/layer/sdk/internal/b;->g:Lcom/layer/sdk/internal/lsdkd/i;

    move-object/from16 v6, p14

    move-object/from16 v9, p13

    move-object/from16 v11, p5

    move-object v13, p0

    move-object/from16 v14, p6

    invoke-direct/range {v5 .. v14}, Lcom/layer/sdk/internal/lsdkc/a;-><init>(Lcom/layer/sdk/internal/lsdkc/f;Lcom/layer/sdk/internal/lsdkc/a$b;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Ljava/io/File;Lcom/layer/sdk/internal/lsdkc/a$a;Lcom/layer/sdk/internal/lsdka/c;Lcom/layer/sdk/internal/lsdkd/h;Lcom/layer/sdk/internal/lsdkk/o;)V

    iput-object v5, p0, Lcom/layer/sdk/internal/b;->o:Lcom/layer/sdk/internal/lsdkc/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/b;->o:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkc/a;->b()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/f$b;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->f()Lcom/layer/sdk/internal/lsdkf/c;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkf/c;->a(Lcom/layer/sdk/internal/lsdkf/c$a;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/b;->i:Ljava/io/File;

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/h;->b(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_4
    sget-object v4, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->STORAGE_USED_BY_SDK:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    add-long/2addr v2, v6

    invoke-static {v4, v2, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->record(Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;J)V

    return-void

    :cond_5
    sget-object v2, Lcom/layer/sdk/internal/b$a;->b:Lcom/layer/sdk/internal/b$a;

    iput-object v2, p0, Lcom/layer/sdk/internal/b;->j:Lcom/layer/sdk/internal/b$a;

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "LayerSession::deleteLocalDatabase:Enter"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Attempting to delete the local database file(s)"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/b;->p:Landroid/content/Context;

    const-string v2, "layer.pathtest.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v0, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    array-length v6, v5

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_8

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x64

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x32

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v9, "Sleep interrupted "

    invoke-static {v8, v9, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_6
    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_7
    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Deleted file: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Removed local database file(s)"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Failed to delete local database file(s)"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method private q()V
    .locals 3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Attempting to delete all content"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/b;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/h;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Deleted all content"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not delete content"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/layer/sdk/internal/lsdki/a;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdki/a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdki/a;-><init>()V

    return-object v0
.end method

.method public a(Lcom/layer/sdk/LayerClient$DeauthenticationAction;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "LayerSession::close:Enter"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to close Layer session with action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->o()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->o:Lcom/layer/sdk/internal/lsdkc/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/a;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->n:Lcom/layer/sdk/internal/lsdkf/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/c;->c()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->m:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/j;->c()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->m:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/j;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->k:Lcom/layer/sdk/internal/lsdki/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a;->c()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->l:Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/g;->h()Lcom/layer/sdk/internal/lsdke/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    if-ne p1, v0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/layer/sdk/internal/b;->q()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Finished closing Layer session"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "LayerSession::close:Exit"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    if-ne p1, v1, :cond_7

    :try_start_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/layer/sdk/internal/b;->q()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/layer/sdk/internal/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public a(Lcom/layer/sdk/internal/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/b;->j:Lcom/layer/sdk/internal/b$a;

    return-void
.end method

.method public a(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->c:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->d:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lcom/layer/sdk/internal/lsdkf/c;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkf/c;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdkf/c;-><init>(Lcom/layer/sdk/internal/b;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layer."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->d:Ljava/util/UUID;

    return-object v0
.end method

.method public e()Lcom/layer/sdk/internal/lsdki/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->k:Lcom/layer/sdk/internal/lsdki/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/layer/sdk/internal/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/layer/sdk/internal/b;

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/layer/sdk/internal/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/layer/sdk/internal/lsdkf/c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->n:Lcom/layer/sdk/internal/lsdkf/c;

    return-object v0
.end method

.method public g()Lcom/layer/sdk/internal/lsdkc/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->o:Lcom/layer/sdk/internal/lsdkc/a;

    return-object v0
.end method

.method public h()Lcom/layer/b/d/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->h:Lcom/layer/b/d/k;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/b;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    return-object v0
.end method

.method public k()Lcom/layer/sdk/internal/lsdke/g;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->l:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public l()Lcom/layer/sdk/internal/lsdke/b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->l:Lcom/layer/sdk/internal/lsdke/g;

    return-object v0
.end method

.method public m()Lcom/layer/sdk/internal/lsdkd/f;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->m:Lcom/layer/sdk/internal/lsdkd/j;

    return-object v0
.end method

.method public n()Lcom/layer/sdk/internal/lsdkd/i;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->g:Lcom/layer/sdk/internal/lsdkd/i;

    return-object v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->k:Lcom/layer/sdk/internal/lsdki/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->n:Lcom/layer/sdk/internal/lsdkf/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/c;->b()V

    return-void
.end method

.method public p()Lcom/layer/sdk/internal/b$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/b;->j:Lcom/layer/sdk/internal/b$a;

    return-object v0
.end method
