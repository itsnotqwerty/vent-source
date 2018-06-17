.class public final Lcom/b/a/a/a/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final bJJ:Lcom/b/a/c;

.field public final bJK:Ljava/net/Socket;

.field public final bJL:Lcom/b/a/y;

.field public final bJM:Lcom/b/a/s;


# direct methods
.method public constructor <init>(Lcom/b/a/c;Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/q$a;->bJJ:Lcom/b/a/c;

    iput-object p2, p0, Lcom/b/a/a/a/q$a;->bJK:Ljava/net/Socket;

    iput-object v0, p0, Lcom/b/a/a/a/q$a;->bJL:Lcom/b/a/y;

    iput-object v0, p0, Lcom/b/a/a/a/q$a;->bJM:Lcom/b/a/s;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/c;Ljavax/net/ssl/SSLSocket;Lcom/b/a/y;Lcom/b/a/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/q$a;->bJJ:Lcom/b/a/c;

    iput-object p2, p0, Lcom/b/a/a/a/q$a;->bJK:Ljava/net/Socket;

    iput-object p3, p0, Lcom/b/a/a/a/q$a;->bJL:Lcom/b/a/y;

    iput-object p4, p0, Lcom/b/a/a/a/q$a;->bJM:Lcom/b/a/s;

    return-void
.end method
