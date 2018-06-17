.class final Lio/intercom/a/b/a/b/g$a$1;
.super Lio/intercom/a/b/a/b/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/b/g",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic cRN:Lio/intercom/a/b/a/b/g$a;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/g$a;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/a/b/a/b/g$a$1;->cRN:Lio/intercom/a/b/a/b/g$a;

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$a;->cRM:Lio/intercom/a/b/a/b/g;

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/b/g$c;-><init>(Lio/intercom/a/b/a/b/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/a/b/a/b/g$a$1;->Kf()Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    return-object v0
.end method
