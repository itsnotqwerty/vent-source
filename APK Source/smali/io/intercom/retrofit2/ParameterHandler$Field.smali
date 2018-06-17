.class final Lio/intercom/retrofit2/ParameterHandler$Field;
.super Lio/intercom/retrofit2/ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/retrofit2/ParameterHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final encoded:Z

.field private final name:Ljava/lang/String;

.field private final valueConverter:Lio/intercom/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/retrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/retrofit2/ParameterHandler;-><init>()V

    const-string v0, "name == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/retrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/retrofit2/ParameterHandler$Field;->valueConverter:Lio/intercom/retrofit2/Converter;

    iput-boolean p3, p0, Lio/intercom/retrofit2/ParameterHandler$Field;->encoded:Z

    return-void
.end method


# virtual methods
.method final apply(Lio/intercom/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/retrofit2/ParameterHandler$Field;->valueConverter:Lio/intercom/retrofit2/Converter;

    invoke-interface {v0, p2}, Lio/intercom/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/intercom/retrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lio/intercom/retrofit2/ParameterHandler$Field;->encoded:Z

    invoke-virtual {p1, v1, v0, v2}, Lio/intercom/retrofit2/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
