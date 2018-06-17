.class public final Lokhttp3/internal/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/a/c$a;
    }
.end annotation


# instance fields
.field public final cZT:Lokhttp3/w;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final cZw:Lokhttp3/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/w;Lokhttp3/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/a/c;->cZT:Lokhttp3/w;

    iput-object p2, p0, Lokhttp3/internal/a/c;->cZw:Lokhttp3/y;

    return-void
.end method

.method public static a(Lokhttp3/y;Lokhttp3/w;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lokhttp3/y;->code:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v1, "Expires"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v1

    iget v1, v1, Lokhttp3/d;->maxAgeSeconds:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v1

    iget-boolean v1, v1, Lokhttp3/d;->isPublic:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v1

    iget-boolean v1, v1, Lokhttp3/d;->isPrivate:Z

    if-eqz v1, :cond_0

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lokhttp3/y;->MG()Lokhttp3/d;

    move-result-object v1

    iget-boolean v1, v1, Lokhttp3/d;->noStore:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/w;->MG()Lokhttp3/d;

    move-result-object v1

    iget-boolean v1, v1, Lokhttp3/d;->noStore:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
