.class public Lcom/android/gallery3d/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field public static final CAMERA_BUCKET_ID:I

.field public static final CAMERA_DIR:Ljava/lang/String;

.field private static final CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

.field public static final EDITED_BUCKET_ID:I

.field public static final EDITED_DIR:Ljava/lang/String;

.field public static final IMPORTED_BUCKET_ID:I

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_BUCKET_ID:I

.field public static final PHOTO_DIR:Ljava/lang/String;

.field public static final PHOTO_DOWNLOAD_BUCKET_ID:I

.field public static final PHOTO_DOWNLOAD_DIR:Ljava/lang/String;

.field public static final RECORD_BUCKET_ID:I

.field public static final RECORD_DIR:Ljava/lang/String;

.field public static final SCREENSHOT_DIR:Ljava/lang/String;

.field public static final SNAPSHOT_BUCKET_ID:I

.field public static final VIDEO_BUCKET_ID:I

.field public static final VIDEO_DIR:Ljava/lang/String;

.field public static final VIDEO_DOWNLOAD_BUCKET_ID:I

.field public static final VIDEO_DOWNLOAD_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;

    invoke-direct {v0}, Lcom/android/gallery3d/util/MediaSetUtils$NameComparator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 29
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Imported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_DIR:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 39
    sget-object v0, Lcom/android/gallery3d/util/BucketNames;->PHOTO:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_BUCKET_ID:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DOWNLOAD_DIR:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DOWNLOAD_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DOWNLOAD_BUCKET_ID:I

    .line 46
    sget-object v0, Lcom/android/gallery3d/util/BucketNames;->VIDEO:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DIR:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_BUCKET_ID:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DOWNLOAD_DIR:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DOWNLOAD_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DOWNLOAD_BUCKET_ID:I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/BucketNames;->VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_DIR:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Edited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_DIR:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_BUCKET_ID:I

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static isCameraSource(Lcom/android/gallery3d/data/Path;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_PATHS:[Lcom/android/gallery3d/data/Path;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne v2, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
