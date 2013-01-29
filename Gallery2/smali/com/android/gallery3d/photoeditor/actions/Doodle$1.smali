.class final Lcom/android/gallery3d/photoeditor/actions/Doodle$1;
.super Ljava/lang/Object;
.source "Doodle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/Doodle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .locals 14
    .parameter "source"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .local v1, color:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 168
    .local v13, size:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, doodleMode:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 170
    .local v3, paintSize:F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 171
    .local v5, paintScaleSize:F
    if-lez v13, :cond_0

    .line 172
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIFLandroid/graphics/PointF;F)V

    .line 173
    .local v0, doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    if-ge v12, v13, :cond_1

    .line 174
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->addControlPoint(Landroid/graphics/PointF;)Z

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 178
    .end local v0           #doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .end local v12           #i:I
    :cond_0
    new-instance v6, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move v7, v1

    move v8, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIFLandroid/graphics/PointF;F)V

    move-object v0, v6

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .locals 1
    .parameter "size"

    .prologue
    .line 183
    new-array v0, p1, [Lcom/android/gallery3d/photoeditor/actions/Doodle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle$1;->newArray(I)[Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v0

    return-object v0
.end method
