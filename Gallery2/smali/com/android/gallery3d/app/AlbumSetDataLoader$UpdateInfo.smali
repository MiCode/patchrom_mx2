.class Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public cover:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public index:I

.field public item:Lcom/android/gallery3d/data/MediaSet;

.field public size:I

.field public totalCount:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
