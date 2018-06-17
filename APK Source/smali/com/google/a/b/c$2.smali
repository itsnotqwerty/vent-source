.class final Lcom/google/a/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/b/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bhd:Lcom/google/a/b/c;


# direct methods
.method constructor <init>(Lcom/google/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/c$2;->bhd:Lcom/google/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final vo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
