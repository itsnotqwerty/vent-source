.class final Lio/intercom/a/a/a/c/a/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final cIA:Lio/intercom/a/a/a/c/a/a/a;


# instance fields
.field private final cIB:Lio/intercom/a/a/a/c/a/a/a;

.field private final cIC:Lio/intercom/a/a/a/c/a/a/d;

.field private final cID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final cIu:Lio/intercom/a/a/a/c/b/a/b;

.field private final cIv:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/a/a/a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/a/a/a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/a/a/e;->cIA:Lio/intercom/a/a/a/c/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lio/intercom/a/a/a/c/a/a/a;Lio/intercom/a/a/a/c/a/a/d;Lio/intercom/a/a/a/c/b/a/b;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Lio/intercom/a/a/a/c/a/a/a;",
            "Lio/intercom/a/a/a/c/a/a/d;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/a/a/a/c/a/a/e;->cIB:Lio/intercom/a/a/a/c/a/a/a;

    iput-object p3, p0, Lio/intercom/a/a/a/c/a/a/e;->cIC:Lio/intercom/a/a/a/c/a/a/d;

    iput-object p4, p0, Lio/intercom/a/a/a/c/a/a/e;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    iput-object p5, p0, Lio/intercom/a/a/a/c/a/a/e;->cIv:Landroid/content/ContentResolver;

    iput-object p1, p0, Lio/intercom/a/a/a/c/a/a/e;->cID:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/intercom/a/a/a/c/a/a/d;Lio/intercom/a/a/a/c/b/a/b;Landroid/content/ContentResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Lio/intercom/a/a/a/c/a/a/d;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    sget-object v2, Lio/intercom/a/a/a/c/a/a/e;->cIA:Lio/intercom/a/a/a/c/a/a/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/intercom/a/a/a/c/a/a/e;-><init>(Ljava/util/List;Lio/intercom/a/a/a/c/a/a/a;Lio/intercom/a/a/a/c/a/a/d;Lio/intercom/a/a/a/c/b/a/b;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final r(Landroid/net/Uri;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/e;->cIv:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/e;->cID:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/a/a/a/c/a/a/e;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/c/g;->b(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "ThumbStreamOpener"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ThumbStreamOpener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public final s(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/a/a/a/c/a/a/e;->cIC:Lio/intercom/a/a/a/c/a/a/d;

    invoke-interface {v1, p1}, Lio/intercom/a/a/a/c/a/a/d;->q(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_1

    :try_start_3
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/e;->cIv:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NPE opening uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method
