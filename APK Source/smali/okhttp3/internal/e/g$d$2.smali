.class final Lokhttp3/internal/e/g$d$2;
.super Lokhttp3/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/e/g$d;->a(Lokhttp3/internal/e/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dbr:Lokhttp3/internal/e/g$d;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/e/g$d;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/e/g$d$2;->dbr:Lokhttp3/internal/e/g$d;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/e/g$d$2;->dbr:Lokhttp3/internal/e/g$d;

    iget-object v0, v0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->daZ:Lokhttp3/internal/e/g$b;

    iget-object v1, p0, Lokhttp3/internal/e/g$d$2;->dbr:Lokhttp3/internal/e/g$d;

    iget-object v1, v1, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/g$b;->a(Lokhttp3/internal/e/g;)V

    return-void
.end method
