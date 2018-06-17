.class public final Lokhttp3/internal/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field ageSeconds:I

.field final cZt:Lokhttp3/w;

.field final cZw:Lokhttp3/y;

.field etag:Ljava/lang/String;

.field expires:Ljava/util/Date;

.field lastModified:Ljava/util/Date;

.field lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field receivedResponseMillis:J

.field sentRequestMillis:J

.field servedDate:Ljava/util/Date;

.field servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/w;Lokhttp3/y;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lokhttp3/internal/a/c$a;->ageSeconds:I

    iput-wide p1, p0, Lokhttp3/internal/a/c$a;->nowMillis:J

    iput-object p3, p0, Lokhttp3/internal/a/c$a;->cZt:Lokhttp3/w;

    iput-object p4, p0, Lokhttp3/internal/a/c$a;->cZw:Lokhttp3/y;

    if-eqz p4, :cond_5

    iget-wide v0, p4, Lokhttp3/y;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/internal/a/c$a;->sentRequestMillis:J

    iget-wide v0, p4, Lokhttp3/y;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/internal/a/c$a;->receivedResponseMillis:J

    iget-object v1, p4, Lokhttp3/y;->cZo:Lokhttp3/p;

    const/4 v0, 0x0

    iget-object v2, v1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lokhttp3/internal/c/d;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/a/c$a;->servedDate:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/a/c$a;->servedDateString:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lokhttp3/internal/c/d;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/a/c$a;->expires:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lokhttp3/internal/c/d;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/a/c$a;->lastModified:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/a/c$a;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lokhttp3/internal/a/c$a;->etag:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v4, v6}, Lokhttp3/internal/c/e;->parseSeconds(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/a/c$a;->ageSeconds:I

    goto :goto_1

    :cond_5
    return-void
.end method
