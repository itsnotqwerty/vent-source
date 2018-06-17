.class public final Lcom/b/a/a/b/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field bIi:Ljava/net/Socket;

.field bJH:Lcom/b/a/m;

.field bLs:Lcom/b/a/n;

.field bLt:Lcom/b/a/a/b/i;

.field public bLu:Lcom/b/a/y;

.field bLv:Lcom/b/a/a/b/o;

.field c:Ljava/lang/String;

.field h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/b/a/a/b/i;->bKQ:Lcom/b/a/a/b/i;

    iput-object v0, p0, Lcom/b/a/a/b/n$a;->bLt:Lcom/b/a/a/b/i;

    sget-object v0, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    iput-object v0, p0, Lcom/b/a/a/b/n$a;->bLu:Lcom/b/a/y;

    sget-object v0, Lcom/b/a/a/b/o;->bLB:Lcom/b/a/a/b/o;

    iput-object v0, p0, Lcom/b/a/a/b/n$a;->bLv:Lcom/b/a/a/b/o;

    iput-object p1, p0, Lcom/b/a/a/b/n$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/b/n$a;->h:Z

    iput-object p2, p0, Lcom/b/a/a/b/n$a;->bIi:Ljava/net/Socket;

    return-void
.end method
