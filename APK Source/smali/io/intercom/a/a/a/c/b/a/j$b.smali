.class final Lio/intercom/a/a/a/c/b/a/j$b;
.super Lio/intercom/a/a/a/c/b/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/c/b/a/d",
        "<",
        "Lio/intercom/a/a/a/c/b/a/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic Iz()Lio/intercom/a/a/a/c/b/a/m;
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/b/a/j$a;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/c/b/a/j$a;-><init>(Lio/intercom/a/a/a/c/b/a/j$b;)V

    return-object v0
.end method

.method final c(ILjava/lang/Class;)Lio/intercom/a/a/a/c/b/a/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/intercom/a/a/a/c/b/a/j$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/a/j$b;->IA()Lio/intercom/a/a/a/c/b/a/m;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/j$a;

    iput p1, v0, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    iput-object p2, v0, Lio/intercom/a/a/a/c/b/a/j$a;->cLs:Ljava/lang/Class;

    return-object v0
.end method
