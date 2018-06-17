.class final Lio/intercom/a/b/a/b/k$1;
.super Lio/intercom/a/b/a/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/k;->Kg()Lio/intercom/a/b/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bhO:Ljava/lang/reflect/Method;

.field final synthetic bhP:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/k$1;->bhO:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lio/intercom/a/b/a/b/k$1;->bhP:Ljava/lang/Object;

    invoke-direct {p0}, Lio/intercom/a/b/a/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/a/b/a/b/k$1;->s(Ljava/lang/Class;)V

    iget-object v0, p0, Lio/intercom/a/b/a/b/k$1;->bhO:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/intercom/a/b/a/b/k$1;->bhP:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
