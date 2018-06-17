.class public final Lokhttp3/internal/e/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field client:Z

.field public daZ:Lokhttp3/internal/e/g$b;

.field public dad:Ld/e;

.field public dae:Ld/d;

.field dbb:Lokhttp3/internal/e/l;

.field public dbk:I

.field public hostname:Ljava/lang/String;

.field public socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lokhttp3/internal/e/g$b;->dbl:Lokhttp3/internal/e/g$b;

    iput-object v0, p0, Lokhttp3/internal/e/g$a;->daZ:Lokhttp3/internal/e/g$b;

    sget-object v0, Lokhttp3/internal/e/l;->dbJ:Lokhttp3/internal/e/l;

    iput-object v0, p0, Lokhttp3/internal/e/g$a;->dbb:Lokhttp3/internal/e/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/e/g$a;->client:Z

    return-void
.end method
