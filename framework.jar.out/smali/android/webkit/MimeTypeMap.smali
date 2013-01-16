.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 49
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 50
    .local v3, fragment:I
    if-lez v3, :cond_0

    .line 51
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 54
    :cond_0
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 55
    .local v4, query:I
    if-lez v4, :cond_1

    .line 56
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 59
    :cond_1
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 60
    .local v2, filenamePos:I
    if-ltz v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, filename:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 68
    .local v0, dotPos:I
    if-ltz v0, :cond_3

    .line 69
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .end local v0           #dotPos:I
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filenamePos:I
    .end local v3           #fragment:I
    .end local v4           #query:I
    :goto_1
    return-object v5

    .restart local v2       #filenamePos:I
    .restart local v3       #fragment:I
    .restart local v4       #query:I
    :cond_2
    move-object v1, p0

    .line 60
    goto :goto_0

    .line 74
    .end local v2           #filenamePos:I
    .end local v3           #fragment:I
    .end local v4           #query:I
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public static getMimeTypeList()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Llibcore/net/MimeUtils;->getMimeTypeList()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleton()Landroid/webkit/MimeTypeMap;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private static getSpecialMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    .line 120
    if-eqz p0, :cond_9

    .line 121
    const-string/jumbo v0, "wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "audio/x-ms-wma"

    .line 137
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const-string/jumbo v0, "ra"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    :cond_1
    const-string v0, "audio/x-pn-realaudio"

    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "asx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 126
    const-string/jumbo v0, "video/x-ms-asf"

    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v0, "wm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 128
    const-string/jumbo v0, "video/x-ms-wm"

    goto :goto_0

    .line 129
    :cond_4
    const-string/jumbo v0, "wmx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 130
    const-string/jumbo v0, "video/x-ms-wmx"

    goto :goto_0

    .line 131
    :cond_5
    const-string/jumbo v0, "wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "asf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 132
    :cond_6
    const-string/jumbo v0, "video/x-ms-asf"

    goto :goto_0

    .line 133
    :cond_7
    const-string/jumbo v0, "rmvb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "rm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 134
    :cond_8
    const-string/jumbo v0, "video/vnd.rn-realmedia"

    goto :goto_0

    .line 137
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "extension"

    .prologue
    .line 142
    const-string/jumbo v2, "persist.sys.sesame"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, status:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    .line 144
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getSpecialMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    .end local v0           #mimeType:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 183
    const-string/jumbo v1, "persist.sys.sesame"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    .line 185
    const-string v1, "audio/x-ms-wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v1, "wma"

    .line 205
    :goto_0
    return-object v1

    .line 187
    :cond_0
    const-string v1, "audio/x-pn-realaudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v1, "ra"

    goto :goto_0

    .line 189
    :cond_1
    const-string/jumbo v1, "video/x-ms-asf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 190
    const-string v1, "asf"

    goto :goto_0

    .line 191
    :cond_2
    const-string/jumbo v1, "video/x-ms-wm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 192
    const-string/jumbo v1, "wm"

    goto :goto_0

    .line 193
    :cond_3
    const-string/jumbo v1, "video/x-ms-wmx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 194
    const-string/jumbo v1, "wmx"

    goto :goto_0

    .line 195
    :cond_4
    const-string/jumbo v1, "video/vnd.rn-realmedia"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 196
    const-string/jumbo v1, "rmvb"

    goto :goto_0

    .line 200
    :cond_5
    if-eqz p1, :cond_7

    const-string v1, "image/tif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "image/tiff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 201
    :cond_6
    sget-object v1, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 202
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_7
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "extension"

    .prologue
    .line 92
    const-string/jumbo v1, "persist.sys.sesame"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_9

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 94
    const-string/jumbo v1, "wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "audio/x-ms-wma"

    .line 116
    :goto_0
    return-object v1

    .line 96
    :cond_0
    const-string/jumbo v1, "ra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ram"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 97
    :cond_1
    const-string v1, "audio/x-pn-realaudio"

    goto :goto_0

    .line 98
    :cond_2
    const-string v1, "asx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 99
    const-string/jumbo v1, "video/x-ms-asf"

    goto :goto_0

    .line 100
    :cond_3
    const-string/jumbo v1, "wm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 101
    const-string/jumbo v1, "video/x-ms-wm"

    goto :goto_0

    .line 102
    :cond_4
    const-string/jumbo v1, "wmx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 103
    const-string/jumbo v1, "video/x-ms-wmx"

    goto :goto_0

    .line 104
    :cond_5
    const-string/jumbo v1, "wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "asf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 105
    :cond_6
    const-string/jumbo v1, "video/x-ms-asf"

    goto :goto_0

    .line 106
    :cond_7
    const-string/jumbo v1, "rmvb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "rm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 107
    :cond_8
    const-string/jumbo v1, "video/vnd.rn-realmedia"

    goto :goto_0

    .line 111
    :cond_9
    if-eqz p1, :cond_b

    const-string/jumbo v1, "tif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "tiff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 112
    :cond_a
    sget-object v1, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 113
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 116
    :cond_b
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 2
    .parameter "extension"

    .prologue
    .line 158
    const-string/jumbo v1, "persist.sys.sesame"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 160
    const-string v1, "asx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wmx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "asf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rmvb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ram"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const/4 v1, 0x1

    .line 172
    :goto_0
    return v1

    .line 167
    :cond_1
    if-eqz p1, :cond_3

    const-string/jumbo v1, "tif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "tiff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 168
    :cond_2
    sget-object v1, Landroid/os/Build;->IS_M9:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    const/4 v1, 0x0

    goto :goto_0

    .line 172
    :cond_3
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasExtension(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 83
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"
    .parameter "url"
    .parameter "contentDisposition"

    .prologue
    .line 222
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/octet-stream"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 228
    .local v1, filename:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 229
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_1
    if-eqz v1, :cond_2

    .line 232
    move-object p2, v1

    .line 234
    :cond_2
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, extension:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, newMimeType:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 237
    move-object p1, v2

    .line 249
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #newMimeType:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object p1

    .line 239
    :cond_4
    const-string/jumbo v3, "text/vnd.wap.wml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    const-string/jumbo p1, "text/plain"

    goto :goto_0

    .line 245
    :cond_5
    const-string v3, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    const-string p1, "application/xhtml+xml"

    goto :goto_0
.end method
