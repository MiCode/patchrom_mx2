.class Lcom/android/gallery3d/data/ClusterAlbum$2;
.super Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
.source "ClusterAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbum;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbum;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterAlbum;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-direct {p0}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 129
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->delete()V

    .line 132
    :cond_0
    return-void
.end method
