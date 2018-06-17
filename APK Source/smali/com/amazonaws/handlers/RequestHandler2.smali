.class public abstract Lcom/amazonaws/handlers/RequestHandler2;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;
    .locals 1

    new-instance v0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    invoke-direct {v0, p0}, Lcom/amazonaws/handlers/RequestHandler2Adaptor;-><init>(Lcom/amazonaws/handlers/RequestHandler;)V

    return-object v0
.end method
