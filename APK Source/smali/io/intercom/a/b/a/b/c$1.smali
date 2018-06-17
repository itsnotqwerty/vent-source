.class final Lio/intercom/a/b/a/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/c;->b(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/b/a/b/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bhc:Ljava/lang/reflect/Type;

.field final synthetic cRA:Lio/intercom/a/b/a/b/c;

.field final synthetic cRz:Lio/intercom/a/b/a/f;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/c;Lio/intercom/a/b/a/f;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/c$1;->cRA:Lio/intercom/a/b/a/b/c;

    iput-object p2, p0, Lio/intercom/a/b/a/b/c$1;->cRz:Lio/intercom/a/b/a/f;

    iput-object p3, p0, Lio/intercom/a/b/a/b/c$1;->bhc:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final vo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/c$1;->cRz:Lio/intercom/a/b/a/f;

    invoke-interface {v0}, Lio/intercom/a/b/a/f;->vd()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
