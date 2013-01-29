.class Lcom/android/gallery3d/data/UriSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "UriSource.java"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 40
    return-void
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 54
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 65
    .end local v0           #extension:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 63
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1       #type:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, "image/*"

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, segment:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 46
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, uri:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, type:Ljava/lang/String;
    new-instance v3, Lcom/android/gallery3d/data/UriImage;

    iget-object v4, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5, v1}, Lcom/android/gallery3d/data/UriImage;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v3
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "type"

    .prologue
    const-wide/16 v5, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriSource;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, mimeType:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v3, "image/*"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :cond_0
    move-object p2, v2

    .line 78
    :cond_1
    const-string v3, "image/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const-string v3, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->getIdByFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 82
    .local v0, id:J
    cmp-long v3, v0, v5

    if-eqz v3, :cond_2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/image/item/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 97
    .end local v0           #id:J
    :goto_0
    return-object v3

    .line 86
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/uri/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 88
    :cond_3
    const-string v3, "video/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    const-string v3, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/android/gallery3d/data/UriSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->getIdByFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    .restart local v0       #id:J
    cmp-long v3, v0, v5

    if-eqz v3, :cond_4

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/video/item/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_0

    .line 97
    .end local v0           #id:J
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method
