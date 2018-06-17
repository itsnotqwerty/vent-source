.class public interface abstract annotation Lio/intercom/android/sdk/metrics/MetricTracker$Action;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/metrics/MetricTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Action"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CLICKED:Ljava/lang/String; = "clicked"

.field public static final CLOSED:Ljava/lang/String; = "closed"

.field public static final DISMISSED:Ljava/lang/String; = "dismissed"

.field public static final OPENED:Ljava/lang/String; = "opened"

.field public static final RECEIVED:Ljava/lang/String; = "received"

.field public static final SEARCHED:Ljava/lang/String; = "searched"

.field public static final SENT:Ljava/lang/String; = "sent"

.field public static final TYPED:Ljava/lang/String; = "typed"

.field public static final VIEWED:Ljava/lang/String; = "viewed"
