.class final Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/NamespaceRemovingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringPrefixSlicer"
.end annotation


# instance fields
.field avc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final aA(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final aB(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->avc:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
