.class final Lio/intercom/a/a/a/c/c/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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
.field private final cMA:Ljava/lang/String;

.field private final cMB:Lio/intercom/a/a/a/c/c/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/e$a",
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


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/intercom/a/a/a/c/c/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/a/a/a/c/c/e$a",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/e$b;->cMA:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/e$b;->cMB:Lio/intercom/a/a/a/c/c/e$a;

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

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/e$b;->cMB:Lio/intercom/a/a/a/c/c/e$a;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/c/e$a;->HU()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-TData;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/e$b;->cMB:Lio/intercom/a/a/a/c/c/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/e$b;->cMA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/c/e$a;->eY(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/e$b;->data:Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/e$b;->data:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->i(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final cleanup()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/e$b;->cMB:Lio/intercom/a/a/a/c/c/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/e$b;->data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/c/e$a;->ar(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
