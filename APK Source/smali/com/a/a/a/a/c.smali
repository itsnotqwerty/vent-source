.class public final Lcom/a/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final avn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/c;->attributes:Ljava/util/Map;

    iput-object p1, p0, Lcom/a/a/a/a/c;->avn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a/c;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
