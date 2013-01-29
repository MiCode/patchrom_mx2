.class Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deletion"
.end annotation


# instance fields
.field index:I

.field path:Lcom/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "index"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/android/gallery3d/data/Path;

    .line 53
    iput p2, p0, Lcom/android/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 54
    return-void
.end method
