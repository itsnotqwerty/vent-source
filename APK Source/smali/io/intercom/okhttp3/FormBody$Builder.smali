.class public final Lio/intercom/okhttp3/FormBody$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    iput-object p1, p0, Lio/intercom/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/FormBody$Builder;
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v7, p0, Lio/intercom/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lio/intercom/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lio/intercom/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lio/intercom/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addEncoded(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/FormBody$Builder;
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v7, p0, Lio/intercom/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lio/intercom/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lio/intercom/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lio/intercom/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lio/intercom/okhttp3/FormBody;
    .locals 3

    new-instance v0, Lio/intercom/okhttp3/FormBody;

    iget-object v1, p0, Lio/intercom/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lio/intercom/okhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
