.class public interface abstract Lokhttp3/b;
.super Ljava/lang/Object;


# static fields
.field public static final cWb:Lokhttp3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/b$1;

    invoke-direct {v0}, Lokhttp3/b$1;-><init>()V

    sput-object v0, Lokhttp3/b;->cWb:Lokhttp3/b;

    return-void
.end method


# virtual methods
.method public abstract LV()Lokhttp3/w;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
