.class public final Lcom/amazonaws/services/s3/util/Mimetypes;
.super Ljava/lang/Object;


# static fields
.field public static final alS:Lorg/apache/commons/logging/Log;

.field private static atZ:Lcom/amazonaws/services/s3/util/Mimetypes;


# instance fields
.field public final aua:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/util/Mimetypes;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    sput-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->atZ:Lcom/amazonaws/services/s3/util/Mimetypes;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ai"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "aifc"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "aiff"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "asc"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "atom"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "au"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "avi"

    const-string v2, "video/x-msvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "bcpio"

    const-string v2, "application/x-bcpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "bin"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "cdf"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "cgm"

    const-string v2, "image/cgm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "class"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "cpio"

    const-string v2, "application/x-cpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "cpt"

    const-string v2, "application/mac-compactpro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "csh"

    const-string v2, "application/x-csh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dcr"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dif"

    const-string v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dir"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dll"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dmg"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dms"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dtd"

    const-string v2, "application/xml-dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dv"

    const-string v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dvi"

    const-string v2, "application/x-dvi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "dxr"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "eps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "etx"

    const-string v2, "text/x-setext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "exe"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ez"

    const-string v2, "application/andrew-inset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "flv"

    const-string v2, "video/x-flv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "gram"

    const-string v2, "application/srgs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "grxml"

    const-string v2, "application/srgs+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "gtar"

    const-string v2, "application/x-gtar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "gz"

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "hdf"

    const-string v2, "application/x-hdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "hqx"

    const-string v2, "application/mac-binhex40"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ice"

    const-string v2, "x-conference/x-cooltalk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ics"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ifb"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "iges"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "igs"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "jnlp"

    const-string v2, "application/x-java-jnlp-file"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "jp2"

    const-string v2, "image/jp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "js"

    const-string v2, "application/x-javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "latex"

    const-string v2, "application/x-latex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "lha"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "lzh"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "m4a"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "m4p"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "m4u"

    const-string v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "m4v"

    const-string v2, "video/x-m4v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "man"

    const-string v2, "application/x-troff-man"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mathml"

    const-string v2, "application/mathml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "me"

    const-string v2, "application/x-troff-me"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mesh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mif"

    const-string v2, "application/vnd.mif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "movie"

    const-string v2, "video/x-sgi-movie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mpe"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mpeg"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mpg"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ms"

    const-string v2, "application/x-troff-ms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "msh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "mxu"

    const-string v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "nc"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ogg"

    const-string v2, "application/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ogv"

    const-string v2, "video/ogv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pct"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pdb"

    const-string v2, "chemical/x-pdb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pgn"

    const-string v2, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pic"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pict"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pnt"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "pntg"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "qt"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "qti"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "qtif"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ra"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ram"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "rdf"

    const-string v2, "application/rdf+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "rm"

    const-string v2, "application/vnd.rn-realmedia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "roff"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "rtf"

    const-string v2, "text/rtf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "rtx"

    const-string v2, "text/richtext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "sgm"

    const-string v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "sgml"

    const-string v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "sh"

    const-string v2, "application/x-sh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "shar"

    const-string v2, "application/x-shar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "silo"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "sit"

    const-string v2, "application/x-stuffit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "skd"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "skm"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "skp"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "skt"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "smi"

    const-string v2, "application/smil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "smil"

    const-string v2, "application/smil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "snd"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "so"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "svg"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "t"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tcl"

    const-string v2, "application/x-tcl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tex"

    const-string v2, "application/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "texi"

    const-string v2, "application/x-texinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "texinfo"

    const-string v2, "application/x-texinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tif"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tr"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "ustar"

    const-string v2, "application/x-ustar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "vcd"

    const-string v2, "application/x-cdlink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "vrml"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "vxml"

    const-string v2, "application/voicexml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "webm"

    const-string v2, "video/webm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "wrl"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xml"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xsl"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xslt"

    const-string v2, "application/xslt+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "xyz"

    const-string v2, "chemical/x-xyz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    const-string v1, "zip"

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized kb()Lcom/amazonaws/services/s3/util/Mimetypes;
    .locals 7

    const-class v1, Lcom/amazonaws/services/s3/util/Mimetypes;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->atZ:Lcom/amazonaws/services/s3/util/Mimetypes;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->atZ:Lcom/amazonaws/services/s3/util/Mimetypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amazonaws/services/s3/util/Mimetypes;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/util/Mimetypes;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->atZ:Lcom/amazonaws/services/s3/util/Mimetypes;

    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->atZ:Lcom/amazonaws/services/s3/util/Mimetypes;

    iget-object v2, v0, Lcom/amazonaws/services/s3/util/Mimetypes;->aua:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/amazonaws/services/s3/util/Mimetypes;->alS:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting mime type for extension \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->atZ:Lcom/amazonaws/services/s3/util/Mimetypes;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
