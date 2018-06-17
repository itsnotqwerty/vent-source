.class public interface abstract Lokhttp3/m;
.super Ljava/lang/Object;


# static fields
.field public static final cYN:Lokhttp3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/m$1;

    invoke-direct {v0}, Lokhttp3/m$1;-><init>()V

    sput-object v0, Lokhttp3/m;->cYN:Lokhttp3/m;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
