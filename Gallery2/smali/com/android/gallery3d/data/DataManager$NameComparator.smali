.class Lcom/android/gallery3d/data/DataManager$NameComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/DataManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/gallery3d/data/DataManager$NameComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/data/MediaItem;)I
    .locals 3
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 107
    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    check-cast p1, Lcom/android/gallery3d/data/MediaItem;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/MediaItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/DataManager$NameComparator;->compare(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method
