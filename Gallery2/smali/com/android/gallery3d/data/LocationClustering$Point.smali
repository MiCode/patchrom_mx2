.class Lcom/android/gallery3d/data/LocationClustering$Point;
.super Ljava/lang/Object;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field public latRad:D

.field public lngRad:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 50
    return-void
.end method
