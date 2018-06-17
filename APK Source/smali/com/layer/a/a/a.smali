.class public interface abstract Lcom/layer/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/layer/a/a/a;

.field public static final bpC:Lcom/layer/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/layer/a/a/a$1;

    invoke-direct {v0}, Lcom/layer/a/a/a$1;-><init>()V

    sput-object v0, Lcom/layer/a/a/a;->a:Lcom/layer/a/a/a;

    new-instance v0, Lcom/layer/a/a/a$2;

    invoke-direct {v0}, Lcom/layer/a/a/a$2;-><init>()V

    sput-object v0, Lcom/layer/a/a/a;->bpC:Lcom/layer/a/a/a;

    return-void
.end method


# virtual methods
.method public abstract a()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
