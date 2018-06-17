.class public interface abstract Lcom/b/a/a/b/i;
.super Ljava/lang/Object;


# static fields
.field public static final bKQ:Lcom/b/a/a/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/a/b/i$1;

    invoke-direct {v0}, Lcom/b/a/a/b/i$1;-><init>()V

    sput-object v0, Lcom/b/a/a/b/i;->bKQ:Lcom/b/a/a/b/i;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/b/a/a/b/p;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
