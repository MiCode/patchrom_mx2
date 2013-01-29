.class public Lcom/android/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method public static extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 9
    .parameter "details"
    .parameter "filePath"

    .prologue
    const-wide/16 v7, 0x0

    .line 122
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v4, "Flash"

    const/16 v5, 0x66

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 124
    const-string v4, "ImageWidth"

    const/4 v5, 0x5

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 125
    const-string v4, "ImageLength"

    const/4 v5, 0x6

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 127
    const-string v4, "Make"

    const/16 v5, 0x64

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 128
    const-string v4, "Model"

    const/16 v5, 0x65

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 129
    const-string v4, "FNumber"

    const/16 v5, 0x69

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 130
    const-string v4, "ISOSpeedRatings"

    const/16 v5, 0x6c

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 131
    const-string v4, "WhiteBalance"

    const/16 v5, 0x68

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 133
    const-string v4, "ExposureTime"

    const/16 v5, 0x6b

    invoke-static {p0, v3, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 136
    const-string v4, "FocalLength"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 137
    .local v0, data:D
    cmpl-double v4, v0, v7

    if-eqz v4, :cond_0

    .line 138
    const/16 v4, 0x67

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 139
    const/16 v4, 0x67

    const v5, 0x7f0a0187

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/data/MediaDetails;->setUnit(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #data:D
    .end local v3           #exif:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v2

    .line 143
    .local v2, ex:Ljava/io/IOException;
    const-string v4, "MediaDetails"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 3
    .parameter "details"
    .parameter "exif"
    .parameter "tag"
    .parameter "key"

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 110
    const/16 v2, 0x66

    if-ne p3, v2, :cond_1

    .line 111
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    .line 113
    .local v0, state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {p0, p3, v0}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 118
    .end local v0           #state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0, p3, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
