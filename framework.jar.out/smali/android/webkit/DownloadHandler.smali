.class Landroid/webkit/DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadHandler.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern; = null

.field public static final DEFAULT_APK_SUBDIR:Ljava/lang/String; = "/download/APK"

.field public static final DEFAULT_AUDIO_SUBDIR:Ljava/lang/String; = "/Music/download"

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final DEFAULT_DL_SUBDIR:Ljava/lang/String; = "/download"

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_IMAGE_SUBDIR:Ljava/lang/String; = "/Photo/download"

.field public static final DEFAULT_RAR_SUBDIR:Ljava/lang/String; = "/download"

.field public static final DEFAULT_VIDEO_SUBDIR:Ljava/lang/String; = "/Video/download"

.field private static final FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final LOGTAG:Ljava/lang/String; = "DownloadHandler"

.field private static mChineseDetector:Lcom/meizu/util/ChineseDetector;

.field public static sRandom:Ljava/util/Random;


# instance fields
.field private mContentDisposition:Ljava/lang/String;

.field private mContentLength:J

.field private final mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mReceiveLength:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "attachment;\\s*filename\\s*[^=]=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, ".*;\\s*filename\\s*=\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/DownloadHandler;->FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Landroid/webkit/DownloadHandler;->sRandom:Ljava/util/Random;

    .line 306
    new-instance v0, Lcom/meizu/util/ChineseDetector;

    invoke-direct {v0}, Lcom/meizu/util/ChineseDetector;-><init>()V

    sput-object v0, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "contentLength"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    iput-wide v2, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    .line 68
    iput-wide v2, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    .line 70
    iput-object v1, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Landroid/webkit/DownloadHandler;->mUrl:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Landroid/webkit/DownloadHandler;->mContentDisposition:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    .line 81
    iput-wide p5, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    .line 84
    invoke-direct {p0, p2, v1, p3, p4}, Landroid/webkit/DownloadHandler;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 86
    .local v0, index:I
    if-lez v0, :cond_0

    .line 87
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    .line 90
    :cond_0
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserFrame downloadByPost mUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/DownloadHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserFrame downloadByPost mContentDisposition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/DownloadHandler;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserFrame downloadByPost mMimeType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserFrame downloadByPost mContentLength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserFrame downloadByPost mFilePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "DownloadHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserFrame downloadByPost mFilename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method private chooseDefaultDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 397
    if-eqz p1, :cond_6

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "/Photo/download"

    .line 415
    :goto_0
    return-object v0

    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "/Music/download"

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const-string v0, "/Video/download"

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-rar-compressed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    :cond_3
    const-string v0, "/download"

    goto :goto_0

    .line 409
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 410
    const-string v0, "/download/APK"

    goto :goto_0

    .line 412
    :cond_5
    const-string v0, "/download"

    goto :goto_0

    .line 415
    :cond_6
    const-string v0, "/download"

    goto :goto_0
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "mimeType"
    .parameter "filename"
    .parameter "dotIndex"

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 357
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 358
    .local v1, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, typeFromExt:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/webkit/DownloadHandler;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 364
    .end local v1           #lastDotIndex:I
    .end local v2           #typeFromExt:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 365
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_2
    return-object v0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "mimeType"
    .parameter "useDefaults"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 335
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_0
    if-nez v0, :cond_1

    .line 341
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const-string v0, ".html"

    .line 351
    :cond_1
    :goto_0
    return-object v0

    .line 344
    :cond_2
    if-eqz p1, :cond_1

    .line 345
    const-string v0, ".txt"

    goto :goto_0

    .line 347
    :cond_3
    if-eqz p1, :cond_1

    .line 348
    const-string v0, ".bin"

    goto :goto_0
.end method

.method private chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "url"
    .parameter "contentLocation"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    .line 127
    const/4 v5, 0x0

    .line 129
    .local v5, filename:Ljava/lang/String;
    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 130
    invoke-direct {p0, p3}, Landroid/webkit/DownloadHandler;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    if-eqz v5, :cond_1

    .line 132
    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 133
    .local v6, index:I
    if-lez v6, :cond_0

    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    :cond_0
    const-string v9, "\'\'"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 138
    if-lez v6, :cond_1

    .line 139
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, encodeName:Ljava/lang/String;
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    :try_start_0
    invoke-static {v5, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 150
    .end local v3           #encodeName:Ljava/lang/String;
    .end local v6           #index:I
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    if-eqz p2, :cond_2

    .line 151
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v9, 0x3f

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_2

    .line 155
    const/16 v9, 0x2f

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 156
    .restart local v6       #index:I
    if-lez v6, :cond_a

    .line 157
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v6           #index:I
    :cond_2
    :goto_1
    if-nez v5, :cond_4

    .line 166
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 169
    const/16 v9, 0x3f

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 170
    .local v7, location:I
    if-lez v7, :cond_3

    .line 171
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_3
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 174
    .restart local v6       #index:I
    if-lez v6, :cond_4

    .line 175
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #location:I
    :cond_4
    if-nez v5, :cond_5

    .line 182
    const-string v5, "downloadfile"

    .line 185
    :cond_5
    if-eqz v5, :cond_6

    .line 186
    invoke-direct {p0, v5}, Landroid/webkit/DownloadHandler;->encodeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    :cond_6
    if-eqz v5, :cond_7

    .line 190
    invoke-direct {p0, v5}, Landroid/webkit/DownloadHandler;->decodeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    :cond_7
    if-eqz v5, :cond_9

    .line 194
    const/4 v4, 0x0

    .line 195
    .local v4, extension:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 196
    .local v2, dotIndex:I
    if-gez v2, :cond_b

    .line 197
    const/4 v9, 0x1

    invoke-static {p4, v9}, Landroid/webkit/DownloadHandler;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 203
    :goto_2
    invoke-direct {p0, v4}, Landroid/webkit/DownloadHandler;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, typeFromExt:Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-virtual {v8, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 205
    move-object p4, v8

    .line 208
    :cond_8
    invoke-direct {p0, v5, p4, v4}, Landroid/webkit/DownloadHandler;->chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .end local v2           #dotIndex:I
    .end local v4           #extension:Ljava/lang/String;
    .end local v8           #typeFromExt:Ljava/lang/String;
    :cond_9
    return-object v5

    .line 159
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_a
    move-object v5, v0

    goto :goto_1

    .line 199
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v6           #index:I
    .restart local v2       #dotIndex:I
    .restart local v4       #extension:Ljava/lang/String;
    :cond_b
    invoke-static {p4, v5, v2}, Landroid/webkit/DownloadHandler;->chooseExtensionFromFilename(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 200
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 143
    .end local v2           #dotIndex:I
    .end local v4           #extension:Ljava/lang/String;
    .restart local v3       #encodeName:Ljava/lang/String;
    .restart local v6       #index:I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method private chooseOneEncoding([B)Ljava/lang/String;
    .locals 4
    .parameter "byteBuffer"

    .prologue
    .line 308
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 309
    const-string v0, "UTF-8"

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lcom/meizu/util/ChineseDetector;->HandleData([BI)Z

    .line 312
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lcom/meizu/util/ChineseDetector;->DataEnd()V

    .line 313
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lcom/meizu/util/ChineseDetector;->Reset()V

    .line 315
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lcom/meizu/util/ChineseDetector;->getFlagAndReset()Z

    move-result v1

    .line 318
    .local v1, result:Z
    const-string v0, "UTF-8"

    .line 319
    .local v0, resStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 320
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lcom/meizu/util/ChineseDetector;->getCharsetResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filename"
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 371
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 372
    .local v0, base:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p2}, Landroid/webkit/DownloadHandler;->chooseDefaultDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v2, dirFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 375
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 377
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, fullFilename:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v4, v3

    .line 393
    .end local v3           #fullFilename:Ljava/lang/String;
    .local v4, fullFilename:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 382
    .end local v4           #fullFilename:Ljava/lang/String;
    .restart local v3       #fullFilename:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    const/4 v7, 0x1

    .line 384
    .local v7, sequence:I
    const/4 v6, 0x1

    .local v6, magnitude:I
    :goto_1
    const v8, 0x3b9aca00

    if-ge v6, v8, :cond_5

    .line 385
    const/4 v5, 0x0

    .local v5, iteration:I
    :goto_2
    const/16 v8, 0x9

    if-ge v5, v8, :cond_4

    .line 386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v4, v3

    .line 388
    .end local v3           #fullFilename:Ljava/lang/String;
    .restart local v4       #fullFilename:Ljava/lang/String;
    goto :goto_0

    .line 390
    .end local v4           #fullFilename:Ljava/lang/String;
    .restart local v3       #fullFilename:Ljava/lang/String;
    :cond_3
    sget-object v8, Landroid/webkit/DownloadHandler;->sRandom:Ljava/util/Random;

    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 384
    :cond_4
    mul-int/lit8 v6, v6, 0xa

    goto :goto_1

    .end local v5           #iteration:I
    :cond_5
    move-object v4, v3

    .line 393
    .end local v3           #fullFilename:Ljava/lang/String;
    .restart local v4       #fullFilename:Ljava/lang/String;
    goto :goto_0
.end method

.method private decodeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"

    .prologue
    .line 326
    if-eqz p1, :cond_0

    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 p1, 0x0

    .line 329
    .end local p1
    :cond_0
    return-object p1
.end method

.method private encodeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "title"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 248
    :cond_0
    const-string p1, ""

    .line 303
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 252
    .restart local p1
    :cond_2
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 253
    .local v4, lastIndex:I
    if-lez v4, :cond_1

    .line 254
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, extension:Ljava/lang/String;
    :try_start_0
    const-string v0, "UTF-8"

    .line 262
    .local v0, decode:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 263
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/DownloadHandler;->chooseOneEncoding([B)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_3
    const-string v1, "ISO-8859-1"

    .line 267
    .local v1, encode:Ljava/lang/String;
    if-eqz v3, :cond_4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 268
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 273
    :cond_4
    const-string v1, "UTF-8"

    .line 274
    if-eqz v3, :cond_5

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 275
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 280
    :cond_5
    const-string v1, "GBK"

    .line 281
    if-eqz v3, :cond_6

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 282
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 287
    :cond_6
    const-string v1, "GB2312"

    .line 288
    if-eqz v3, :cond_7

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 289
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 294
    :cond_7
    const-string v1, "Big5"

    .line 295
    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    .line 300
    .end local v0           #decode:Ljava/lang/String;
    .end local v1           #encode:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "extension"

    .prologue
    .line 215
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 216
    .local v0, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, mimeType:Ljava/lang/String;
    return-object v1
.end method

.method private parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "contentDisposition"

    .prologue
    .line 224
    :try_start_0
    sget-object v2, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 225
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .end local v1           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v2

    .line 228
    .restart local v1       #m:Ljava/util/regex/Matcher;
    :cond_0
    sget-object v2, Landroid/webkit/DownloadHandler;->FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 231
    .local v0, end:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\"+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 236
    .end local v0           #end:I
    :cond_1
    sget-object v2, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 240
    .end local v1           #m:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 243
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public didFinishLoading()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    .line 114
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    iget-wide v4, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 119
    .local v0, manager:Landroid/app/DownloadManager;
    iget-wide v1, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    .line 120
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    iget-wide v6, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto :goto_0

    .line 121
    :cond_2
    iget-wide v1, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    .line 122
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    iget-wide v6, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto :goto_0
.end method

.method public didReceiveData([BI)V
    .locals 6
    .parameter "data"
    .parameter "length"

    .prologue
    .line 99
    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 102
    .local v0, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v0           #stream:Ljava/io/FileOutputStream;
    .local v1, stream:Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    .line 104
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p1, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 105
    iget-wide v2, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    .line 106
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #stream:Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
