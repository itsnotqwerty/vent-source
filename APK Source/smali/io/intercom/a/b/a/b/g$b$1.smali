.class final Lio/intercom/a/b/a/b/g$b$1;
.super Lio/intercom/a/b/a/b/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/g$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/b/g",
        "<TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic cRO:Lio/intercom/a/b/a/b/g$b;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/g$b;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/a/b/a/b/g$b$1;->cRO:Lio/intercom/a/b/a/b/g$b;

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$b;->cRM:Lio/intercom/a/b/a/b/g;

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/b/g$c;-><init>(Lio/intercom/a/b/a/b/g;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/b/a/b/g$b$1;->Kf()Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    iget-object v0, v0, Lio/intercom/a/b/a/b/g$d;->bhL:Ljava/lang/Object;

    return-object v0
.end method
