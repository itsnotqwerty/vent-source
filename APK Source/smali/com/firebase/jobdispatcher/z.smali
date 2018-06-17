.class public final Lcom/firebase/jobdispatcher/z;
.super Ljava/lang/Object;


# static fields
.field public static final ayi:Lcom/firebase/jobdispatcher/u$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/firebase/jobdispatcher/u$c;

    invoke-direct {v0}, Lcom/firebase/jobdispatcher/u$c;-><init>()V

    sput-object v0, Lcom/firebase/jobdispatcher/z;->ayi:Lcom/firebase/jobdispatcher/u$c;

    return-void
.end method

.method public static at(II)Lcom/firebase/jobdispatcher/u$b;
    .locals 2

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window start can\'t be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window end can\'t be less than window start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/firebase/jobdispatcher/u$b;

    invoke-direct {v0, p0, p1}, Lcom/firebase/jobdispatcher/u$b;-><init>(II)V

    return-object v0
.end method

.method public static o(Ljava/util/List;)Lcom/firebase/jobdispatcher/u$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/jobdispatcher/w;",
            ">;)",
            "Lcom/firebase/jobdispatcher/u$a;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uris must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/firebase/jobdispatcher/u$a;

    invoke-direct {v0, p0}, Lcom/firebase/jobdispatcher/u$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method
