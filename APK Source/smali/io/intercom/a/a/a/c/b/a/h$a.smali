.class final Lio/intercom/a/a/a/c/b/a/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final bhL:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field cLm:Lio/intercom/a/a/a/c/b/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/a/h$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cLn:Lio/intercom/a/a/a/c/b/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/a/h$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/b/a/h$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object p0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/a/h$a;->bhL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/a/h$a;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h$a;->values:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
