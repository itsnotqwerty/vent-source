.class public abstract Lcom/b/a/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final bIr:Ljava/util/logging/Logger;

.field public static bIs:Lcom/b/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b;->bIr:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/b/a/m;Lcom/b/a/a/a/g;)Lcom/b/a/a/a/t;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/b/a/x;)Lcom/b/a/a/c;
.end method

.method public abstract a(Lcom/b/a/m;Lcom/b/a/y;)V
.end method

.method public abstract a(Lcom/b/a/m;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/b/a/o;Lcom/b/a/m;)V
.end method

.method public abstract a(Lcom/b/a/p;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lcom/b/a/t$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/b/a/x;Lcom/b/a/m;Lcom/b/a/a/a/g;Lcom/b/a/aa;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b/a/a/a/o;
        }
    .end annotation
.end method

.method public abstract b(Lcom/b/a/x;)Lcom/b/a/a/h;
.end method

.method public abstract b(Lcom/b/a/m;Lcom/b/a/a/a/g;)V
.end method

.method public abstract b(Lcom/b/a/m;)Z
.end method

.method public abstract c(Lcom/b/a/m;)I
.end method

.method public abstract c(Lcom/b/a/x;)Lcom/b/a/a/e;
.end method

.method public abstract d(Lcom/b/a/m;)Z
.end method
