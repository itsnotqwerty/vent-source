.class public interface abstract Lcom/b/a/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final bIt:Lcom/b/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/e$1;

    invoke-direct {v0}, Lcom/b/a/a/e$1;-><init>()V

    sput-object v0, Lcom/b/a/a/e;->bIt:Lcom/b/a/a/e;

    return-void
.end method


# virtual methods
.method public abstract dC(Ljava/lang/String;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
