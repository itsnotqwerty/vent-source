.class public abstract Lcom/amazonaws/handlers/CredentialsRequestHandler;
.super Lcom/amazonaws/handlers/RequestHandler2;


# instance fields
.field protected anO:Lcom/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/handlers/RequestHandler2;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/handlers/CredentialsRequestHandler;->anO:Lcom/amazonaws/auth/AWSCredentials;

    return-void
.end method
