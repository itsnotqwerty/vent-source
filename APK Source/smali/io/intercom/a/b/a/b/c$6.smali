.class final Lio/intercom/a/b/a/b/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/c;
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

.field final synthetic bhf:Ljava/lang/Class;

.field final synthetic cRA:Lio/intercom/a/b/a/b/c;

.field private final cRB:Lio/intercom/a/b/a/b/k;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/a/b/a/b/c$6;->cRA:Lio/intercom/a/b/a/b/c;

    iput-object p2, p0, Lio/intercom/a/b/a/b/c$6;->bhf:Ljava/lang/Class;

    iput-object p3, p0, Lio/intercom/a/b/a/b/c$6;->bhc:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/a/b/a/b/k;->Kg()Lio/intercom/a/b/a/b/k;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/b/a/b/c$6;->cRB:Lio/intercom/a/b/a/b/k;

    return-void
.end method


# virtual methods
.method public final vo()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/c$6;->cRB:Lio/intercom/a/b/a/b/k;

    iget-object v1, p0, Lio/intercom/a/b/a/b/c$6;->bhf:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/b/k;->r(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/b/a/b/c$6;->bhc:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
