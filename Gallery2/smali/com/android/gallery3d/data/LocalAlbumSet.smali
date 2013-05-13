.class public Lcom/android/gallery3d/data/LocalAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;,
        Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;,
        Lcom/android/gallery3d/data/LocalAlbumSet$BucketComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FRONT_BUCKET:[I

.field public static final PATH_ALL:Lcom/android/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcom/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/android/gallery3d/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final PROJECTION_BUCKET_INFO:[Ljava/lang/String;

.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_DIRECTORY:[Ljava/lang/String;

.field private static final PROJECTION_DIR_INFO:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final WHERE_OF_CAMERA:Ljava/lang/String;

.field private static final WHERE_OF_PHOTO:Ljava/lang/String;

.field private static final WHERE_OF_VIDEO:Ljava/lang/String;

.field private static final mBaseUri:Landroid/net/Uri;

.field private static mCollator:Ljava/text/Collator;

.field private static mIsChineseLang:Z

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;

.field public static final sBucketComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mNameLocale:Ljava/util/Locale;

.field private final mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/android/gallery3d/data/Path;

    .line 52
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    .line 53
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    .line 72
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 73
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 74
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v2

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v5

    const-string v1, "parent"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "parent"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_DIR_INFO:[Ljava/lang/String;

    .line 104
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET_INFO:[Ljava/lang/String;

    .line 108
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_DIRECTORY:[Ljava/lang/String;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_ID:[Ljava/lang/String;

    .line 115
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->WHERE_OF_PHOTO:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->WHERE_OF_CAMERA:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->WHERE_OF_VIDEO:Ljava/lang/String;

    .line 356
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketComparator;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet$1;)V

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->sBucketComparator:Ljava/util/Comparator;

    .line 359
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mCollator:Ljava/text/Collator;

    .line 360
    sput-boolean v2, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsChineseLang:Z

    .line 587
    const/16 v0, 0x9

    new-array v0, v0, [I

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    aput v1, v0, v3

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    aput v1, v0, v2

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    aput v1, v0, v4

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_BUCKET_ID:I

    aput v1, v0, v5

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DOWNLOAD_BUCKET_ID:I

    aput v1, v0, v6

    const/4 v1, 0x5

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DOWNLOAD_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_BUCKET_ID:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->FRONT_BUCKET:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 150
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 151
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 153
    invoke-static {p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromPath(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    .line 154
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 155
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 156
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 158
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNameLocale:Ljava/util/Locale;

    .line 159
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->betterCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadBucketEntries(Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->FRONT_BUCKET:[I

    return-object v0
.end method

.method static synthetic access$400([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500([Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/data/LocalAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/LocalAlbumSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p9}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method private static betterCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 370
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 371
    :cond_0
    const/4 v14, 0x0

    .line 515
    :goto_0
    return v14

    .line 374
    :cond_1
    sget-object v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mCollator:Ljava/text/Collator;

    if-nez v14, :cond_2

    .line 375
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v14

    sput-object v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mCollator:Ljava/text/Collator;

    .line 376
    sget-object v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mCollator:Ljava/text/Collator;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/text/Collator;->setStrength(I)V

    .line 377
    const-string v14, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    sput-boolean v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsChineseLang:Z

    .line 380
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 381
    .local v6, len1:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 383
    .local v7, len2:I
    sget-boolean v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsChineseLang:Z

    if-eqz v14, :cond_8

    .line 384
    if-lez v6, :cond_8

    if-lez v7, :cond_8

    .line 385
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    if-ge v3, v6, :cond_8

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 387
    .local v1, ch1:C
    if-lt v3, v7, :cond_3

    .line 388
    const/4 v14, -0x1

    goto :goto_0

    .line 390
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 391
    .local v2, ch2:C
    if-eq v1, v2, :cond_7

    .line 392
    const/16 v14, 0x80

    if-lt v1, v14, :cond_4

    const/16 v14, 0x80

    if-lt v2, v14, :cond_5

    :cond_4
    const/16 v14, 0x80

    if-lt v2, v14, :cond_8

    const/16 v14, 0x80

    if-ge v1, v14, :cond_8

    .line 394
    :cond_5
    const/16 v14, 0x80

    if-ge v1, v14, :cond_6

    const/4 v14, -0x1

    goto :goto_0

    :cond_6
    const/4 v14, 0x1

    goto :goto_0

    .line 385
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    .end local v1           #ch1:C
    .end local v2           #ch2:C
    .end local v3           #index:I
    :cond_8
    const/4 v4, 0x0

    .local v4, index1:I
    const/4 v5, 0x0

    .line 403
    .local v5, index2:I
    :goto_2
    if-ge v4, v6, :cond_1d

    if-ge v5, v7, :cond_1d

    .line 404
    move v8, v4

    .line 405
    .local v8, num1:I
    move v10, v5

    .line 406
    .local v10, num2:I
    :goto_3
    if-ge v4, v6, :cond_9

    .line 407
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 408
    .restart local v1       #ch1:C
    const/16 v14, 0x30

    if-lt v1, v14, :cond_9

    const/16 v14, 0x39

    if-le v1, v14, :cond_b

    .line 414
    .end local v1           #ch1:C
    :cond_9
    :goto_4
    if-ge v5, v7, :cond_a

    .line 415
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 416
    .restart local v2       #ch2:C
    const/16 v14, 0x30

    if-lt v2, v14, :cond_a

    const/16 v14, 0x39

    if-le v2, v14, :cond_c

    .line 422
    .end local v2           #ch2:C
    :cond_a
    sub-int v12, v4, v8

    .line 423
    .local v12, numlen1:I
    sub-int v13, v5, v10

    .line 425
    .local v13, numlen2:I
    if-eq v12, v13, :cond_13

    .line 426
    if-lez v12, :cond_12

    if-lez v13, :cond_12

    .line 427
    move v9, v8

    .local v9, num11:I
    move v11, v10

    .line 428
    .local v11, num22:I
    :goto_5
    if-ge v9, v4, :cond_d

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_d

    .line 430
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 411
    .end local v9           #num11:I
    .end local v11           #num22:I
    .end local v12           #numlen1:I
    .end local v13           #numlen2:I
    .restart local v1       #ch1:C
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 412
    goto :goto_3

    .line 419
    .end local v1           #ch1:C
    .restart local v2       #ch2:C
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 420
    goto :goto_4

    .line 436
    .end local v2           #ch2:C
    .restart local v9       #num11:I
    .restart local v11       #num22:I
    .restart local v12       #numlen1:I
    .restart local v13       #numlen2:I
    :cond_d
    :goto_6
    if-ge v11, v5, :cond_e

    .line 437
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_e

    .line 438
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 444
    :cond_e
    sub-int v14, v4, v9

    sub-int v15, v5, v11

    if-eq v14, v15, :cond_f

    .line 445
    sub-int v14, v4, v9

    sub-int v15, v5, v11

    sub-int/2addr v14, v15

    goto/16 :goto_0

    .line 448
    :cond_f
    :goto_7
    if-ge v9, v4, :cond_11

    if-ge v11, v5, :cond_11

    .line 449
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 450
    .restart local v1       #ch1:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 451
    .restart local v2       #ch2:C
    if-ne v1, v2, :cond_10

    .line 452
    add-int/lit8 v9, v9, 0x1

    .line 453
    add-int/lit8 v11, v11, 0x1

    .line 454
    goto :goto_7

    .line 456
    :cond_10
    sub-int v14, v1, v2

    goto/16 :goto_0

    .line 460
    .end local v1           #ch1:C
    .end local v2           #ch2:C
    :cond_11
    sub-int v14, v13, v12

    goto/16 :goto_0

    .line 463
    .end local v9           #num11:I
    .end local v11           #num22:I
    :cond_12
    sget-object v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mCollator:Ljava/text/Collator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_0

    .line 468
    :cond_13
    if-lez v12, :cond_15

    .line 469
    :goto_8
    if-ge v8, v4, :cond_15

    .line 470
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 471
    .restart local v1       #ch1:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 472
    .restart local v2       #ch2:C
    if-ne v1, v2, :cond_14

    .line 473
    add-int/lit8 v8, v8, 0x1

    .line 474
    goto :goto_8

    .line 476
    :cond_14
    sub-int v14, v1, v2

    goto/16 :goto_0

    .line 480
    .end local v1           #ch1:C
    .end local v2           #ch2:C
    :cond_15
    if-ge v4, v6, :cond_16

    if-lt v5, v7, :cond_17

    .line 481
    :cond_16
    sub-int v14, v6, v7

    goto/16 :goto_0

    .line 484
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 485
    .restart local v1       #ch1:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 486
    .restart local v2       #ch2:C
    const/16 v14, 0x61

    if-gt v1, v14, :cond_19

    const/16 v14, 0x7a

    if-lt v1, v14, :cond_19

    .line 487
    const/16 v14, 0x41

    if-gt v2, v14, :cond_18

    const/16 v14, 0x5a

    if-lt v2, v14, :cond_18

    .line 488
    add-int/lit8 v14, v2, 0x20

    int-to-char v2, v14

    .line 491
    :cond_18
    if-eq v1, v2, :cond_1c

    .line 492
    sub-int v14, v1, v2

    goto/16 :goto_0

    .line 495
    :cond_19
    const/16 v14, 0x41

    if-gt v1, v14, :cond_1b

    const/16 v14, 0x5a

    if-lt v1, v14, :cond_1b

    .line 496
    const/16 v14, 0x61

    if-gt v2, v14, :cond_1a

    const/16 v14, 0x7a

    if-lt v2, v14, :cond_1a

    .line 497
    add-int/lit8 v14, v2, -0x20

    int-to-char v2, v14

    .line 500
    :cond_1a
    if-eq v1, v2, :cond_1c

    .line 501
    sub-int v14, v1, v2

    goto/16 :goto_0

    .line 504
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 505
    sget-object v14, Lcom/android/gallery3d/data/LocalAlbumSet;->mCollator:Ljava/text/Collator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_0

    .line 511
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 512
    add-int/lit8 v5, v5, 0x1

    .line 513
    goto/16 :goto_2

    .line 515
    .end local v1           #ch1:C
    .end local v2           #ch2:C
    .end local v8           #num1:I
    .end local v10           #num2:I
    .end local v12           #numlen1:I
    .end local v13           #numlen2:I
    :cond_1d
    sub-int v14, v6, v7

    goto/16 :goto_0
.end method

.method private checkBucketInfo(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V
    .locals 9
    .parameter "entry"

    .prologue
    const/4 v4, 0x0

    .line 519
    iget v0, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 520
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 523
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET_INFO:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 528
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    .line 530
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_1
    if-eqz v6, :cond_2

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 538
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 533
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_3
    throw v0
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .parameter
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    aget-object v1, p0, p2

    .line 834
    .local v1, temp:Ljava/lang/Object;,"TT;"
    move v0, p2

    .local v0, k:I
    :goto_0
    if-le v0, p1, :cond_0

    .line 835
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 834
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 837
    :cond_0
    aput-object v1, p0, p1

    .line 838
    return-void
.end method

.method private fillCustomFolderToList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v11, 0x1

    .line 561
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;

    move-result-object v1

    .line 562
    .local v1, customFolder:Lcom/android/gallery3d/data/CustomFolder;
    iget v9, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v9, v9, -0x9

    invoke-virtual {v1, v9}, Lcom/android/gallery3d/data/CustomFolder;->getAllFolders(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 563
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/CustomFolder$FolderEntry;>;"
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 564
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;

    .line 565
    .local v2, entry:Lcom/android/gallery3d/data/CustomFolder$FolderEntry;
    iget-object v9, v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->directory:Ljava/lang/String;

    iget v10, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    invoke-static {v7, v9, v10}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTotalItemCountByDirectory(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 566
    .local v8, totalItemCount:I
    if-lez v8, :cond_0

    .line 567
    iget-object v9, v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->directory:Ljava/lang/String;

    invoke-static {v7, v9, v11}, Lcom/android/gallery3d/data/LocalAlbumSet;->getIdByFilePath(Landroid/content/ContentResolver;Ljava/lang/String;Z)J

    move-result-wide v5

    .line 568
    .local v5, id:J
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    iget-object v9, v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->directory:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v9}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(JLjava/lang/String;)V

    .line 569
    .local v0, bucket:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    iput v8, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mItemCount:I

    .line 570
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mNoChildEntry:Z

    .line 571
    iput-boolean v11, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mIsCustomFolder:Z

    .line 572
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->checkBucketInfo(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V

    .line 573
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v0           #bucket:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .end local v5           #id:J
    :cond_0
    iget-object v9, v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->directory:Ljava/lang/String;

    iget v10, v2, Lcom/android/gallery3d/data/CustomFolder$FolderEntry;->mediaType:I

    invoke-virtual {v1, v9, v10}, Lcom/android/gallery3d/data/CustomFolder;->removeFolder(Ljava/lang/String;I)V

    goto :goto_0

    .line 578
    .end local v2           #entry:Lcom/android/gallery3d/data/CustomFolder$FolderEntry;
    .end local v8           #totalItemCount:I
    :cond_1
    return-void
.end method

.method private fillEntryToList(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "root"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;>;"
    iget-object v5, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 542
    .local v0, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    iget v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mItemCount:I

    if-lez v5, :cond_0

    .line 543
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mNoChildEntry:Z

    .line 544
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->checkBucketInfo(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V

    .line 545
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    .end local v0           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_1
    iget-object v5, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 549
    .restart local v0       #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    iget-object v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mChild:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 550
    .local v3, sub:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->getTotalItemCount()I

    move-result v4

    .line 551
    .local v4, totalItemCount:I
    if-lez v4, :cond_3

    .line 552
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mNoChildEntry:Z

    .line 553
    invoke-direct {p0, v3}, Lcom/android/gallery3d/data/LocalAlbumSet;->checkBucketInfo(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V

    .line 554
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    .end local v0           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sub:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .end local v4           #totalItemCount:I
    :cond_4
    return-void
.end method

.method private static findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I
    .locals 3
    .parameter "entries"
    .parameter "bucketId"

    .prologue
    .line 581
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 582
    aget-object v2, p0, v0

    iget v2, v2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    if-ne v2, p1, :cond_0

    .line 584
    .end local v0           #i:I
    :goto_1
    return v0

    .line 581
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 674
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 678
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 682
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 683
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v0, ""

    .line 687
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 691
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 687
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 691
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getDirectoryByBucketId(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    const/4 v4, 0x1

    .line 696
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 700
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_DIR_INFO:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 704
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 705
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v0, ""

    .line 716
    :goto_0
    return-object v0

    .line 709
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 711
    .local v7, id:J
    invoke-static {p0, v7, v8}, Lcom/android/gallery3d/data/LocalAlbumSet;->getDirectoryById(Landroid/content/ContentResolver;J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 716
    const-string v0, ""

    goto :goto_0
.end method

.method private static getDirectoryById(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 211
    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_DIRECTORY:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    if-eqz v6, :cond_0

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_1
    throw v0

    :cond_2
    if-eqz v6, :cond_3

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static getIdByFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .parameter "resolver"
    .parameter "filePath"

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/data/LocalAlbumSet;->getIdByFilePath(Landroid/content/ContentResolver;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIdByFilePath(Landroid/content/ContentResolver;Ljava/lang/String;Z)J
    .locals 10
    .parameter "resolver"
    .parameter "filePath"
    .parameter "isDirectory"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 228
    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_ID:[Ljava/lang/String;

    const-string v3, "_data = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 235
    .local v7, mediaType:I
    if-nez v7, :cond_1

    move v0, v8

    :goto_0
    xor-int/2addr v0, p2

    if-nez v0, :cond_3

    .line 236
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 239
    if-eqz v6, :cond_0

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    .end local v7           #mediaType:I
    :cond_0
    :goto_1
    return-wide v0

    .restart local v7       #mediaType:I
    :cond_1
    move v0, v9

    .line 235
    goto :goto_0

    .line 239
    .end local v7           #mediaType:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_4

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;
    .locals 19
    .parameter "manager"
    .parameter "type"
    .parameter "parent"
    .parameter "id"
    .parameter "name"
    .parameter "dir"
    .parameter "noSubSet"
    .parameter "isCustomFolder"
    .parameter "itemCount"

    .prologue
    .line 640
    sget-object v15, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v15

    .line 641
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 642
    .local v2, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v14

    .line 643
    .local v14, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v14, :cond_0

    check-cast v14, Lcom/android/gallery3d/data/MediaSet;

    .end local v14           #object:Lcom/android/gallery3d/data/MediaObject;
    monitor-exit v15

    move-object v1, v14

    .line 661
    :goto_0
    return-object v1

    .line 644
    .restart local v14       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 669
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    .end local v14           #object:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 646
    .restart local v2       #path:Lcom/android/gallery3d/data/Path;
    .restart local v14       #object:Lcom/android/gallery3d/data/MediaObject;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;ZZI)V

    monitor-exit v15

    goto :goto_0

    .line 649
    :pswitch_2
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;ZZI)V

    monitor-exit v15

    goto :goto_0

    .line 652
    :pswitch_3
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    move/from16 v0, p4

    if-ne v0, v1, :cond_1

    .line 653
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x0

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;ZZI)V

    monitor-exit v15

    goto :goto_0

    .line 656
    :cond_1
    new-instance v1, Lcom/android/gallery3d/data/LocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;ZZI)V

    monitor-exit v15

    goto :goto_0

    .line 660
    :pswitch_4
    sget-object v13, Lcom/android/gallery3d/data/DataManager;->sNameComparator:Ljava/util/Comparator;

    .line 661
    .local v13, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v1, Lcom/android/gallery3d/data/LocalMergeAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v16, v0

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/4 v5, 0x2

    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    const/4 v12, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v12}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v17, v18

    const/16 v18, 0x1

    const/4 v5, 0x4

    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    const/4 v12, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v12}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;ZZI)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v17, v18

    move-object/from16 v3, v16

    move-object v4, v13

    move-object/from16 v5, v17

    move/from16 v6, p4

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;IZ)V

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTotalItemCountByDirectory(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 8
    .parameter "resolver"
    .parameter "directory"
    .parameter "mediaType"

    .prologue
    const/4 v7, 0x0

    .line 251
    const-string v3, ""

    .line 252
    .local v3, where:Ljava/lang/String;
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type = 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE ? AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 270
    if-eqz v6, :cond_3

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_3
    :goto_0
    return v0

    .line 270
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_4
    throw v0

    :cond_5
    if-eqz v6, :cond_6

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v7

    .line 274
    goto :goto_0
.end method

.method private static getTypeFromPath(Lcom/android/gallery3d/data/Path;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, name:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getWhereClause()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    const-string v0, ""

    .line 186
    .local v0, where:Ljava/lang/String;
    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->WHERE_OF_PHOTO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->WHERE_OF_CAMERA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->WHERE_OF_VIDEO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_2
    return-object v0
.end method

.method private loadBucketEntries(Lcom/android/gallery3d/util/ThreadPool$JobContext;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .locals 22
    .parameter "jc"

    .prologue
    .line 278
    sget-object v4, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 280
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 281
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_DIR_INFO:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "format = 12289 AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/LocalAlbumSet;->getWhereClause()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_data"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 285
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 286
    const-string v5, "LocalAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open local database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 353
    :goto_0
    return-object v5

    .line 290
    :cond_0
    new-instance v20, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    const-wide/16 v5, 0x0

    const-string v7, ""

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6, v7}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(JLjava/lang/String;)V

    .line 292
    .local v20, root:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 293
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 294
    .local v18, parentId:J
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->findEntryById(J)Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v17

    .line 295
    .local v17, parent:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    if-nez v17, :cond_2

    .line 296
    new-instance v17, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .end local v17           #parent:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getDirectoryById(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v5}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(JLjava/lang/String;)V

    .line 297
    .restart local v17       #parent:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->addChild(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V

    .line 299
    :cond_2
    if-eqz v17, :cond_3

    .line 300
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 301
    .local v13, id:J
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, dir:Ljava/lang/String;
    new-instance v5, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    invoke-direct {v5, v13, v14, v12}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->addChild(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;)V

    .line 304
    .end local v12           #dir:Ljava/lang/String;
    .end local v13           #id:J
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 307
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v17           #parent:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .end local v18           #parentId:J
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 310
    const-string v5, "DebugLoadingTime"

    const-string v6, "start quering media provider"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v5, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1) AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/LocalAlbumSet;->getWhereClause()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") GROUP BY 1,(2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "bucket_display_name COLLATE LOCALIZED "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 315
    if-nez v11, :cond_5

    .line 316
    const-string v5, "LocalAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open local database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    goto/16 :goto_0

    .line 319
    :cond_5
    const/16 v21, 0x0

    .line 320
    .local v21, typeBits:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 321
    or-int/lit8 v21, v21, 0x2

    .line 323
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    .line 324
    or-int/lit8 v21, v21, 0x8

    .line 326
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_a

    const/16 v16, 0x1

    .line 329
    .local v16, needRecord:Z
    :cond_8
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 330
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 331
    .local v15, mediaType:I
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 332
    .local v9, bucketId:I
    const/4 v5, 0x1

    shl-int/2addr v5, v15

    and-int v5, v5, v21

    if-eqz v5, :cond_b

    .line 333
    sget v5, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    if-eq v9, v5, :cond_9

    .line 334
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v20

    invoke-static {v0, v5, v11}, Lcom/android/gallery3d/data/LocalAlbumSet;->updateEntry(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;ILandroid/database/Cursor;)V

    .line 341
    :cond_9
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    .line 344
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 326
    .end local v9           #bucketId:I
    .end local v15           #mediaType:I
    .end local v16           #needRecord:Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_1

    .line 336
    .restart local v9       #bucketId:I
    .restart local v15       #mediaType:I
    .restart local v16       #needRecord:Z
    :cond_b
    const/4 v5, 0x3

    if-ne v15, v5, :cond_9

    if-eqz v16, :cond_9

    .line 337
    :try_start_2
    sget v5, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    if-ne v9, v5, :cond_9

    .line 338
    move-object/from16 v0, v20

    invoke-static {v0, v9, v11}, Lcom/android/gallery3d/data/LocalAlbumSet;->updateEntry(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;ILandroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 344
    .end local v9           #bucketId:I
    .end local v15           #mediaType:I
    :catchall_1
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 347
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v10, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/android/gallery3d/data/LocalAlbumSet;->fillEntryToList(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;Ljava/util/ArrayList;)V

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/gallery3d/data/LocalAlbumSet;->fillCustomFolderToList(Ljava/util/ArrayList;)V

    .line 350
    sget-object v5, Lcom/android/gallery3d/data/LocalAlbumSet;->sBucketComparator:Ljava/util/Comparator;

    invoke-static {v10, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 352
    const-string v5, "DebugLoadingTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buckets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    goto/16 :goto_0
.end method

.method private static updateEntry(Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;ILandroid/database/Cursor;)V
    .locals 4
    .parameter "root"
    .parameter "bucketId"
    .parameter "cursor"

    .prologue
    .line 201
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 202
    .local v1, parentId:J
    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->findEntryById(J)Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    .line 203
    .local v0, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    if-eqz v0, :cond_0

    .line 204
    iput p1, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketId:I

    .line 205
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mBucketName:Ljava/lang/String;

    .line 206
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->mItemCount:I

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 766
    :goto_0
    monitor-exit p0

    return-void

    .line 757
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 759
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/LocalAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/LocalAlbumSet$1;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 730
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 731
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 732
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mIsLoading:Z

    .line 733
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;Lcom/android/gallery3d/data/LocalAlbumSet$1;)V

    invoke-virtual {v3, v4, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 735
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNameLocale:Ljava/util/Locale;

    sget-object v4, Lcom/android/gallery3d/common/Utils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 736
    .local v2, localeChanged:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 737
    sget-object v3, Lcom/android/gallery3d/common/Utils;->sLocale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNameLocale:Ljava/util/Locale;

    .line 739
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 740
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 741
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 742
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 743
    .local v0, album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 730
    .end local v0           #album:Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #localeChanged:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 735
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 745
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #localeChanged:Z
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 751
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v3

    .line 746
    :cond_6
    if-eqz v2, :cond_5

    .line 747
    :try_start_2
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 748
    .restart local v0       #album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
