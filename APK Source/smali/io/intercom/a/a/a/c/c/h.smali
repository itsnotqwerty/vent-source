.class public interface abstract Lio/intercom/a/a/a/c/c/h;
.super Ljava/lang/Object;


# static fields
.field public static final cML:Lio/intercom/a/a/a/c/c/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final cMM:Lio/intercom/a/a/a/c/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/intercom/a/a/a/c/c/h$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/h$1;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/c/h;->cML:Lio/intercom/a/a/a/c/c/h;

    new-instance v0, Lio/intercom/a/a/a/c/c/j$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/j$a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/a/a/a/c/c/j$a;->cMP:Z

    new-instance v1, Lio/intercom/a/a/a/c/c/j;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/j$a;->headers:Ljava/util/Map;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/c/j;-><init>(Ljava/util/Map;)V

    sput-object v1, Lio/intercom/a/a/a/c/c/h;->cMM:Lio/intercom/a/a/a/c/c/h;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
