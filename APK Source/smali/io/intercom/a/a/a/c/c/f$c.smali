.class final Lio/intercom/a/a/a/c/c/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final cMF:Lio/intercom/a/a/a/c/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/f$d",
            "<TData;>;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lio/intercom/a/a/a/c/c/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/intercom/a/a/a/c/c/f$d",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/f$c;->file:Ljava/io/File;

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/f$c;->cMF:Lio/intercom/a/a/a/c/c/f$d;

    return-void
.end method


# virtual methods
.method public final HT()Lio/intercom/a/a/a/c/a;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/a;->cHC:Lio/intercom/a/a/a/c/a;

    return-object v0
.end method

.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/f$c;->cMF:Lio/intercom/a/a/a/c/c/f$d;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/c/f$d;->HU()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/f$c;->cMF:Lio/intercom/a/a/a/c/c/f$d;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/f$c;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/c/f$d;->n(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/f$c;->data:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/f$c;->data:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FileLoader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FileLoader"

    const-string v2, "Failed to open file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->i(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final cleanup()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/f$c;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/f$c;->cMF:Lio/intercom/a/a/a/c/c/f$d;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/f$c;->data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/c/f$d;->ar(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
